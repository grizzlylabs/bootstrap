#!/bin/bash
#
######################################
#
# bootstrap.sh
#
# Script to bootstrap a deployment server
#
# grizzly @ grizzlylabs . com
# 2015
#
######################################
#
# Variables are stored in bootstrap.cfg
# review those settings before running this script

source ./bootstrap.cfg

######################################

clear

printf "\n"
printf "################################\n"
printf "##                            ##\n"
printf "## Bootstrap a                ##\n"
printf "##                            ##\n"
printf "## Deployment Server          ##\n"
printf "##                            ##\n"
printf "## Do these in order          ##\n"
printf "## It will not hurt to do     ##\n"
printf "## more than once BUT do NOT  ##\n"
printf "## skip one!                  ##\n"
printf "##                            ##\n"
printf "################################\n"
printf "##                            ##\n"
printf "## 1) Install GIT             ##\n"
printf "## 2) Install Puppet          ##\n"
printf "## 3) EXIT                    ##\n"
printf "##                            ##\n"
printf "################################\n"
printf "\n"

#while [ "$yn" != "Yes" ]; do
# echo "Please enter your Host Name"
# read hname
# echo "You have entered $hname, is this correct? (Yes or No)"
#  read yn
#done
#sh runscript.sh

read  OPTION
while [ "$OPTION" != "3" ]; do 
   case $OPTION in
      1) printf " Installing GIT\n"
         ./install-git
         ;;
      2) printf " Installing Puppet\n"
         ./install-puppet
         ;;
      3) printf " EXIT             \n" 
         ;;
   esac
done

printf "\n"
