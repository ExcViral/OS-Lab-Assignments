#include<unistd.h>
#include<stdio.h>
#include<sys/types.h>
#include<sys/wait.h>
#include<stdlib.h>

int main(){
	printf("helloworld\n");
	fflush(stdout);
	pid_t pid;
 	pid = fork();
	if(pid==0){
		printf("child:hello\n");
	}
	printf("all:hello\n");
	wait(0);
	return 0;
}
