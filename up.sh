#!/bin/bash
set -eo pipefail

workdir=$(pwd)

cd x86_64/
sh update_repo.sh
cd ..

##################################################################################################################
# Git workflow
git add --all .
git commit -m "update"

branch=$(git rev-parse --abbrev-ref HEAD)
git push -f origin "$branch"

echo
tput setaf 6
echo "##############################################################"
echo "###################  $(basename "$0") done"
echo "##############################################################"
tput sgr0
echo
