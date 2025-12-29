#!/bin/bash

rm personal_repo*

echo "repo-add"
repo-add personal_repo.db.tar.gz ./*.pkg.tar.zst

sleep 1

#rm arafsk_repo.db

#rm arafsk_repo.files

#mv arafsk_repo.db.tar.gz arafsk_repo.db

#mv arafsk_repo.files.tar.gz arafsk_repo.files

echo "####################################"
echo "Repo Updated!!"
echo "####################################"
