APP_PLATFORM := android-16
# Please don't use any value below android-16 when compiling with PIC support for Android Lollipop or above.
# But if you are not supporting Android Lollipop or above, then you can compile without PIC Support and with
# support for lower versions, if its used instead, will result in segmentation fault.

APP_ABI := all
# This will compile sash for all architectures. However mips and mips64 are deprecated by Google.