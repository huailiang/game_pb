#!/bin/bash

path=/Users/huailiang.peng/Documents/unity/game_pb

cd ${path}

# rm -rf Android/jni/google/
# rm -rf Android/jni/interface/

# cp -rf ptotobuf-lib/google Android/jni/
# cp -rf ptotobuf-lib/interface Android/jni/


# cd Android/jni

# echo "start clean last so files"

# ndk-build clean 

# ndk-build

# echo "make new so success"

cd ${path}

cp -f Android/libs/armeabi-v7a/libprotobuf-lib.so UnityEnv/Assets/Plugins/Android/libs/armeabi-v7a/libprotobuf-lib.so

cp -f Android/libs/x86/libprotobuf-lib.so UnityEnv/Assets/Plugins/Android/libs/x86/libprotobuf-lib.so

echo "copy so success, bye!"

