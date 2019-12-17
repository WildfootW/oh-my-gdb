# * * * pwndbg * * *
define init-pwndbg
    source ~/Workplace/cybersecurity/Tools/oh-my-gdb/oh-my-gdb/pwndbg/gdbinit.py
end
document init-pwndbg
    Initializes pwndbg
end


# * * * pwngdb * * *
define init-pwngdb
    source ~/Workplace/cybersecurity/Tools/oh-my-gdb/oh-my-gdb/pwngdb/pwngdb.py
end
document init-pwngdb
    Initializes pwngdb
end


# * * * glibc-source * * *
define init-glibc-source
    source ~/Workplace/cybersecurity/Tools/oh-my-gdb/oh-my-gdb/glibc-source/.gdbinit
end
document init-glibc-source
    Set directory for glibc source
end


# * * * angelheap * * *
define init-angelheap
    source ~/Workplace/cybersecurity/Tools/oh-my-gdb/oh-my-gdb/angelheap/gdbinit.py
    python
import angelheap
angelheap.init_angelheap()
    end
end
document init-angelheap
    Initializes angelheap
end
#define hook-run
#    python
#import angelheap
#angelheap.init_angelheap()
#    end
#end

