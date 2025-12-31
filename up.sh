#!/bin/bash
#set -e

workdir=$(pwd)

cd x86_64/
sh updaterepo.sh
cd ..

# Below command will backup everything inside the project folder
git add --all .

# Committing to the local repository with a message containing the time details and commit text

git commit -m "update"

# Push the local files to github

git push origin main

echo
tput setaf 6
echo "##############################################################"
echo "###################  $(basename $0) done"
echo "##############################################################"
tput sgr0
echo
