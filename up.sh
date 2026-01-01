#!/bin/bash

cd x86_64
sh update_repo.sh
cd ..

##################################################################################################################


# Below command will backup everything inside the project folder
git add --all .

git commit -m "update"

# Push the local files to github

if grep -q main .git/config; then
	echo "Using main"
		git push -u origin main
fi

if grep -q master .git/config; then
	echo "Using master"
		git push -u origin master
fi

echo "################################################################"
echo "###################    Git Push Done      ######################"
echo "################################################################"