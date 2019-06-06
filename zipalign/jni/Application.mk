APP_PLATFORM := android-21
# Tried using android-16 but doesn't compile due to some issues that need a lot of time.
# But Please don't use any value below android-16 when compiling with PIC support.
# But if you don't want the security feature, then you can compile without PIC Support and with
# support for lower versions, if its used instead, will result in segmentation fault.

APP_STL := gnustl_static

APP_ABI := # YourDesiredArch
# This will compile zipalign for your desired architecture. 
# However armeabi, mips and mips64 are deprecated by Google.