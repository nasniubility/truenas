#!/bin/bash

read  -p 'Commit message>' msg
 if [ -z "$msg" ]; then     
	 msg="Synchronizing"E
	 echo "Committing as '$msg'"
 fi 

git pull
git add *
git add -A
git commit -m "$msg"
git push -u origin master