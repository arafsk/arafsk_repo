#!/bin/bash

REPO_NAME="arafsk_repo"

rm *.db *.db.sig *.db.tar.gz *.db.tar.gz.sig *.files *.files.sig *.files.tar.gz *.files.tar.gz.sig

sleep 1

echo "repo-add"

repo-add $REPO_NAME.db.tar.gz *.pkg.tar.zst

#repo-add $REPO_NAME.db.tar.gz *.pkg.tar.zst

echo "####################################"
echo "Repo Updated!!"
echo "####################################"
