#!/bin/bash

path=/Users/huailiang.peng/Documents/unity/game_pb_cpp

cd ${path}

cd Android/jni

echo "start clean last so files"

ndk-build clean 

ndk-build

echo "make new so success"

# cd ../libs

# cp -f armeabi-v7a/libptotobuf-lib.so ../../../Assets/Plugins/Android/libs/armeabi-v7a/libptotobuf-lib.so

# cp -f x86/libptotobuf-lib.so ../../../Assets/Plugins/Android/libs/x86/libptotobuf-lib.so

# echo "copy so success, bye!"

