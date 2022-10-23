//65*a can overflow
unsigned scale_int_32bit(unsigned a){
return (a*65U+50)/100;
}

//# clang3.9 -m32 -03 output
mov eax, dword ptr [esp+4]

mov edx,1374389535
mov ecx,eax
shl ecx,6
lea eax,[eax+ecx+50]

mul edx
shr edx,5

mov eax,edx
ret
