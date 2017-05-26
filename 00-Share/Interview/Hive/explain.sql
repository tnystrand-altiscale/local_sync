set hive.tez.java.opts=-Xmx7800m;
set hive.execution.engine=tez;
set hive.tez.container.size=8000;
set tez.cpu.vcores=4;
set tez.session.client.timeout.secs=10000000;
set tez.session.am.dag.submit.timeout.secs=10000000;
set tez.queue.name=default;

set hivevar:DB1=dims;
set hivevar:DB2=series;

set hivevar:START_DATE='2017-03-01'
set hivevar:NORMAL_LOOKBACK=7;
set hivevar:LOOKBACK=45;
set hivevar:LOOKAHEAD=2;

set hivevar:OUT_DIR='/tmp/tmp'

WITH
user_map AS (
    SELECT DISTINCT
        id,
        user_name
    FROM
        ${DB1}.user_dim
)

,memory_slice AS (
    SELECT
        minute_start - (minute_start % (24 * 3600)) as time1,
        minute_start - (minute_start % 3600) as time2,
        COALESCE(user_id, 'UNKNOWN') as id,
        memory
    FROM
         ${DB2}.memory
    WHERE
        partition_date >= date_sub('${START_DATE}', ${MAX_LOOKBACK}) AND
        partition_date < date_add('${START_DATE}', ${LOOKAHEAD})
)


,memory_agg AS (
SELECT
    time1,
    time2,
    sum(memory) as memory,
    id
FROM
    memory_slice
GROUP BY
    day_start, hour_start, id
GROUPING SETS (
    (time1),
    (time2),
    (time2, id)
    )
)

INSERT OVERWRITE DIRECTORY '${OUT_DIR}'
SELECT
    time1,
    time2,
    COALESCE(um.user_name, um.id) as user,
    memory
FROM
    memory_agg
LEFT OUTER JOIN
    user_map um
ON 
    slots_runup.id = user_names.id
