source ~/Workplace/cybersecurity/Security-Tools/Pwngdb/Pwngdb/pwndbg/gdbinit.py
source ~/Workplace/cybersecurity/Security-Tools/Pwngdb/Pwngdb/pwngdb.py
source ~/Workplace/cybersecurity/Security-Tools/Pwngdb/Pwngdb/angelheap/gdbinit.py
source ~/Workplace/cybersecurity/Security-Tools/Pwngdb/Pwngdb/glibc-source/gdbinit

define hook-run
python
import angelheap
angelheap.init_angelheap()
end
