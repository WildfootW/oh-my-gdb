source ~/Workplace/cybersecurity/Tools/oh-my-gdb/oh-my-gdb/pwndbg/gdbinit.py
source ~/Workplace/cybersecurity/Tools/oh-my-gdb/oh-my-gdb/pwngdb/pwngdb.py
source ~/Workplace/cybersecurity/Tools/oh-my-gdb/oh-my-gdb/angelheap/gdbinit.py
source ~/Workplace/cybersecurity/Tools/oh-my-gdb/oh-my-gdb/glibc-source/gdbinit

define hook-run
python
import angelheap
angelheap.init_angelheap()
end
