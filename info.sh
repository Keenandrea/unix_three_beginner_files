#!/bin/bash
#author: Keenan Andrea |
#built: 9/13/2018      |
#purpose: a bash shell |
#script invoked by two |
#parameters: the file- |
#name, and the direct- |
#ory name. script out- |
#put will display inf- |
#ormation, namely: the |
#script name, the com- |
#mand for execution,   |
#the current time and  |
#date, user name, name |
#of current directory, |
#name of UNIX machine, |
#name of login shell,  |
#contents of the named |
#file, listing of the  |
#required directory,   |
#total number of scri- |
#pt parameters, calen- |
#der for October of    |
#current year, disk    |
#usage, current number |
#of system users, and  |
#the current time.     |
echo "invocation: "
echo "shell host: $HOSTNAME"
echo "working shell: $SHELL"
echo "script name: $0"
now=$(date +"%B-%d-%Y")
rNow=$(date +"%r")
echo "date: $now"
echo "time: $rNow"
echo "user name: $USER"
CWD=${PWD##*/}
echo "cwd: $CWD"
sysInfo=$(uname -sm)
echo "system info: $sysInfo"
echo "login shell: "
echo "directory listing: $PWD"
echo "parameters: $#"
oct=$(cal 10 2018)
echo "$oct"
usage=$(free -mt)
echo "disk usage:"
echo "$usage"
usrs=$(w)
echo "current users:
$usrs"
cont=$(more info.sh)
echo "file contents:
$cont"

