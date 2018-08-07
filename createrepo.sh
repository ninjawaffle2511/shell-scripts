#!/bin/bash
# Written by Jack Girard, 2017
# Easily creates a GitHub repo with a default readme.md

echo -n "Please enter your GitHub username: "
read username
echo -n "Please enter the name of the repo you want to create: "
read reponame
echo "# $reponame" >> README.md
echo "A readme has been created in your current directory. This can be edited either on the repo page or the file can be edited and then pushed to the repo"
git init
git add README.md
git commit -m "first commit"
git remote add origin https://github.com/$username/$reponame.git
git push -u origin master
