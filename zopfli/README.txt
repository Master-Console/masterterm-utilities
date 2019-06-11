This directory contains binaries and sources for the zopfli library specifically compiled for the Android Operating System.

zopfli along with its programs have been compiled for the following architectures:
|-------------------------------------------|-----------------------------------------------------|------------------------------------------|
|Instruction Set                            | Value                                               | Status                                   |
|-------------------------------------------|-----------------------------------------------------|------------------------------------------|
|32-bit ARM(without floating-point support):|= armeabi                                            |#2:: Deprecated by Google, still compiled.|
|32-bit ARMv7                              :|= armeabi-v7a                                        |#1:: Active                               |
|64-bit ARMv8 (AArch64)                    :|= arm64-v8a                                          |#1:: Active                               |
|x86                                       :|= x86                                                |#1:: Active                               |
|x86-64                                    :|= x86_64                                             |#1:: Active                               |
|MIPS                                      :|= mips                                               |#2:: Deprecated by Google, still compiled.|
|MIPS64                                    :|= mips64                                             |#2:: Deprecated by Google, still compiled.|
|--------------------------------------------------------------------------------------------------------------------------------------------|


This package falls under the category of 'Libraries'. Thus explaining that this package is used mostly by programs as their resource.
However, programs for this library exist and those programs fall under the category of 'Utilities', thus meaning any type of utility
program.

What is zopfli?
Zopfli Compression Algorithm is a compression library programmed in C to perform very good, but slow, deflate or zlib compression. 
It achieves higher compression than other DEFLATE/zlib implementations, but takes much longer to perform the compression. 
It was first released in February 2013 by Google as a free software programming library under the Apache License, Version 2.0.

Why it is helpful?
It is designed to produce the likely smallest compressed output for any archive it supports. Other than that, its provides its own
image optimizer for PNG(Portable Network Graphics). Since it is a lossless transformation, a PNG file that is recompressed with 
Zopfli still retains all the pixels as expected. It can make images on the web load faster without a new image format, but the 
opportunities for optimization within PNG are limited. However, This library can only compress, not decompress. Existing zlib or deflate
libraries can decompress the data.

X-GEN-X
The binaries were generated with Android-NDK r10e in a Windows 10 64-bit OS. Later Android-NDK versions may crash because GCC has 
been removed and Clang always reports to be buggy. Both libraries and programs were generated!
X-----X

X-LICENSE-X
All binaries, source files and libraries are licensed under their respective licenses, which can be found in the LICENSE file.
X---------X

X-PACKAGE INFO-X
Latest version: 1.0.2
Dependencies: none
X--------------X

X-SRC-X
This directory and its packages are open-source. However original-source may or may not be available.
X-----X

X-MOD_APP-X
Modification has been done to the Binary source code. The following are the modifications:
:1: Updated to the latest version which at the time compiled was 1.0.2. REASON: To fix bugs, optimise code, keep the user secure 
    and aware.
:2: Ported to Android Operating System. REASON: To work with Android
:3: Created Custom Android.mk and Application.mk REASON: To compile for Android
:4: Position Independent Code compiler flags added for libraries. REASON: To execute properly regardless of its absolute address.(Not compulsory)
:5: Position Independent Executable compiler and linker flags added for programs. REASON: Android Lollipop and above can only run 
    position independent code for security reasons.
:6: Added '-latomic' for LOCAL_LDLIBS in Android.mk for libzopflipng. REASON: To work with armeabi.
:7: Added support for all architectures. REASON: To run on all architectures.
X---------X

X-MOD_GEN-X
Modification has not been done to the Generator which here is the Android-NDK.
X---------X

X-NOTES AND TERMS-X
:1: This library can be either installed manually or from User-Tools.
:2: Installation of this library go into 'usr/lib' , programs go into 'usr/bin' directory in the virtual filesystem of Master-Terminal
    toolkit when done from User-Tools. Header files go into 'usr/include/' directory in the virtual filesystem of Master-Terminal 
    toolkit, if checked.
:3: Usage of this library or the source means that you comply with the specified license of this directory if it has one. However,
    the Terms and Conditions accepted in User-Tools must be followed.
