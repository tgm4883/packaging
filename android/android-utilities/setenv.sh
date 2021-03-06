#!/bin/bash

if [[ "$BASH_SOURCE" != "$0" ]] ; then
	ANDROID_ROOT=`dirname "$BASH_SOURCE"`
	ANDROID_ROOT=`readlink -f "$ANDROID_ROOT"`
else
	ANDROID_ROOT=`dirname "$BASH_SOURCE"`
	ANDROID_ROOT=`readlink -f "$ANDROID_ROOT"`
fi
export ANDROID_SDK=$ANDROID_ROOT/android-sdk-linux
export ANDROID_NDK=$ANDROID_ROOT/android-ndk
export ANDROID_SDK_ROOT=$ANDROID_SDK
export ANDROID_NDK_ROOT=$ANDROID_NDK
export JAVA_HOME=/usr/lib/jvm/jdk-7-oracle-x64
export JDK_PATH=/usr/lib/jvm/jdk-7-oracle-x64/bin
export ANDROID_KEYSTORE=$ANDROID_ROOT/yourname.keystore

export KEYSTORE=~/android/yourname-release.keystore
export KEYALIAS=digivatn
export KEYSTOREPASSWORD="password"

export PATH

privatepathadd() {
if [ -d "$1" ] && [[ ! $PATH =~ (^|:)$1(:|$) ]]; then
	PATH+=:$1
fi
}

export QTBASE=$ANDROID_ROOT/Qt/5.4/android_armv7

privatepathadd $ANDROID_SDK/tools
privatepathadd $ANDROID_SDK/platform-tools
privatepathadd $ANDROID_NDK
privatepathadd $JDK_PATH

unset -f privatepathadd

