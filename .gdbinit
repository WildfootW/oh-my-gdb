source ~/workplace/Capture-the-flag/WF_Capture-The-Flag_Tools/Pwngdb/Pwngdb/pwndbg/gdbinit.py
source ~/workplace/Capture-the-flag/WF_Capture-The-Flag_Tools/Pwngdb/Pwngdb/pwngdb.py
source ~/workplace/Capture-the-flag/WF_Capture-The-Flag_Tools/Pwngdb/Pwngdb/angelheap/gdbinit.py

define hook-run
python
import angelheap
angelheap.init_angelheap()
end
