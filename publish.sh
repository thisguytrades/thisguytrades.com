#!/bin/bash

# Build content and static files
./generate-for-production.sh

# Copy files needed to deploy on GitHub Pages
cp ./deploy/CNAME ./docs/CNAME
cp ./deploy/.nojekyll ./docs/.nojekyll

# Copy all static files and subdirectories
# cp -R ./static/* ./docs/

# Set user
git config user.name "Art"
git config user.email "thisguytrades@gmail.com"

# Commit and push
git checkout master
git add .
git commit -m "Update"
git push