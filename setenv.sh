#!/usr/bin/bash
#
# Adds the bin directory to the path, use as:
#
#    . ./setenv.sh

I686_TOOLS=`pwd`/cross/`uname -m`/bin
echo Adding $I686_TOOLS to path

export PATH=$I686_TOOLS:$PATH