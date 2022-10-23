.include "float.s"
.include "float2.s"
section .data
.global _start
_start:

MOV R0, -8.0546875
MOV R1, -0.179931640625000018
MOV R4, 86.25
MOV R5, -4.875

FMULS R2,R0,R1
FDIVS R3,R4,R5
