%{

/* metaprocessor made by kazuya yuda -- *
* this program for trunceLED main.c */

  #include <stdio.h>
  #include <stdlib.h>
  #include "string.h"

%}

%%

[  ]+ { printf("%s",yytext); }


if                { printf("☁️ "); }

elsif            { printf("☁-☂ "); }

else              { printf("☂ "); }

for                  { printf("↺ "); }

to                   { printf("~"); }

step                  { printf("⌒ "); }

puts                 { printf("☀ "); }

exit                { printf("✔ "); }

endfi               { printf("x☁️ "); }

endfor              { printf("x↺ "); }

#             { printf("≫ "); }

gets               { printf("→"); }

system               { printf("❖ "); }

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
