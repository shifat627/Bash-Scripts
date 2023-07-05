#include<stdio.h>
#include <sys/types.h>
#include <sys/stat.h>
#include <fcntl.h>
#include <unistd.h>
int main(int i ,char **arg){

if(i!=2){
printf("Usage %s <filename>\n",arg[0]);
return 0;

}

struct stat st;
int f = open(arg[1],O_RDONLY);


if (f==-1){
printf("Error Detected\n");
return -1;

}

fstat(f,&st);

int s = st.st_size;
while(s>0){
char ch;
read(f,&ch,1);
s--;
printf("%c",ch);

}

close(f);

return 0;


}
