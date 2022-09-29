%{
    #include <stdio.h>
    #include <stdlib.h>
    #include <conio.h>
    #include <string.h>
    FILE *yyin;
%}

%option noyywrap
%option yylineno

DIGIT           [0-9]
CHAR_LETTER     [a-zA-Z]
INIT_COMMENT    ["/*"]
END_COMMENT     ["*/"]
DASH            [-_]
CHAR_COMMA      [","]
CHAR_POINT      ["."]
CHAR_SEMICOLON  [";"]
CHAR_COLON      [":"]
L_SHIFT         ["<"]
R_SHIFT         [">"]

ID            {CHAR_LETTER}({CHAR_LETTER}|{DIGIT}|{DASH})*
CONST_INT     (-?[1-9]{0,4})|0
CONST_FLOAT   {DIGIT}{0,8}{CHAR_POINT}{DIGIT}{1,8}
STRING  \"[^\n"]*\"

OP_SUM     ["+"]
OP_SUB     ["-"]
OP_MULT    ["*"]
OP_DIV     ["/"]
OP_EQ      ["="]
OP_HIGH    [">"]
OP_LOW     ["<"]
OP_HIGHEQ  ">="
OP_LOWEQ   ">="
OP_COMP_EQ "=="
OP_DENIAL  "!"
OP_DIF     "!="
OP_COLON   [":"]

BRACKET_OPEN    ["{"]
BRACKET_CLOSE   ["}"]
PARENTHESIS_O   ["("]
PARENTHESIS_C   [")"]
END_SENTENCE    [";"]

IF          "if"|"IF"
WHILE       "while"|"WHILE"
INTEGER     "INTEGER"|"Integer"
FLOAT       "Float"|"FLOAT"
COUT        "cout"
END_LINE    "endl"
RETURN      "return"



%%

{OP_COLON}          {printf("\nOP_COLON (%s)",yytext);}
{END_SENTENCE}        {printf("\nEND_SENTENCE(%s)",yytext);}

{CHAR_COMMA}        {printf("\nCHAR_COMMA (%s)",yytext);}
{CHAR_SEMICOLON}    {printf("\nCHAR_SEMICOLON (%s)",yytext);}
{CONST_INT}         {fn_rangeVerify(yytext);printf("\nCONST_INT (%s)",yytext);}
{CONST_FLOAT}       {printf("\nCONST_FLOAT(%s)",yytext);}
{STRING}            {printf("\nSTRING (%s)",yytext);}
{L_SHIFT}           {printf("\nL_SHIFT (%s)",yytext);}
{R_SHIFT}           {printf("\nR_SHIFT (%s)",yytext);}

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
{OP_COLON}          {printf("\nOP_COLON (%s)",yytext);}

{BRACKET_OPEN}      {printf("\nBRACKET_OPEN (%s)",yytext);}
{BRACKET_CLOSE}     {printf("\nBRACKET_CLOSE (%s)",yytext);}
{PARENTHESIS_O}     {printf("\nPARENTHESIS_O (%s)",yytext);}
{PARENTHESIS_C}     {printf("\nPARENTHESIS_C (%s)",yytext);}

{IF}                {printf("\nPalabra Reservada IF (%s)",yytext);}
{WHILE}             {printf("\nPalabra Reservada WHILE (%s)",yytext);}
{INTEGER}           {printf("\nPalabra Reservada INTEGER (%s)",yytext);}
{FLOAT}             {printf("\nPalabra Reservada FLOAT (%s)",yytext);}
{COUT}             {printf("\nPalabra Reservada COUT (%s)",yytext);}
{END_LINE}          {printf("\nPalabra Reservada END_LINE (%s)",yytext);}
{RETURN}          {printf("\nPalabra Reservada RETURN (%s)",yytext);}

{ID}                {printf("\nID (%s)",yytext);}

"\n"
"\t"
" "
.       yyerror();
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

int fn_rangeVerify(char*ptr){
    int value = atoi(ptr);
    if(value<-32768 || value > 32767){
        printf("Error fuera de rango",yytext);
        return yyerror();
    }
    return 0;
}

int yyerror(void){
    printf("\nCaracter invalido> %s",yytext);
    exit(1);
}









