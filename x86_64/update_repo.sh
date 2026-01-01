#!/bin/bash

REPO_NAME="arafsk_repo"

rm arafsk_repo*

sleep 1

echo "repo-add"

repo-add -n -R -v $REPO_NAME.db.tar.gz *.pkg.tar.zst
rm -v $REPO_NAME.db
rm -v $REPO_NAME.files
mv -v $REPO_NAME.db.tar.gz $REPO_NAME.db
mv -v $REPO_NAME.files.tar.gz $REPO_NAME.files
cd ..
echo "####################################"
echo "Repo Updated!!"
echo "####################################"