.text

.globl fmult
fmult:

#Assign v0 with 0

li $v0,0

#Compare multiplicand

beq $a0,$zero,fmult

#Compare multiplier

beq $a1,$zero,fmult

#Place mask

li $t5,0x80000000

#Place multiplicand sign

and $t0,$a0,$t5

#Place multiplier sign

and $t1,$a1,$t5

#Place product sign

xor $t2,$t0,$t1

# Place multiplicand exponen

sll $t0,$a0,1

#Shift

srl $t0,$t0,24

#Subtract bias

li $t6,127

#Place exeonent multiplier

sub $t0,$t0,$t6

#Shift

sll $t1,$a1,1

#Shift

srl $t1,$t1,24

#Subtract bias

li $t7,127

#Substract

sub $t1,$t1,$t7

#Add exponents

add $t3,$t1,$t0

#Add bias

addi $t3,$t3,127

#Place value

sll $t0,$a0,9

#Shift

srl $t0,$t0,9

#Restore

li $t5,0x00800000

#Or instruction

or $t0,$t5,$t0

# Place multiplier

sll $t1,$a1,9

#Shift

srl $t1,$t1,9

# Restore left

or $t1,$t5,$t1

# Multiply significands

multu $t0, $t1

#Store high part

mfhi $t4

#Branch

bge $t4, $zero, norm

# Shift significand

srl $t4, $t4, 1

# Adjust exponent

addi $t3, $t3, 1

/* 
.global fmult
.text
fmult:
//push %ebp
//mov  %esp,%ebp
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
ret */
