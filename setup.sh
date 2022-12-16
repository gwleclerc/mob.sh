#!/bin/bash

GITHUB_REPO_URL="git@github.com:gwleclerc/mob.sh.git"
USERS=("gwendal" "benoit")

LOCAL_REPO_DIRECTORY="$(basename "${GITHUB_REPO_URL}")"

if [[ ! -d "wd/${LOCAL_REPO_DIRECTORY}" ]]; then
    git clone --bare "${GITHUB_REPO_URL}" "wd/${LOCAL_REPO_DIRECTORY}"
fi

for subrepo in "${USERS[@]}"; do
    rm -rf "wd/${subrepo}"
    git clone "wd/${LOCAL_REPO_DIRECTORY}" "wd/${subrepo}"
    pushd "wd/${subrepo}" >& /dev/null || continue
    git remote add upstream "${GITHUB_REPO_URL}"
    git config --file .gitconfig user.name "${subrepo}"
    git config --file .gitconfig user.email "${subrepo}@ovhcloud.com"
    popd >& /dev/null || continue
    if [[ -f ".vscode/${subrepo}.json" ]]; then
        mkdir -p "wd/${subrepo}/.vscode"
        cp -f ".vscode/${subrepo}.json" "wd/${subrepo}/.vscode/settings.json"
    fi
done
