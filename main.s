.include "float.s"
.include "float2.s"
.section .text
.data
.global _start
_start:

; MOV R0, -8.0546875
; MOV R1, -0.179931640625000018
; MOV R4, 86.25
; MOV R5, -4.875

mval1: .float -8.0546875
mval2: .float -0.179931640625000018
dval1: .float 86.25
dval2: .float -4.875


FMULS R2,mval1,mval2
FDIVS R3,dval1,dval2
