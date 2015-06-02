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
   printf "\n"

#######
   echo ' Install GIT? y/n '
   echo ' '
   read character

   if [ "$character" = 'y' ]
   then
      ./install-git
   fi

#######
   clear
   echo ' '
   echo ' Install Puppet? y/n '
   echo ' '
   read character

   if [ "$character" = 'y' ]
   then
      ./install-puppet 
   fi

#######
   clear
   echo ' '
   echo ' Install Hiera? y/n '
   echo ' '
   read character

   if [ "$character" = 'y' ]
   then
      ./install-hiera 
   fi

#######
   clear
   echo ' '
   echo ' Load Puppet Modules and Manifests? y/n '
   echo ' '
   read character

   if [ "$character" = 'y' ]
   then
      ./load-modules 
   fi

printf "\n"
