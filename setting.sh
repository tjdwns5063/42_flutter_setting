#/bin/bash

SHELL_PROFILE=$HOME/.zshrc

mkdir $HOME/goinfre/.pub-cache
mkdir $HOME/goinfre/my_gradle
mkdir $HOME/goinfre/android_sdk

if [ x"${PUB_CACHE}"  == "x" ]; then
   echo "export PUB_CACHE=$HOME/goinfre/.pub-cache" >> $SHELL_PROFILE
   echo "export GRADLE_USER_HOME=$HOME/goinfre/my_gradle" >> $SHELL_PROFILE
   echo "export PATH=$PATH:$HOME/goinfre/flutter/bin" >> $SHELL_PROFILE
else
 echo "env is already set"
fi
