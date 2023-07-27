#!/bin/bash

SHELL_PROFILE=$HOME/.zshrc

GOINFRE=$HOME/goinfre

PUB_CACHE_DIR=$GOINFRE/.pub-cache
GRADLE_DIR=$GOINFRE/my_gradle
ANDROID_SDK_DIR=$GOINFRE/android_sdk

if [ -d $PUB_CACHE_DIR ]; then
	echo ".pub_cache directory is already exits"
else
	mkdir $PUB_CACHE_DIR
	echo ".pub_cache dir created"
fi


if [ -d $GRADLE_DIR ]; then
	echo "my_gradle directory is already exits"
else
	mkdir $GRADLE_DIR
	echo "my_dradle dir is created"
fi

if [ -d $ANDROID_SDK_DIR ]; then
	echo "android_sdk directory is already exits"
else
	mkdir $ANDROID_SDK_DIR
	echo "android_sdk dir is created"
fi
	
RET=`grep $GOINFRE/.pub-cache $SHELL_PROFILE | wc -l`

if [ $RET == 0 ]; then
   echo "export PUB_CACHE=$HOME/goinfre/.pub-cache" >> $SHELL_PROFILE
else
 echo "env is already set"
fi

RET=`grep $GOINFRE/my_gradle $SHELL_PROFILE | wc -l`

if [ $RET == "0" ]; then	
	echo "export GRADLE_USER_HOME=$HOME/goinfre/my_gradle" >> $SHELL_PROFILE
else
	echo "gradle env is already set"
fi

RET=`grep $GOINFRE/flutter $SHELL_PROFILE | wc -l`

if [ $RET == "0" ]; then	
   echo "export PATH=$PATH:$HOME/goinfre/flutter/bin" >> $SHELL_PROFILE
else
	echo "flutter env is already set"
fi
