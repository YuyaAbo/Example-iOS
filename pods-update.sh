#!/bin/sh

pod update

if [[ `git status --porcelain --untracked-files=no` ]]; 
then
  # git commit
  #git add Podfile.lock
  #git commit -m 'Update CocoaPods dependences'
  #git push origin HEAD
  echo "Changes."
else
  echo "No changes."
fi

echo "Successfully completed."
