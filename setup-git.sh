#!/bin/bash

project=$(basename `pwd`)
echo "-----------------------------------------------------------------------------"
echo "this is project https://github.com/arafsk/arafsk_repo"
echo "-----------------------------------------------------------------------------"
git config --global pull.rebase false
git config --global user.name "arafsk"
git config --global user.email "arafsos@protonmail.com"
sudo git config --system core.editor nano
git config --global push.default simple

git remote add origin git@github.com:arafsk/arafsk_repo.git

echo "Everything set"

echo
tput setaf 6
echo "##############################################################"
echo "###################  $(basename $0) done"
echo "##############################################################"
tput sgr0
echo
