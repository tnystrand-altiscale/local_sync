### Home Folder

To add new home folder:
```
cd $HOME
git init
git remote add my_repo ssh://foo@bar.com/home/foo/repo/home.git
git fetch my_repo master
git reset --hard my_repo/master
```

This should be encrypted with git crypt

