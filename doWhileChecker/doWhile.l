%option yylineno

%{
  /*
  * Write LEX and YACC specifications for all “do while” loop statements of "C" programming language
  *
  * Author: adarshPatel509
  */
  #include "y.tab.h"
  extern int yylval;
%}

NUMBER        ([0-9]+(".")?([0-9])*)
IDENTIFIER    ([a-zA-z_][a-zA-z_0-9]*)

%%

[\t ]           /* ignore whitespaces */ ;

do              {return DO;}
while           {return WHILE;}
{NUMBER}        {return NUM;}
{IDENTIFIER}    {return ID;}
"<="            {return LE;}
">="            {return GE;}
"=="            {return EQ;}
"!="            {return NE;}
"||"            {return OR;}
"&&"            {return AND;}

.               {return yytext[0];}

\n              {yylval = yylineno;}

\n\n            {return 0;}

%%