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

# Set remote url with correct host and username to use correct SSH key
# Make sure there's a host named 'thisguytrades' in your ~/.ssh/config file
git remote set-url origin git@thisguytrades:thisguytrades/thisguytrades.com.git

# Commit and push
git checkout master
git add .
git commit -m "Update"
git push