#include<unistd.h>
#include<stdio.h>
#include<sys/types.h>
#include<sys/wait.h>
#include<stdlib.h>

int main(){
	printf("%d\n",getpid());
	printf("%d\n",getppid());
	return 453;
}
