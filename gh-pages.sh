#!/usr/bin/env sh

set -e

npm run build:github

cd dist

echo > .nojekyll

git init
git checkout -B main
git add -A
git commit -m 'gh-pages'

git push -f git@github.com:GregoryMaklakov/starter-parcel.git main:gh-pages
cd -
