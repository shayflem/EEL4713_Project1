
fdiv:
push dword ptr 5;
 fild [esp];
 fild [esp];
add esp, 4;
fadd st(0), st(0);
fdivp st(1), st(0);
sub esp, 4;
fstp [esp];
pop eax;
mov res,eax;
add esp, 4;