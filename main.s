.include "float.s"
.include "float2.s"
.global _start
_start:

MOV R0, -8.0546875
MOV R1, -0.179931640625000018

FMULS R2,R0,R1
