#!/bin/bash

# clone submodule
git submodule init
git submodule update
echo "finished clone submodule"

# create ~/.gdbinit
# Absolute path to this script, e.g. /home/user/Pwngdb/install.sh
SCRIPT=$(readlink -f "$0")
# Absolute path this script is in, thus /home/user/Pwngdb
SCRIPTPATH=$(dirname "$SCRIPT")

cd ./pwndbg
source ./setup.sh
cd ..

> ~/.gdbinit
echo "add-auto-load-safe-path $SCRIPTPATH/.gdbinit" >> ~/.gdbinit
echo "source $SCRIPTPATH/.gdbinit" >> ~/.gdbinit

echo "finished create ~/.gdbinit"

echo "Successful install pwndbg and angelheap~"
