.global fdiv
.text
fdiv:
PUSH dword ptr 5;
FILD[esp];
FILD [esp];
ADD esp, 4;
FADD ST(0), ST(0);
FDIVP ST(1), ST(0);
SUB esp, 4;
FSTP [esp];
POP eax;
MOV res,eax;
ADD esp, 4;
ret