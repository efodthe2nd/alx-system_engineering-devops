#!/bin/bash
echo "Enter commit message"
read message
git add .
git commit -m"${message}"
if [ -n "$(git status - porcelain)" ]; then
	git status
	echo "Pushing data to remote server!!!"
	git push
fi
if [ "$(git status --porcelain)" ]; then
	echo "There are no files to commit, stage or push"
fi


