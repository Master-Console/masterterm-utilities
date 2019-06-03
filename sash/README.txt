This directory contains binaries and sources for the Standalone-Shell(sash) specifically compiled for the Android Operating System.

Sash has been compiled for the following architectures:
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
----------------------------------------------------------------------------------------------------------------------------------------------

This package falls under the category of 'Recovery'. Thus explaining that this package is used mostly in Recovery purposes.

What is Sash or Standalone-Shell ?
Stand-alone shell (sash) is a Unix shell designed and developed by David Bell for use in recovering from certain types of system failures.

Why it is helpful?
The built-in commands of sash have all libraries linked statically, so unlike most shells on Linux, the standard UNIX commands 
do not rely on external libraries. For example, the copy command (cp) requires libc.so and ld-linux.so when built from GNU Core
Utilities on Linux. If any of these libraries get corrupted, the coreutils cp command would not work; however, in sash, the 
built-in command, cp, would be unaffected.

Why it is helpful in Android?
As we know, Android normally ships with 'sh' which symlinks to mksh(MirBSD Korn Shell) which is Bourne compatible, that is, requires its own Algorithms, depends on PATH, external utilities, or programs available because it doesn't have all the general commands in need. However, when system fails or if the core libraries get corrupted or if a part of the filesystem becomes totally unmountable, programs dependent on other programs will fail to load. In this scenario, sash which has all libraries statically linked, even dynamically linked will not fail and can help in various circumstances of development. Now, many know that there exists busybox but Busybox is not a shell but a software suite that provides several Unix utilities in a single executable file, that means busybox needs to be invoked every time a shell prompts up. However, like every shell it contains built-in commands but not every command. Thus other utilities like busybox can help.

X-GEN-X
The binaries were generated with Android-NDK r10e in a Windows 10 64-bit OS. Later Android-NDK versions may crash because GCC has been removed and Clang always
reports to be buggy.
X-----X

X-LICENSE-X
All binaries, source files and libraries are licensed under their respective licenses, which can be found in the LICENSE file.
X---------X

X-PACKAGE INFO-X
Latest version: 3.8
Dependencies: none
X--------------X

X-SRC-X
This directory and its packages are open-source. However, original-source may or may not be available.
X-----X

X-MOD_APP-X
Modification has been done to the Binary source code. The following are the modifications:
:1: Ported to Android Operating System. REASON: To work with Android
:2: Created Custom Android.mk and Application.mk REASON: To compile for Android
:3: Position Independent Executable compiler and linker flags added. REASON: Android Lollipop and above can only run position 
    independent code for security reasons.
:4: Added support for all architectures. REASON: To run on all architectures.
X---------X

X-MOD_GEN-X
Modification has been done to the Generator which here is the Android-NDK. The following are the modifications:
:1: Defined the constant execute by owner(S_IEXEC) with a value of 0100 in usr/include/linux/stat.h
:2: Added ext2_fs.h header file to arm64-v8a, mips64 and x86_64 which do not have it.(dir:usr/include/linux/)
:3: In line 97 of usr/include/sys/mount.h, changed #if 0 to #if 1 for building.
:3: Replaced code of usr/include/sys/mount.h with old usr/include/sys/mount.h for arm64-v8a, mips64 and x86_64. (did not remove include linux/fs.h)
X----------X

X-NOTES AND TERMS-X
:1: This binary can be either installed manually or from User-Tools.
:2: Installation of this binary goes into 'sbin' directory in the virtual filesystem of Master-Terminal toolkit when done from
    User-Tools.
:3: Usage of this binary or the source means that you comply with the specified license of this directory if it has one. However,
    the Terms and Conditions accepted in User-Tools must be followed.
