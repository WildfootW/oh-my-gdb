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

# setup pwndbg
cd ./pwndbg
#source ./setup.sh
cd ..

# write ~/.gdbinit
> ~/.gdbinit
echo "add-auto-load-safe-path $SCRIPTPATH/.gdbinit" >> ~/.gdbinit
echo "source $SCRIPTPATH/.gdbinit" >> ~/.gdbinit

echo "finished create ~/.gdbinit"

# install
cp "$SCRIPTPATH/bin/"* "$SCRIPTPATH/../../bin/"

echo "Successful Install oh-my-gdb"
