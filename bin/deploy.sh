#!/bin/bash

# pull source code files
branch=${1:master}
git fetch --all
if ! git checkout $branch 2>/dev/null; then
  echo "Remote branch: $branch does not exist."
  exit 1
fi
git merge origin/$branch # already existed branch needs to merge the remote.


