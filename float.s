.section .text
.global fmult

fmult:
LDURS S4, [X28,c]
LDURS S6, [X28,a]
FMULS S2, S4,S6
STURS S2, [X28,b]
BR LR





