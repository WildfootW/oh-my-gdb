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

> ~/.gdbinit
cd ./pwndbg
source ./setup.sh
cd ..
#echo "source $SCRIPTPATH/peda/peda.py" > ~/.gdbinit
echo "source $SCRIPTPATH/pwngdb.py" >> ~/.gdbinit
echo "source $SCRIPTPATH/angelheap/gdbinit.py" >> ~/.gdbinit
printf "\n" >> ~/.gdbinit
echo "define hook-run" >> ~/.gdbinit
echo "python" >> ~/.gdbinit
echo "import angelheap" >> ~/.gdbinit
echo "angelheap.init_angelheap()" >> ~/.gdbinit
echo "end" >> ~/.gdbinit
echo "finished create ~/.gdbinit"

echo "Successful install pwndbg and angelheap~"
