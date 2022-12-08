#!/bin/bash

GITHUB_REPO_URL="git@github.com:gwleclerc/mob.sh.git"
USERS=("gwendal" "benoit")

DIRECTORY="$(basename "${GITHUB_REPO_URL}")"

if [[ ! -d "wd/$DIRECTORY" ]]; then
    git clone --bare "$GITHUB_REPO_URL" "wd/$DIRECTORY"
fi

for subrepo in ${USERS[@]}; do
    rm -rf "wd/$subrepo"
    git clone "wd/$DIRECTORY" "wd/$subrepo"
    pushd "wd/$subrepo" >& /dev/null
    git remote add upstream "$GITHUB_REPO_URL"
    popd >& /dev/null
done
