This directory contains binaries and sources for the zipalign program specifically compiled for the Android Operating System.

zipalign has been compiled for the following architectures:
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


This package falls under the category of 'Utilities'. Thus meaning any type of utility program.

What is zipalign?
zipalign is an archive alignment tool that provides important optimization to archive files such as zip, an Android application Package(APK). 
It is mostly used in aligning and compressing of APK Files since it is developed by Google to meet the APK File structure and is included
with the Android SDK but will also work on other archives. The purpose is to ensure that all uncompressed data starts with a particular 
alignment relative to the start of the file. Specifically, it causes all uncompressed data within the archive, such as images or raw 
files, to be aligned on 4-byte boundaries. This allows all portions to be accessed directly with mmap() even if they contain binary 
data with alignment restrictions. The benefit is a reduction in the amount of RAM consumed when running the application.

If you are aligning any APK file, you are to read this notice:
Caution: You must use zipalign at one of two specific points in the app-building process, depending on which app-signing tool you use:

-If you use apksigner, zipalign must only be performed before the APK file has been signed. If you sign your APK using apksigner and 
 make further changes to the APK, its signature is invalidated.
-If you use jarsigner, zipalign must only be performed after the APK file has been signed.

X-GEN-X
The binaries were generated with Android-NDK r10e in a Windows 10 64-bit OS. Later Android-NDK versions may crash because GCC has 
been removed and Clang always reports to be buggy.
X-----X

X-CREDITS-X
Some or most part of the source is fixed with the repo published by osm0sis/zipalign. Be sure to credit @osm0sis for what he did for
making Android a better environment with these utilities.
X---------X

X-LICENSE-X
All binaries, source files and libraries are licensed under their respective licenses, which can be found in the LICENSE file.
X---------X

X-PACKAGE INFO-X
Update & Details: Yes, official googlecode repo has a newer version but requires C++14 support which NDK r10e lacks.
Latest version: (aosp-mirror@ad7d562)
Dependencies: none
X--------------X

X-SRC-X
This directory and its packages are open-source. However original-source may or may not be available.
X-----X

X-MOD_APP-X
Modification has been done to the Binary source code. The following are the modifications:
:1: Ported to Android Operating System. REASON: To work with Android
:2: Created Custom Android.mk and Application.mk REASON: To compile for Android
:3: Position Independent Code compiler flags added for libraries. REASON: To execute properly regardless of its absolute address.(Not compulsory)
:4: Position Independent Executable compiler and linker flags added for zipalign program. REASON: Android Lollipop and above can only run
    position independent code for security reasons. However excluded for x86 and x86_64 since '-pie' and '-static' are incompatible for their
    source. So an individual makefile is available for x86 and x86_64.
:5: Added support for all architectures. REASON: To run on all architectures. However, armeabi, mips and mips64 are deprecated by Google.
X---------X

X-MOD_GEN-X
Modification has not been done to the Generator which here is the Android-NDK.
X---------X

X-NOTES AND TERMS-X
:1: This program can be either installed manually or from User-Tools.
:2: Installation of this program go into 'usr/bin' directory in the virtual filesystem of Master-Terminal toolkit when done from
    User-Tools.
:3: Usage of this program or the source means that you comply with the specified license of this directory if it has one. However,
    the Terms and Conditions accepted in User-Tools must be followed.
