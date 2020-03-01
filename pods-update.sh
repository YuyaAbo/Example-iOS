#!/bin/sh

git checkout origin/master
git checkout -b update-cocoapods-`date "+%F"`

pod update

if [[ `git status --porcelain --untracked-files=no` ]]; 
then
  # git commit
  git add Podfile.lock
  git commit -m 'Update CocoaPods dependences'
  git push origin HEAD
else
  echo "No changes."
fi

echo "Successfully completed."