%{
    #include <stdio.h>
    #include <stdlib.h>
    #include <string.h>
    FILE *yyin;
%}

%option noyywrap
%option yylineno

DIGIT           [0-9]
CHAR_LETTER     [a-zA-Z]
INIT_COMMENT    ["/*"]
END_COMMENT     ["*/"]
COMMENT         ["//"]
DASH            [-_]
CHAR_COMMA      [","]
CHAR_POINT      ["."]
CHAR_COLON      [":"]
L_SHIFT         "<<"
R_SHIFT         ">>"

CONST_INT     (-?[1-9]{0,4})|0
CONST_FLOAT   {DIGIT}{0,8}{CHAR_POINT}{DIGIT}{1,8}
STRING  \"[^\n"]*\"

OP_PLUS1    "++"
OP_SUM      "+"
OP_SUB      "-"
OP_MULT     "*"
OP_DIV      "/"
OP_EQ       "="
OP_HIGH     ">"
OP_LOW      "<"
OP_HIGHEQ   ">="
OP_LOWEQ    ">="
OP_COMP_EQ  "=="
OP_DENIAL   "!"
OP_DIF      "!="
OP_RES      "%"
OP_AND      "&&"
OP_OR       "||"


BRACKET_OPEN    ["{"]
BRACKET_CLOSE   ["}"]
PARENTHESIS_O   ["("]
PARENTHESIS_C   [")"]
END_SENTENCE    [";"]
LIBRARY         (<{CHAR_LETTER}+({CHAR_POINT}|{CHAR_LETTER}+){CHAR_LETTER}+>)


COUT        "cout"
IF          "if"
WHILE       "while"
INTEGER     "int"
FLOAT       "float"
END_LINE    "endl"
RETURN      "return"
USING       "using"
NAMESPACE   "namespace"
PPACCESS    "#include"
BOOL        "bool"
CHAR        "char"
DO          "do"
ELSE        "else"
FOR         "for"
NEW         "new"
SHORT       "short"
STRUCT      "struct"
VOID        "void"
SWITCH      "switch"
CASE        "case"
BREAK       "break"

ID            {CHAR_LETTER}({CHAR_LETTER}|{DIGIT}|{DASH})*

%%

{END_SENTENCE}        {printf("\nEND_SENTENCE(%s)",yytext);}
{LIBRARY}           {printf("\nEsto es una libreria (%s)",yytext);}
{PPACCESS}          {printf("\nINCLUDE (%s)",yytext);}

{OP_PLUS1}          {printf("\nOP_PLUS1 (%s)",yytext);}
{OP_SUM}            {printf("\nOP_SUM (%s)",yytext);}
{OP_SUB}            {printf("\nOP_SUB (%s)",yytext);}
{OP_MULT}           {printf("\nOP_MULT (%s)",yytext);}
{OP_DIV}            {printf("\nOP_DIV (%s)",yytext);}
{OP_EQ}             {printf("\nOP_EQ (%s)",yytext);}
{OP_HIGH}           {printf("\nOP_HIGH (%s)",yytext);}
{OP_LOW}            {printf("\nOP_LOW (%s)",yytext);}
{OP_HIGHEQ}         {printf("\nOP_HIGHEQ (%s)",yytext);}
{OP_LOWEQ}          {printf("\nOP_LOWEQ (%s)",yytext);}
{OP_COMP_EQ}        {printf("\nOP_COMP_EQ (%s)",yytext);}
{OP_DENIAL}         {printf("\nOP_DENIAL (%s)",yytext);}
{OP_DIF}            {printf("\nOP_DIF (%s)",yytext);}
{OP_RES}            {printf("\nOP_RES (%s)",yytext);}
{OP_AND}            {printf("\nOP_AND (%s)",yytext);}
{OP_OR}             {printf("\nOP_OR (%s)",yytext);}


{CHAR_COMMA}        {printf("\nCHAR_COMMA (%s)",yytext);}
{CONST_INT}         {printf("\nCONST_INT (%s)",yytext);}
{CONST_FLOAT}       {printf("\nCONST_FLOAT(%s)",yytext);}
{STRING}            {printf("\nSTRING (%s)",yytext);}
{L_SHIFT}           {printf("\nL_SHIFT (%s)",yytext);}
{R_SHIFT}           {printf("\nR_SHIFT (%s)",yytext);}



{BRACKET_OPEN}      {printf("\nBRACKET_OPEN (%s)",yytext);}
{BRACKET_CLOSE}     {printf("\nBRACKET_CLOSE (%s)",yytext);}
{PARENTHESIS_O}     {printf("\nPARENTHESIS_O (%s)",yytext);}
{PARENTHESIS_C}     {printf("\nPARENTHESIS_C (%s)",yytext);}


{USING}             {printf("\nPalabra Reservada USING (%s)",yytext);}
{NAMESPACE}         {printf("\nPalabra Reservada NAMESPACE (%s)",yytext);}
{COUT}              {printf("\nPalabra Reservada COUT (%s)",yytext);}
{IF}                {printf("\nPalabra Reservada IF (%s)",yytext);}
{WHILE}             {printf("\nPalabra Reservada WHILE (%s)",yytext);}
{INTEGER}           {printf("\nPalabra Reservada INTEGER (%s)",yytext);}
{FLOAT}             {printf("\nPalabra Reservada FLOAT (%s)",yytext);}
{END_LINE}          {printf("\nPalabra Reservada END_LINE (%s)",yytext);}
{RETURN}            {printf("\nPalabra Reservada RETURN (%s)",yytext);}
{BOOL}              {printf("\nPalabra Reservada BOOL (%s)",yytext);}
{CHAR}              {printf("\nPalabra Reservada CHAR (%s)",yytext);}
{DO}                {printf("\nPalabra Reservada DO (%s)",yytext);}
{ELSE}              {printf("\nPalabra Reservada ELSE (%s)",yytext);}
{FOR}               {printf("\nPalabra Reservada FOR (%s)",yytext);}
{NEW}               {printf("\nPalabra Reservada NEW (%s)",yytext);}
{SHORT}             {printf("\nPalabra Reservada SHORT (%s)",yytext);}
{STRUCT}            {printf("\nPalabra Reservada STRUCT (%s)",yytext);}
{VOID}              {printf("\nPalabra Reservada VOID (%s)",yytext);}
{SWITCH}            {printf("\nPalabra Reservada SWITCH (%s)",yytext);}
{CASE}              {printf("\nPalabra Reservada CASE (%s)",yytext);}
{BREAK}             {printf("\nPalabra Reservada BREAK (%s)",yytext);}


{ID}                {printf("\nID (%s)",yytext);}

[ \n\r\t]           {}
.                   {printf("\nNo se puede leer");}
%%

int main(int argc,char *argv[]){
    if((yyin=fopen(argv[1],"rt"))==NULL){
        printf("\nError, no se puede abrir el archivo",argv[1]);
        return 1;
    }
    else{
        yylex();
    }
    fclose(yyin);
    return 0;
}













