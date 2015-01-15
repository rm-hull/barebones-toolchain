# Barebones i686-elf & ARMv7-eabi cross-compiler & toolchain

This repo provides a stand-alone barebones gcc cross-compiler for i686 
(32-bit ELF) and ARMv7 (eabi) architectures. There are two platform 
flavors, 32- and 64-bit depending on your host environment. The correct 
one is automatically chosen when the `setenv.sh` script is run.

## Provided versions

| Package  | Version |
|----------|---------|
| binutils | 2.25    |
| gcc      | 4.9.2   |
| gmp      | 6.0.0a  |
| isl      | 0.13    |
| libiconv | 1.14    |
| mpc      | 1.0.2   |
| mpfr     | 3.1.2   |

## Setup details

Git clone this repository, then run the `setenv.sh` script to configure your PATH:

    $ git clone https://github.com/rm-hull/barebones-toolchain.git
    $ cd barebones-toolchain
    $ . ./setenv.sh

Check that it worked:

    $ i686-elf-gcc --version
    i686-elf-gcc (GCC) 4.9.2
    Copyright (C) 2014 Free Software Foundation, Inc.
    This is free software; see the source for copying conditions.  There is NO
    warranty; not even for MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.

    $ arm-none-eabi-gcc --version
    arm-none-eabi-gcc (GCC) 4.9.2
    Copyright (C) 2014 Free Software Foundation, Inc.
    This is free software; see the source for copying conditions.  There is NO
    warranty; not even for MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.

## TODO

* ~~Build 64-bit platform tools for ARMv7 target~~

## Acknowledgements

Built from instructions here: http://wiki.osdev.org/GCC_Cross-Compiler. 
ARM build was exactly the same except: `export TARGET=arm-none-eabi`
