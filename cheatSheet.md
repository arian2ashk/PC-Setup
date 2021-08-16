# git:

#### Create a branch:
```
git checkout -b <BranchName>
```


#### Check if branch is behind another branch (first number is the number of commits behind, second number is commits ahead):
```
git rev-list --left-right --count origin/<branchToCompareTo>...origin/<currentBranch>
```


#### merge a branch:
```
git checkout <branchNameToMergeInto>
git fetch origin <branchNameToMergeFrom>:<branchNameToMergeFrom>
git merge <branchNameToMergeFrom>
```


#### delete a branch localy:
```
git branch -d <BranchName>
```


#### rename a branch localy:
```
git branch -m <newname>
```


#### Cherry pick:
```
git cherry-pick <CommitId>
```


#### Cherry pick range of commits:
```
git cherry-pick <older CommitId>^..<newer CommitId>
```


#### Rebasing (need force pushing):
```
git pull --rebase origin master
```


#### interactive rebasing for changing history:
```
git rebase -i head~<number of commits to change>
```


#### Discard Unstaged Changes:
```
git checkout -- .
```


#### Replace local branch with remote branch entirely:
```
git fetch
git reset --hard origin/master
```


#### Remove created files:
```
git reset --hard
git clean -df
```


#### stash:
```
git stash
git stash -u	(to stash new files)
git stash apply
```


#### get latest changes:
```
git pull origin <BranchName>
```


#### get git log history of a directory:
```
git log -- src/Quote
git log --oneline -- src/Quote
```


#### get the latest commit(if the commit is not pushed yet) back to staging point:
```
git reset --soft HEAD^
```


#### get the x number of latest commits back to staging point(need force pushing):
```
git reset --soft HEAD~<number of commits to squash>
```


#### roll back the repo to that commit(hard will make the local code and local history be just like it was at that commit),(soft will make the local files changed to be like they were then, but leave the history etc. the same):
```
git reset --hard <CommitId  example=c14809fa>
git reset --soft <CommitId  example=c14809fa>
```


#### setup mergetool kdiff3
##### install it first then run:
```
git config --global merge.tool kdiff3
git config --global mergetool.kdiff3.cmd '"C:\\Program Files\\KDiff3\\kdiff3" $BASE $LOCAL $REMOTE -o $MERGED'
```


#### setup VS code as editor:
```
git config --global core.editor "code --wait"
```


#### Check the differences in commits of two branches(shows list of commits in branch B and if a commit exist in branch A it would put an equal in front of it ):
```
git log --decorate --graph --oneline --cherry-mark --boundary A...B
```


#### create a release:
```
git tag -m "new prerelease" v1.2.x-beta
git push origin v1.2.x-beta
```


#### create tags:
```
git tag <TagName>
git push origin <TagName>
```


#### delete tags:
```
git tag -d <TagName>
git push --delete origin <TagName>
```


#### Fix Filename too long issue:
```
git config --system core.longpaths true
```


#### count number of commits
```
git rev-list --count HEAD ^master
```


#### squash the commits(need force pushing):
```
git reset --soft HEAD~<number of commits to squash>
```


#### rebase and squash the commits:
```
git rebase -i HEAD~<number of commits to squash>
in the opened file change all picks to squash except the first one
press Esc to save and :wq and enter to continue
in this file put the commit message you want
press Esc to save and :wq and enter to continue
```


#### set username and password:
```
git config --global user.name "<Your-Full-Name>"
git config --global user.email "<your-email-address>"
```



# git gui:

#### reset a file shortcut:
```
Ctrl+J
```


#### disable loose object warning popup:
```
git config --global gui.gcwarning false
```


#### fixing error 'Updating the Git index failed. A rescan will be automatically started to resynchronize git-gui.':
```
git config --global core.whitespace cr-at-eol
```



# npm:

#### clean npm install
```
rm -rf node_modules/ && rm -rf package-lock.json && npm install
rm -rf node_modules/ && rm -rf yarn.lock && yarn install
```


#### cleaning npm:
```
npm prune
npm cache clean
```


#### start an http server:
```
npx http-server
```


#### check npm package updates:
```
ncu
```


#### check npm package updates, match packages that start with "xxx" using regex:
```
ncu "/^xxx.*$/"
```


# Nuget:

#### cleaning nuget cache:
```
nuget locals all -clear
```


#### Updating Assembly Redirects with NuGet:
```
Get-Project -All | Add-BindingRedirect
```



# logging an MSI:
```
msiexec /i ConfigitServer_0.0.0.0.msi /L*V "example.log"
```


