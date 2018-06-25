#!/bin/bash

path=`dirname $0`
#/Users/huailiang.peng/Documents/unity/game_pb


cd ${path}

rm -rf jni/google/
rm -rf jni/interface/

cp -rf ../ptotobuf-lib/google jni/
cp -rf ../ptotobuf-lib/interface jni/


cd jni

echo "start clean last so files"

ndk-build clean 

ndk-build

echo "make new so success"

cd ../../

cp -f Android/libs/armeabi-v7a/libprotobuf-lib.so UnityEnv/Assets/Plugins/Android/libs/armeabi-v7a/libprotobuf-lib.so

cp -f Android/libs/x86/libprotobuf-lib.so UnityEnv/Assets/Plugins/Android/libs/x86/libprotobuf-lib.so

echo "copy so success, bye!"

