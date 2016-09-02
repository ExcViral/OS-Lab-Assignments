#include<unistd.h>
#include<stdio.h>
#include<sys/types.h>
#include<sys/wait.h>
#include<stdlib.h>
	int main()
		{
			int pid,fd[2];
			pipe(fd);
			printf("Enter two numbers by one");
			int a, b;
			scanf("%d%d",&a,&b);
			pid=fork();
			wait;
			if(pid==0)
				{
				int sum = a + b;
				int Buffer[4] = {sum};
				close(fd[1]);
				read(fd[0],Buffer,4);
				}
			else
				{
					sum = a + b;
				close(fd[0]);//close reading part
				write(fd[1],Buffer,4);
				}
		}
	}