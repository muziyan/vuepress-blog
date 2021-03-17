#!/usr/bin/env sh

set -e

yarn build
cd public
git init 
git add -A
git commit -m "deploy"

git push -f git@seasonblog.top:/data/blog/source master
