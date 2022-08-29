#!/usr/bin/env sh

#in directory pulled from remote repo (DIR=origin)
#trying to push to gh-pages(only build files), a subtree of main(all files)

# abort on errors
#set -e

# build
npm run build

#add&push to remote repo
git add dist -f && git commit -m 'deployed'
git subtree push --prefix dist origin gh-pages