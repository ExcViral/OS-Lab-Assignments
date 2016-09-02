#include<unistd.h>
#include<stdio.h>
#include<sys/types.h>
#include<sys/wait.h>
#include<stdlib.h>
	int main()
		{
			printf("hello world");
			pid_t pid;
			pid=fork();
			wait;
			if(pid==0)
				{
				char*arg[]={"ps","-aux",NULL};
				execvp("ps",arg);
				}
			else
				{
				char*arg[]={"ls","-l",NULL};
				execvp("ls",arg);
				}
		}
