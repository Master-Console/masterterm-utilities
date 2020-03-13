This directory contains binaries and sources for the zlib library(libz) specifically compiled for the Android Operating System.

zlib has been compiled for the following architectures:
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

What is zlib?
zlib is a software library used for data compression. zlib was written by Jean-loup Gailly and Mark Adler and is an abstraction of the 
DEFLATE compression algorithm used in their gzip file compression program. 
As described in wikipedia, Today, zlib is something of a de facto standard, to the point that zlib and DEFLATE are often 
used interchangeably in standards documents, with thousands of applications relying on it for compression, either directly or indirectly.

X-GEN-X
The binaries were generated with Android-NDK r10e in a Windows 10 64-bit OS. Later Android-NDK versions may crash because GCC has 
been removed and Clang always reports to be buggy.
X-----X

X-LICENSE-X
All binaries, source files and libraries are licensed under their respective licenses, which can be found in the LICENSE file.
X---------X

X-PACKAGE INFO-X
Latest version: 1.2.11
Language: C
Dependencies: none
X--------------X

X-SRC-X
This directory and its packages are open-source. However original-source may or may not be available.
X-----X

X-MOD_APP-X
Modification has been done to the Binary source code. The following are the modifications:
:1: Updated to the latest version which at the time compiled was 1.2.11. REASON: To fix bugs, optimise code, keep the user secure 
    and aware.
:2: Ported to Android Operating System. REASON: To work with Android
:3: Created Custom Android.mk and Application.mk REASON: To compile for Android
:4: Position Independent Code compiler flags added. REASON: To execute properly regardless of its absolute address.(Not compulsory)
:5: Added support for all architectures. REASON: To run on all architectures.
X---------X

X-MOD_GEN-X
Modification has not been done to the Generator which here is the Android-NDK.
X---------X

X-NOTES AND TERMS-X
:1: This library can be either installed manually or from User-Tools.
:2: Installation of this library goes into 'usr/lib' directory in the virtual filesystem of Master-Terminal toolkit when done from
    User-Tools. Header files go into 'usr/include' directory in the virtual filesystem of Master-Terminal toolkit, if checked.
:3: Usage of this library or the source means that you comply with the specified license of this directory if it has one. However,
    the Terms and Conditions accepted in User-Tools must be followed.
