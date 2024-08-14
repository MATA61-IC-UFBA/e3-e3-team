%option noyywrap yylineno
%{

// noyywrap    - no need to deal with multiple input files
// yylineno    - variable to track line numbers 
//               that copies otherwise unmatched input to yyout.

#include "token.h"

%}

%%

"array"      { return ARRAY; }
"boolean"    { return BOOLEAN; }
"char"       { return KCHAR; }
"else"       { return ELSE; }
"false"      { return FALSE; }
"for"        { return FOR; }
"function"   { return FUNCTION; }
"if"         { return IF; }
"integer"    { return INTEGER; }
"print"      { return PRINT; }
"return"     { return RETURN; }
"string"     { return KSTRING; }
"true"       { return TRUE; }
"void"       { return VOID; }
"while"      { return WHILE; }
"if"         { return IF; } 
"<="         { return LEQ; }
">="         { return GEQ; }
"=="         { return EQ; }
"!="         { return NEQ; }
"&&"         { return AND; }
"||"         { return OR; }
"["          { return 91; }
"]"          { return 93; }
"+"          { return 43; }
"-"          { return 45; }
"*"          { return 42; }
"/"          { return 47; }
"%"          { return 37; }
"!"          { return 33; }
"<"          { return 60; }
">"          { return 62; }
"="          { return 61; }
":"          { return 58; }
";"          { return 59; }
","          { return 44; }
"("          { return 40; }
")"          { return 41; }
"{"          { return 123; }
"}"          { return 125; }
"\\"         { return 92; }
\'.\'	{return CHAR;}
\'\\'\' {return CHAR;}
\'\\[n|0]\' {return CHAR;}
\"[^"\\\n]*\" {return STR;}
[a-zA-Z][_a-zA-Z0-9]{0,255} {return ID;}
[0-9]*  {return NUM;}
"//".*        {/*ignora*/}
[ \n\t\r]     {/*ignora*/}
.      { return ERROR; }

%%


