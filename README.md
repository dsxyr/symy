###深渊冥狱
`:骇姬之思`  
* back    配置备份
* nate    杂记

github
为了使用SSH公钥的方式认证，我把`./.git/config`的url改成下面这样
```
    [remote "origin"]  
        fetch = + refs/heads/*:refs/remotes/origin/*  
            url = git@github.com:username/projectname.git
```            
