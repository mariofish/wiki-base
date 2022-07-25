# Git Tips

### Log

```shell
git log
git log --abbrev-commit
git log --graph
git shortlog
git reflog
```

### Branch

```shell
# create a new branch
git checkout -b branch-name
# equivalent to
git branch branch-name
git checkout branch-name
# checkout to an existed branch
git checkout branch-name
# to last branch
git checkout -
# create an orphan branch
git checkout -b --orphan branch-name
```

### Git Get Current Working Branch

```shell
git rev-parse --abbrev-ref HEAD
```

### Git Sync Forks

```shell
git remote add upstream <ORIGINAL>
git fetch upstream
git merge upstream/master
```

### Git Clone with Username/Password

```shell
git clone https://username:password@remote
```

### Forked repo is ahead of master

```shell
git checkout master
git reset --hard upstream/master
git push --force
```

### Delete file and its history

```shell
git filter-branch --force --index-filter \
'git rm --cached --ignore-unmatch /path/to/data' \
--prune-empty --tag-name-filter cat -- --all
```

### Modify Commit

```shell
git commit --amend
# Reset commit author
git commit --amend --reset-author

# Rebase
git rebase -i HEAD~n
git push --force
```

### Set Remote

```shell
# Set origin (fetch)
git remote set-url [url]
# Set origin (push)
git remote set-url --push [url]
```

### Push to Other's Pull Request

```shell
git fetch origin pull/[pr_id]/head:[branch-name]
git remote add pr [url]
# edit and commit
git push pr HEAD:[branch-name]
```

### Clean untracked files

```shell
git clean -f -d
```

### Restore a deleted file

```shell
git checkout HEAD^ /path/to/file
```

### Reset

1. Reset HEAD to commit hash \(stop here with `--soft`\)
2. Make INDEX the same as HEAD \(stop here unless `--hard`\)
3. Make Working Dir the same as INDEX

```shell
# Cancel `git add`
git reset HEAD

# Cancel last commit
git reset HEAD~

# Remove file from last commit
git reset HEAD /path/to/unwanted_file
git commit -c ORIG_HEAD

# Reset workspace (BE CAUTIOUS)
git reset --hard
# or
git checkout .
```

- Difference between HEAD^ and HEAD~

  [http://www.paulboxley.com/blog/2011/06/git-caret-and-tilde](http://www.paulboxley.com/blog/2011/06/git-caret-and-tilde)

### Stash

```shell
git stash
git stash apply
git stash drop
git stash pop # like apply and then drop
git stash list
```

### Add Part of File

```shell
gid add --patch /path/to/file
# Then select the hunks
```

### Revert a merge

```shell
git revert -m 1 <merge-commit-hash>
```

### Tag

```shell
# create tag
git tag tag-name
git push origin tag-name
# delete tag
git tag -d tag-name
git push --delete origin tag-name
# rename tag
git tag new old
git tag -d old
git push origin new :old
```
