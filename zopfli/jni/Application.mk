APP_PLATFORM := android-16
# Please don't use any value below android-16 when compiling with PIC support.
# But if you don't want the security feature, then you can compile without PIC Support and with
# support for lower versions, if its used instead, will result in segmentation fault.

APP_STL := c++_static

APP_ABI := all
# This will compile zopfli, zopflipng for all architectures. However armeabi, mips and mips64 are deprecated by Google.