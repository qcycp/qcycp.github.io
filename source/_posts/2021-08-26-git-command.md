---
title: git_command
abbrlink: d755bf4
date: 2021-08-26 10:13:06
categories:
tags:
---
git command
===
#### 建立新的Repository
   * 在gitlab上新建project (cyc)
   * cd cyc
   * git init
   * cp -rf all_file_and_folder cyc
   * git add .
   * git commit -m "master code base"
   * git remote add origin git@172.17.1.18:mtk\cyc.git
   * git push -u origin master

#### useful commands
```
00. revert the first commit
    user@ubuntu:~$ git update-ref -d HEAD
    user@ubuntu:~$ git log
    fatal: your current branch 'master' does not have any commits yet
01. git branch -a(--all) #show all branches and current branch
    git branch -r(--remotes) #show all remote branches
    git branch -v #查看各分支最後一個進code記錄
02. git diff
    git diff --cached
    git diff --staged
03. git add filename
    git add -f . #強制add檔案，不受.gitignore限制
    git add .   # add to index only files created\modified and not those deleted
    git add -u  # add to index only files deleted\modified and not those created
    git add -A  # do both operation at once, add to index all files
04. git reset #將所有已經執行git add的檔案，全都取消，變成unstage
    git reset (HEAD) filename #將特定檔案變成unstage
    git reset HEAD^ #取消最近一個commit的紀錄，修改過的檔案狀態會保留
04. git rm filename
05. git commit -m "message"
    git commit --amend
    git commit --amend --no-edit #不進編輯畫面修改comment
    #假設，git add fileA; git commit -m "modify fileA";
    #此時如果又修改了檔案fileB
    #step1: git add fileB;
    #step2: git commit --amend --no-edit
06. git remote add remotename xxx
07. git remote -v
03. git tag #show all tags
    git tag tag_name (commit_id) #新增lightweight tag，若不加commit_id，則tag會建立在最新的commit上
    git tag -a tag_name -m "tag message" (commit_id)
    #加上tag之後，需要執行git push remote_name(origin) tag_name，將tag上傳到remote server
    git push remote_name(origin) --tags #一口氣上傳所有未上傳的tags
    git push remote_name(origin) --tags
    git push origin :refs\tags\tag_name #delete remote tag
    \\delete remote tag
    git push --delete origin tagname
    \\delete the local tag
    git tag --delete tagname
04. git checkout branch_name(or tag_name)
05. git checkout -b new_branch_name #create local new branch based on the current commit status and 立即切換過去
    = git branch new_branch_name + git checkout new_branch_name
    #在建立新branch後，需要接著利用git push origin new_branch_name，將新建的branch上傳到server去
06. git branch -D branch_name #delete local branch
    git push origin --delete branch_name #delete remote branch
    git push origin :branch_name #delete remote branch
07. git branch -m old_name new_name
    git branch -m new_name #modify current branch name to new_branch_name
    #若是要修改remote branch name
    => a) git checkout old_branch_name
       b) git branch -m new_branch_name
       c) git push origin --delete old_branch_name
       d) git push origin new_branch_name
08. git push (remote_name) (branch_name)
    #如果同時checkout了兩個branch(A, B)在local端，local端修改A，並想用git push -f進code
    #此時，若是server端對B有做過修改，而local端的B是舊的，此時，即使是對A做git push -f，B也一樣會被forced update
09. git cherry-pick commit_id
    #如果都沒有衝突的檔案，會自動建立commit記錄，只需要再執行git push
    #如果有衝突，可以用git status查看=> Unmerged paths: => both modified:，打開檔案手動編輯，合完之後再用git add加入該檔案
    #如果有刪除檔案，可以用git status查看=> Unmerged paths: => deleted by them:，手動執行git rm將其刪除
    #如果有衝突，都整理完之後，需要執行git commit，然後再執行git push
10. git config http.postBuffer 524288000
    #增加local buffer，避免git push失敗 (單位: Bytes)

11. 
git tag -a tag_name commit_hash -m "message"
git push origin tag_name
```

```
git clone                                   \\ 下載整包完整的source code
git show commint_Number                     \\ 查看某commit的內容
git pull                                    \\ download最新的code
git status                                  \\ 查看目前所有檔案的狀態，是否跟server上有所不同
git diff filename                           \\ 查看某檔案跟server中的差異，若不指定檔案則會列出所有不同的結果
git apply patchfile                         \\ 可以使用git diff產生patch檔，或直接用git show導出patch檔，利用apply來上patch
git add 路徑\檔案                             \\ 把某路徑下所有檔案，或是所指的特定檔案，新增到本地資料庫中
git commit -m "comment"                     \\ 上傳剛剛新增的檔案到本地資料庫，並加上註解
git push                                    \\ 上傳本地資料庫的內容到server
git checkout branch\file\folder             \\ 下載server中的某branch\檔案\資料夾，會蓋掉目前存在的檔案內容
git branch -a                               \\ 查詢目前的branch list
git revert commitNumber                     \\ 在本地端恢復某個commit的code，會是一個新的commit，revert完後直接使用push將修改寫回server
git reset --hard commitNumber              \\跳回commitNumber版本，並捨棄所有在commitNumber之後的修改
git commit --amend                          \\ 修改已經commit的comment內容
git checkout -b branchname                  \\ 建立一個新的branch
git log 路徑\檔案名稱                         \\ 查詢指定目錄或檔案相關的log
git log --author="Nick Cheng"               \\
git log --author="Nick Cheng" --raw         \\ 列出每一次commit的所有檔案
git config --global user.name "Nick Cheng"
git config --global user.email "nick.cheng@tpv-tech.com"
git config --global color.ui true            \\幫git加上顏色
git config --global alias.st status          \\ 設定git的alias
```


#### 上傳三部曲:
1. git add filename
2. git commit -m "comment"
3. git push

clone with 帳密
git clone http://nick:Ab123456@10.36.94.101/SI/kangaroo.git