#include<unistd.h>
#include<stdio.h>
#include<sys/types.h>
#include<sys/wait.h>
#include<stdlib.h>

int main(){
	printf("helloworld\n");

	pid_t pid;
 	pid = fork();
	if(pid==0){
		char* arg[] = {"ls","-l",NULL};
		execvp("ls",arg);
	}
	else{
		wait(0);
		printf("chilld exited");
	}
	return 0;
}
