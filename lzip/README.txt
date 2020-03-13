This directory contains binaries and sources for the lzip program specifically compiled for the Android Operating System.

lzip has been compiled for the following architectures:
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


This package falls under the category of 'Utilities'. Meaning any type of utility programn`
program.

What is lzip?
Lzip is a lossless data compressor with a user interface similar to the one of gzip or bzip2. Lzip can compress about as fast as 
gzip (lzip -0) or compress most files more than bzip2 (lzip -9). Decompression speed is intermediate between gzip and bzip2. 
Lzip is better than gzip and bzip2 from a data recovery perspective. Lzip has been designed, written, and tested with great care 
to replace gzip and bzip2 as the standard general-purpose compressed format for unix-like systems.

Why it is helpful?
-The lzip file format is designed for data sharing and long-term archiving, taking into account both data integrity and decoder availability.

-The lzip format provides very safe integrity checking and some data recovery means. The lziprecover program can repair 
 bit flip errors (one of the most common forms of data corruption) in lzip files, and provides data recovery capabilities, 
 including error-checked merging of damaged copies of a file.
 
-The lzip format is as simple as possible (but not simpler). The lzip manual provides the source code of a simple decompressor 
 along with a detailed explanation of how it works, so that with the only help of the lzip manual it would be possible for a 
 digital archaeologist to extract the data from a lzip file long after quantum computers eventually render LZMA obsolete.
 Additionally the lzip reference implementation is copylefted, which guarantees that it will remain free forever.

X-GEN-X
The binaries were generated with Android-NDK r10e in a Windows 10 64-bit OS. Later Android-NDK versions may crash because GCC has 
been removed and Clang always reports to be buggy. Only programs were generated!
X-----X

X-LICENSE-X
All binaries and source files are licensed under their respective licenses, which can be found in the LICENSE file.
X---------X

X-PACKAGE INFO-X
Latest version: 1.21
Language: C++
Dependencies: none
X--------------X

X-SRC-X
This directory and its packages are open-source. However original-source may or may not be available.
X-----X

X-MOD_APP-X
Modification has been done to the Binary source code. The following are the modifications:
:1: Fixed an out of scope error in the method show_version() of main.cc at line 158. The reason is the program name and version info
    are not defined in the main file, we had to redefine it.
:2: Created Custom Android.mk and Application.mk REASON: To compile for Android
:3: Position Independent Executable compiler and linker flags added for programs. REASON: Android Lollipop and above can only run 
    position independent code for security reasons.
:4: Added support for all architectures. REASON: To run on all architectures.
X---------X

X-MOD_GEN-X
Modification has not been done to the Generator which here is the Android-NDK.
X---------X

X-NOTES AND TERMS-X
:1: This program can be either installed manually or from User-Tools.
:2: Installation of this program goes into 'usr/bin' directory in the virtual filesystem of Master-Terminal
    toolkit when done from User-Tools. Header files go into 'usr/include/' directory in the virtual filesystem of Master-Terminal 
    toolkit, if checked.
:3: Usage of this program or the source means that you comply with the specified license of this directory if it has one. However,
    the Terms and Conditions accepted in User-Tools must be followed.
