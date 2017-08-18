%{

/* originprocessor made by kazuya yuda -- *
* this program for trunceLED main.c */

  #include <stdio.h>
  #include <stdlib.h>
  #include "string.h"

%}

%%

[\s ]+ { printf("%s",yytext); }

☁️   		{ printf("IF"); }

☁-☂  		{ printf("ELSEIF"); }

☂   		{ printf("ELSE"); }

x☁️ 		{ printf("ENDIF"); }

☀   		{ printf("PRINT"); }

↺   		{ printf("FOR");}

x↺  		{ printf("NEXT"); }

≫  		{ printf("#"); }

→  		{ printf("INPUT"); }

✔ 		{ printf("EXIT"); }

~		{ printf("GO"); }

[^\x00-\x7F] |
[ぁ-んァ-ヶ]+ 	{ printf("%s",yytext); }

[a-zA-Z]+ 	{ printf("%s", yytext); }

.|\n		{ ECHO; }

%%

 int main( int argc, char **argv )
{
 ++argv, --argc;
 if ( argc > 0 )
 	yyin = fopen( argv[0], "r" );
 else
 	yyin = stdin;
 if(yyin==NULL) { 
	fprintf(stderr,"Not open a input file!\n"); exit(1);
}
 	yylex();

 return(0);
}
