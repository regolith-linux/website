#!/bin/bash

set -Eeu -o pipefail

GIT_URL="git@github.com:regolith-linux/regolith-linux.github.io.git"
GIT_REMOTE="${GIT_REMOVE:-origin}"
GIT_BRANCH="${GIT_BRANCH:-master}"
HUGO_ENV="${HUGO_ENV:-production}"

echo -e "\033[0;32mDeploying updates to GitHub...\033[0m"

push_git() {
  msg="Rebuilding site $(date)"

  if [ $# -eq 1 ] ; then
    msg="${1}"
  fi

  # Commit changes.
  git commit -m "$msg"

  # Push source and build repos.
  git push -u "${GIT_REMOTE}" "${GIT_BRANCH}"
  git subtree push --prefix public "${GIT_URL}" "${GIT_BRANCH}"
}

# Make sure there are no remnants behind
rm -rf public/*

# Build the project.
hugo

# Set the CNAME
echo "regolith-linux.org" > public/CNAME

# Add changes to git.
git add --all
git diff --staged --stat

while true; do
    read -rp "Do you wish to push these changes? " yn
    case $yn in
        [Yy]* ) push_git "$@"; break;;
        [Nn]* ) exit;;
        * ) echo "Please answer yes or no.";;
    esac
done
