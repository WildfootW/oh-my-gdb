#!/bin/bash
#   Version 
#   Author: WildfootW
#   GitHub: github.com/WildfootW
#   Copyright (C) 2018 WildfootW All rights reserved.
#

# Absolute path to this script, e.g. /home/user/Pwngdb/install.sh
SCRIPT=$(readlink -f "$0")
# Absolute path this script is in, thus /home/user/Pwngdb
SCRIPTPATH=$(dirname "$SCRIPT")

apt-get source glibc

> "$SCRIPTPATH/.gdbinit"
echo -n "set directories " >> "$SCRIPTPATH/.gdbinit"
echo "`find $SCRIPTPATH -mindepth 1 -maxdepth 1 -type d`/malloc" >> "$SCRIPTPATH/.gdbinit"
rm "$SCRIPTPATH/"*".tar.xz"
rm "$SCRIPTPATH/"*".dsc"
