#!/usr/bin/env sh

# abort on errors
set -e

npm install

# build
npm run build

# navigate into the build output directory
cd dist

git init
git add -A
git commit -m 'deploy'

# if you are deploying to https://<USERNAME>.github.io/<REPO>
git push -f git@github.com:JuleinyG/Plazti-Exchange.git master:gh-pages
cd -