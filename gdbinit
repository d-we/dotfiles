set disassembly intel
set disassemble-next-line on
set print asm-demangle on
# enable pwngdb
#source /home/dwe/tools/pwndbg/gdbinit.py
# enable peda
#source ~/peda/peda.py

# trust spider monkeys gdb scripts
add-auto-load-safe-path ~/tools/spider_monkey/gecko-dev

#layout asm
#layout regs
#winheight REGS -2
#winheight CMD -5
#winheight ASM +5
#focus cmd
source /home/dwe/.gdbinit-gef.py
source /home/dwe/github_d-we/tools/gef-commands.py
# follow childs upon fork
set follow-fork-mode child
