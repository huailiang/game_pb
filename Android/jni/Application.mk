#APP_ABI           := all
APP_ABI          := armeabi-v7a x86

APP_OPTIM         := release
APP_PLATFORM      := android-14
#APP_BUILD_SCRIPT := Android.mk

# GNU STL implements most C++11 features. Use either gnustl_static or gnustl_shared
# Without this your C++ code will not be able to access headers like <thread>, <mutex>
#APP_STL      := stlport_static
#APP_CPPFLAGS := -std=c++11 -frtti -fexceptions 
APP_STL       := c++_static
APP_CPPFLAGS  := -std=gnu++11 -pthread -frtti -fexceptions -DNDEBUG #-NDEBUG -mfpu=neon -fomit-frame-pointer -DULM_BLOCKED -msse3 -mfpmath=sse