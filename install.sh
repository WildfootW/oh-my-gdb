# Absolute path to this script, e.g. /home/user/Pwngdb/install.sh
SCRIPT=$(readlink -f "$0")
# Absolute path this script is in, thus /home/user/Pwngdb
SCRIPTPATH=$(dirname "$SCRIPT")
echo "source $SCRIPTPATH/peda/peda.py" > ~/.gdbinit
echo "source $SCRIPTPATH/pwngdb.py" >> ~/.gdbinit
echo "source $SCRIPTPATH/angelheap/gdbinit.py" >> ~/.gdbinit
echo "\n" >> ~/.gdbinit
echo "define hook-run" >> ~/.gdbinit
echo "python" >> ~/.gdbinit
echo "import angelheap" >> ~/.gdbinit
echo "angelheap.init_angelheap()" >> ~/.gdbinit
echo "end" >> ~/.gdbinit
