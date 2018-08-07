#!/bin/bash
# Written by Jack Girard, 2018
# easily clones a GitHub repo into Documents folder (by default) or any manually specified directory

#functions
choose_dir () {
echo -n "Would you like to (P)roceed or (C)hange directory?: "
read clone
if [ $clone = p ] || [ $clone = P ]
then
    git clone $repo
    echo Operation Successful
elif [ $clone = c ] || [ $clone = C ]
then
    echo -n "Please specify the path to clone repo (Absolute Path): "
    read clonedir
    cd $clonedir
    confirm_dir
else
    echo
    echo "Please input either P (Proceed) or C (Change directory)"
    echo
    choose_dir
fi
}

confirm_dir () {
echo "Project will be cloned to: "
pwd
echo -n "Would you like to (P)roceed or (C)hange directory?: "
read clone
if [ $clone = p ] || [ $clone = P ]
then
    git clone $repo
    echo Operation Successful
elif [ $clone = c ] || [ $clone = C ]
then
    echo -n "Please specify the path to clone repo (Absolute Path): "
    read clonedir
    cd $clonedir
    confirm_dir

else
    echo
    echo "Please input either P (Proceed) or C (Change directory)"
    echo
    choose_dir
fi
}

#script
echo  -n "Enter URL of repo to clone: "
read repo
cd ~/Documents
echo "Project will be cloned to: "
pwd
echo -n "Would you like to (P)roceed or (C)hange directory?: "
read clone
if [ $clone = p ] || [ $clone = P ]
then
    git clone $repo
    echo Operation Successful
elif [ $clone = c ] || [ $clone = C ]
then
    echo -n "Please specify the path to clone repo (Absolute Path): "
    read clonedir
    cd $clonedir
    confirm_dir
else
    echo
    echo "Please input either P (Proceed) or C (Change directory)"
    echo
    choose_dir
fi
