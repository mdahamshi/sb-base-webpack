#!/bin/bash



git checkout gh-pages  && git merge main --no-edit 

npm build
npx webpack

sed -i 's/production/development/ig' webpack.config.js

git add dist -f

git commit -m 'Deployment commit'

git subtree push --prefix dist origin gh-pages

git checkout main

git push