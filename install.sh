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
./setup.sh
cd ..

# download source of glibc
cd ./glibc-source
./get-source.sh
cd ..

# write ~/.gdbinit
> ~/.gdbinit
echo "add-auto-load-safe-path $SCRIPTPATH/.gdbinit" >> ~/.gdbinit
echo "source $SCRIPTPATH/.gdbinit" >> ~/.gdbinit

# Finished
echo "Successful Install oh-my-gdb"
