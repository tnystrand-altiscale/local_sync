$HADOOP_HOME/bin/hadoop jar $HADOOP_HOME/share/hadoop/tools/lib/hadoop-*streaming*.jar \
    -file /tmp/mapper.py    -mapper /tmp/mapper.py \
    -file /tmp/reducer.py   -reducer /tmp/reducer.py \
    -input /tmp/data_input.txt -output /tmp/data_output.txt
