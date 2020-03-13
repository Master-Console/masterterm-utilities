This directory contains binaries and sources for the brotli library specifically compiled for the Android Operating System.

brotli along with its programs have been compiled for the following architectures:
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

What is brotli?
Brotli is a type of compression developed by Jyrki Alakuijala and Zoltán Szabadka. It is an Open Source technique and based on the 
modern LZ77 algorithm, 2nd order and Huffman coding context modeling. This will boost the website performance much more in all browsers.
Brotli was released on 2015 September by Google software engineers by enhancing lossless data compression with the 
use of HTTP compression.

Why it is helpful?
The Brotli compression technique uses a pre-defined 120Kb dictionary in addition with Sliding Window dictionary. 
Brotli compression ensures better space utilization and faster page loads with smaller compressed size and it is far better than 
gzip compression mechanism.  While Gzip compression uses a fixed window of 32KB but in Brotli uses a sliding window of 1KB to 16MB.

X-GEN-X
The binaries were generated with Android-NDK r10e in a Windows 10 64-bit OS. Later Android-NDK versions may crash because GCC has 
been removed and Clang always reports to be buggy. Both libraries and programs were generated!
X-----X

X-LICENSE-X
All binaries, source files and libraries are licensed under their respective licenses, which can be found in the LICENSE file.
X---------X

X-PACKAGE INFO-X
Latest version: 1.0.7
Language: C
Dependencies: none
X--------------X

X-SRC-X
This directory and its packages are open-source. However original-source may or may not be available.
X-----X

X-MOD_APP-X
Modification has been done to the Binary source code. The following are the modifications:
:1: Created Custom Android.mk and Application.mk REASON: To compile for Android
:2: Position Independent Code compiler flags added for libraries. REASON: To execute properly regardless of its absolute address.(Not compulsory)
:3: Position Independent Executable compiler and linker flags added for programs. REASON: Android Lollipop and above can only run 
    position independent code for security reasons.
:4: Added support for all architectures. REASON: To run on all architectures.
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
