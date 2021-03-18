#!/usr/bin/env sh

set -e


if [ -n "$(git status -s)" ];then
git add . 
git commit -m "deploy"
git push -u
fi

yarn build
cd public
git init 
git add -A
git commit -m "deploy"

git push -f git@seasonblog.top:/data/blog/source master
