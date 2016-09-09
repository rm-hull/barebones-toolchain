# Barebones i686-elf / ARMv7-eabi / MIPS cross-compiler & toolchain

This repo provides a stand-alone barebones gcc cross-compiler for i686 (32-bit
ELF), ARMv7 (eabi) and MIPS architectures. There are two platform flavors, 32-
and 64-bit depending on your host linux environment. The correct one is
automatically chosen when the `setenv.sh` script is run.

## Provided versions

| Package  | Version |
|----------|---------|
| binutils | 2.27    |
| gcc      | 6.2.0   |
| gmp      | 6.1.1   |
| isl      | 0.17    |
| libiconv | 1.14    |
| mpc      | 1.0.3   |
| mpfr     | 3.1.4   |

## Setup details

Git clone this repository, then run the `setenv.sh` script to configure your PATH:

    $ git clone https://github.com/rm-hull/barebones-toolchain.git
    $ cd barebones-toolchain
    $ . ./setenv.sh

Check that it worked:

    $ i686-elf-gcc --version
    i686-elf-gcc (GCC) 6.2.0
    Copyright (C) 2016 Free Software Foundation, Inc.
    This is free software; see the source for copying conditions.  There is NO
    warranty; not even for MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.

    $ arm-none-eabi-gcc --version
    arm-none-eabi-gcc (GCC) 6.2.0
    Copyright (C) 2016 Free Software Foundation, Inc.
    This is free software; see the source for copying conditions.  There is NO
    warranty; not even for MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.

    $ mips-gcc --version
    arm-none-eabi-gcc (GCC) 6.2.0
    Copyright (C) 2016 Free Software Foundation, Inc.
    This is free software; see the source for copying conditions.  There is NO
    warranty; not even for MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.

## TODO

* ~~Build 64-bit platform tools for ARMv7 target~~

## Acknowledgements

Built from instructions here: http://wiki.osdev.org/GCC_Cross-Compiler.

ARM build was exactly the same except: `export TARGET=arm-none-eabi`.
Likewise MIPS build was exactly the same except: `export TARGET=mips`.
