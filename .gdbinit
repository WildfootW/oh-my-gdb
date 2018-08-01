source /home/wildfootw/workspace/Capture-the-flag/WF_Capture-The-Flag_Tools/Pwngdb/pwndbg/gdbinit.py
source /home/wildfootw/workspace/Capture-the-flag/WF_Capture-The-Flag_Tools/Pwngdb/pwngdb.py
source /home/wildfootw/workspace/Capture-the-flag/WF_Capture-The-Flag_Tools/Pwngdb/angelheap/gdbinit.py

define hook-run
python
import angelheap
angelheap.init_angelheap()
end
