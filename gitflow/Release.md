# Introduction

Configit.Quote project follows [GitFlow](GitFlow.md) branching
workflow.

This document describes the process of preparing a new release of
Configit.Quote.

**TODO all of these instructions are executed locally. During next
release, we have to figure out what permissions are needed from the
user to publish the changes, or how to incorporate PRs into the
flow.**

# Releasing new major or minor version (from develop branch)

## Using pure Git

```bash
# Create a new release branch out of develop
# (replace 1.0.0 with next semantic version number)

$ git checkout -b release/1.0.0 develop

# Publish release branch to GitHub

$ git push -u origin release/1.0.0

#
# Do stabilisation work (commit last-minute fixes, testing etc.)
#

# Merge release branch into master (assuming local branches are
# up-to-date with origin)

$ git checkout master
$ git merge --no-ff release/1.0.0

# Create an annotated tag on master

$ git tag -a v1.0.0 -m "v1.0.0"

# Push master branch and the tag to GitHub

$ git push --follow-tags

# Merge the tag back to develop (this will also include history of the
# release branch)

$ git checkout develop
$ git merge --no-ff v1.0.0

# Push develop branch to GitHub

$ git push

# Delete the release branch from GitHub

$ git push --delete origin release/1.0.0

# Delete the release branch locally

$ git branch -d release/1.0.0
```

## Using GitFlow-AVH

```bash
$ git flow release start 1.0.0

#
# Do stabilisation work (commit last-minute fixes, testing etc.)
#

$ git flow release finish

# Push develop, master and the new tag to GitHub.

$ git push --follow-tags origin master develop

# Delete the release branch from GitHub

$ git push --delete release/1.0.0
```

Note: the `finish` command will ask for commit messages for merge
commits - leave them at their default. It will also ask for message
for the tag - typing e.g. "v1.0.0" is enough.

# Releasing new patch version (from master branch)

## Using pure Git

```bash
# Create a new hotfix branch out of master
# (replace 1.0.1 with next semantic version number)

$ git checkout -b hotfix/1.0.1 master

# Publish hotfix branch to GitHub

$ git push -u origin hotfix/1.0.1

#
# Do patching work (multiple bugs can be fixed)
#

# Merge hotfix branch into master (assuming local branches are
# up-to-date with origin)

$ git checkout master
$ git merge --no-ff hotfix/1.0.1

# Create an annotated tag on master

$ git tag -a v1.0.1 -m "v1.0.1"

# Push master branch and the tag to GitHub

$ git push --follow-tags

# Merge the tag back to develop (this will also include history of the
# hotfix branch)

$ git checkout develop
$ git merge --no-ff v1.0.1

# Push develop branch to GitHub

$ git push

# Delete the hotfix branch from GitHub

$ git push --delete origin hotfix/1.0.1

# Delete the hotfix branch locally

$ git branch -d hotfix/1.0.1
```

## Using GitFlow-AVH

```bash
$ git flow hotfix start 1.0.1

#
# Do patching work (multiple bugs can be fixed)
#

$ git flow hotfix finish

# Push develop, master and the new tag to GitHub. Also delete the
# release branch remotely

$ git push --follow-tags origin master develop

# Delete the hotfix branch from GitHub

$ git push --delete hotfix/1.0.1
```

Note: the `finish` command will ask for commit messages for merge
commits - leave them at their default. It will also ask for message
for the tag - typing e.g. "v1.0.1" is enough.

# Releasing from support branch

**TODO: describe the process during next release.**
