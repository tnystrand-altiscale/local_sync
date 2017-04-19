### Home Folder

To add new home folder:
```
cd $HOME
git init
git remote add my_repo git@github.com:tnystrand-altiscale/local_sync.git
git fetch local_sync master
git reset --hard local_sync/master
```

This should be encrypted with git crypt

