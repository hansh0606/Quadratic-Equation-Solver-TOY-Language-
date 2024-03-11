%{
#include<stdio.h>
#include "y.tab.h"
%}

%%
[ /t] ;
[+-]?[0-9]+ {yylval.value = atof(yytext);return NUM;}
\n {return EOL;}
. {return yytext[0];}
%%

int yywrap(){
    return 1;
}