echo -n "输入提交介绍，默认为‘Just auto-commit for synchronizing workspace’ ->"
read msg
 if [ -z "$msg" ]; then
     echo "committing as comment 'auto-commit for synchronizing'"
	 msg="auto-commit for synchronizing"
 fi
git pull
git add *
git commit -m "$msg"
git push -u origin master

pause
