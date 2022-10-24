.section .text
.global fdiv

fdiv:
LDURS S4, [X28,c]
LDURS S6, [X28,a]
FDIVS S2, S4,S6
STURS S2, [X28,b]
BR LR