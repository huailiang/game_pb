#APP_ABI           := all
APP_ABI          := armeabi-v7a x86

APP_OPTIM         := release
APP_PLATFORM      := android-14
#APP_BUILD_SCRIPT := Android.mk

APP_STL       := c++_static
APP_CPPFLAGS  := -std=gnu++11 -pthread -frtti -fexceptions -DNDEBUG #-NDEBUG -mfpu=neon -fomit-frame-pointer -DULM_BLOCKED -msse3 -mfpmath=sse