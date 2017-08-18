#include <stdio.h>
#include <stdlib.h>
#include "string.h"
int _STACK=10000;
char buf[1000][100];
int tend=1;
int main(argc,argv)
	int argc;
	char *argv[];
{
printf("welcome to                                                  Ver 0.1 \n");
printf("\x1b[33m");
printf("#######                                    #       ####### ######  \n");
printf("   #    #####    ##   #    #  ####  ###### #       #       #     # \n");
printf("   #    #    #  #  #  ##   # #    # #      #       #       #     # \n");
printf("   #    #    # #    # # #  # #      #####  #       #####   #     # \n");
printf("   #    #####  ###### #  # # #      #      #       #       #     # \n");
printf("   #    #   #  #    # #   ## #    # #      #       #       #     # \n");
printf("   #    #    # #    # #    #  ####  ###### ####### ####### ######  \n");
printf("\x1b[39m");
printf("✤ Codewrite by kazuya yuda.\n");
if(argc != 2) {
	        printf("Error : Please indicate file name!\n");
		        exit(1);
}
        printf("\x1b[31m");
        printf("☀ ");
        printf("\x1b[39m");
	FILE *fp;
	int c,i;
	if ((fp=fopen(argv[1],"r"))!=0){
		while (fgets(buf[tend],80,fp)!=0)
			tend++;
		fclose(fp);
	}
	else
		printf(" new file\n");
	while ((c=prompt())!='w'){
		switch (c) {
			case 'a':write(argc,argv);
				 break;
			case 'i':txinp();
				 break;
			case 'I':break;
			case 'l':txlst();
				 break;
			case 'L':break;
			case 'e':txedt();
				 break;
			case 'E':break;
			case 'd':txlst();
				 del();
				 break;
			case 'D':break;
			case 's':ins();
				 break;
			case 'S':break;
			case 'm':metaprocessor(argv);
			case 'O':break;
			case 'o':originprocessor(argv);
			case 'M':break;
			case 'r':run();
				 break;
			case 'R':break;
			case 'q':exit(1);
			default:printf("no command!\n");
			}
	while(getchar()!='\n');

	}
	if ((fp=fopen(argv[1],"w"))!=0){
		for (i=1;i<tend;i++)
			fputs(buf[i],fp);
		fclose(fp);
	}
}
prompt()
{
	printf("\x1b[34m"); 
	printf("☁ ");
	printf("\x1b[39m");
	fflush(stdin);
	return(getchar());
}
txinp()
{
	int c,i;
	char *fgets();
	while(getchar()!='\n');
	//printf("%d",tend);testcode
	printf("\x1b[35m");
	printf("%4d:\t➤ q(command: q is input mode exit.)\n",tend-1);
	i = tend;
	do {
		printf("\x1b[35m");
		printf("%4d:\t➤ ",tend);
		printf("\x1b[39m");
		//*fgets(buf[tend],80,stdin);
		tend++;
	} while ((*fgets(buf[tend],80,stdin))!='q');
	predel(i);
}
txlst()
{
	int i;
	for (i=1;i<tend;i++){
		printf("\x1b[37m");
		printf("%4d:\t%s",i,buf[i]);
		printf("\x1b[39m");
	}
}
txedt()
{
	int i,c;
	char dumy[80], *fgets();
	printf("\x1b[7m");
	printf(" edit  line ✜ ");
	printf("\x1b[0m"); 
	scanf("%d",&i);
	printf("%4d:\t%s",i,buf[i]);
	printf("%4d:\t",i);
	fflush(stdin);
	if ((c=getchar())!='q')
		*fgets(dumy,80,stdin);
		strcpy(buf[i],dumy);
}
ins()
{
	int i,n;
	printf("\x1b[7m");
	printf("insert line ➜ ");
	printf("\x1b[0m"); 
	scanf("%d",&n);
	for (i=tend;i>=n;i--)
		strcpy(buf[i+1],buf[i]);
	strcpy(buf[n],"\n");
	tend++;
}
del()
{
	int i,n;
	printf("\x1b[7m");
	printf("delete line ✘ ");
	printf("\x1b[0m");
	scanf("%d",&n);
	for (i=n;i<tend;i++)
		strcpy(buf[i],buf[i+1]);
	tend--;
}
predel(n)
int n;
{
	int i;
	for (i=n;i<tend;i++)
		strcpy(buf[i],buf[i+1]);
	tend--;
}
write(argc,argv)
	int argc;
        char *argv[];
{
	char tmp1[1000];
	FILE *fp;
        int i;
	//書き込み
	if ((fp=fopen(argv[1],"w"))!=0){
                for (i=1;i<tend;i++)
                        fputs(buf[i],fp);
               fclose(fp);
        }
	sprintf(tmp1,"./led %s",argv[1]);
	system(tmp1);
}
metaprocessor(argv)
        char *argv[];
{
	int c;
	char tmp2[1000];
	char tmp3[1000];
        printf("\x1b[7m");
        printf("metaprocessor ➤  M%s\n",argv[1]);
        printf("\x1b[0m");

	printf("w or a command ok?:(yes>1 no>0):");
	scanf("%d",&c);

	if (c == 0) {
		printf("please try again!\n");
		return(0);
	}

	sprintf(tmp2,"rm M%s; ./.metaprocessor %s > M%s",argv[1],argv[1],argv[1]);
	system(tmp2);
	
	sprintf(tmp3,"./led M%s",argv[1]);
	system(tmp3);

	exit(1);
}

originprocessor(argv)
        char *argv[];
{
        char tmp4[1000];
        printf("\x1b[7m");
        printf("originprocessor ➤  run.tc");
        printf("\x1b[0m");
	printf("Program start!\n");

        sprintf(tmp4,"./.originprocessor %s > run.tc",argv[1]);
        system(tmp4);
	system("./basic/basic run.tc");
}

run()
{
	system("./basic/basic run.tc");
}
