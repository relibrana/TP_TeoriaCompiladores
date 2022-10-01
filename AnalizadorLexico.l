%{
enum Token{
  
    DIGIT, CHAR_LETTER, UNDERSCORE, CHAR_POINT, CHAR_COLON,CHAR_COMMA, 
    L_SHIFT,R_SHIFT, CONST_INT,CONST_FLOAT,STRING,OP_PLUS1,OP_SUM,OP_SUB, OP_SUB1
    OP_MULT, OP_DIV, OP_EQ, OP_HIGH, OP_LOW,OP_HIGHEQ, OP_LOWEQ, OP_COMP_EQ,
    OP_DENIAL,OP_DIF,OP_RES,OP_AND,OP_OR,BRACKET_OPEN,BRACKET_CLOSE,PARENTHESIS_O,
    PARENTHESIS_C,END_SENTENCE,LIBRARY,COUT,CIN,IF,WHILE,INTEGER,FLOAT,
    END_LINE,RETURN,USING,NAMESPACE,PPACCESS,BOOL,CHAR,DO,ELSE,FOR,NEW,SHORT,
    STRUCT,VOID,SWITCH,CASE,BREAK,ID, CONTINUE
};
    FILE *yyin;
%}

%option noyywrap
%option yylineno

DIGIT           [0-9]
CHAR_LETTER     [a-zA-Z]
COMMENT         "//"([^\n]*\")
UNDERSCORE      ["_"]
CHAR_POINT      ["."]
CHAR_COLON      [":"]

CONST_INT     (-?[1-9]{0,4})|0
CONST_FLOAT   {DIGIT}{0,8}{CHAR_POINT}{DIGIT}{1,8}
STRING  \"[^\n"]*\"

LIBRARY         (<{CHAR_LETTER}+({CHAR_POINT}|{CHAR_LETTER}+){CHAR_LETTER}+>)


ID            ({CHAR_LETTER}|{UNDERSCORE})({CHAR_LETTER}|{DIGIT}|{UNDERSCORE})*

%%

{COMMENT}       {return COMMENT;}
";"             {return END_SENTENCE;}
{LIBRARY}       {return LIBRARY;}
"#include"      {return INCLUDE;}


"++"       {return OP_PLUS1;}
"--"       {return OP_SUB1;}
"+"        {return OP_SUM;}
"-"        {return OP_SUB ;}
"*"        {return OP_MULT;}
"/"        {return OP_DIV ;}
"="        {return OP_EQ;}
">"        {return OP_HIGH;}
"<"        {return OP_LOW ;}
">="       {return OP_HIGHEQ ;}
"<="       {return OP_LOWEQ;}
"=="       {return OP_COMP_EQ ;}
"!"        {return OP_DENIAL;}
"!="       {return OP_DIF;}
"%"        {return OP_RES ;}
"&&"       {return OP_AND;}
"||"       {return OP_OR;}


","            {return CHAR_COMMA; }
{CONST_INT}    {return CONST_INT ;}
{CONST_FLOAT}  {return CONST_FLOAT;}
{STRING}       {return STRING;}
"<<"           {return L_SHIFT;}
">>"           {return R_SHIFT;}




"{"      {return BRACKET_OPEN;}
"}"     {return BRACKET_CLOSE;}
"("     {return PARENTHESIS_O;}
")"     {return PARENTHESIS_C;}


"using"           {return USING ;}
"namespace"       {return NAMESPACE;}
"cout"            {return COUT;}
"cin"             {return CIN;}
"if"              {return IF;}
"while"           {return WHILE;}
"int"             {return INTEGER;}
"float"           {return FLOAT;}
"endl"            {return END_LINE;}
"return"          {return RETURN ;}
"bool"            {return BOOL;}
"char"            {return CHAR;}
"do"              {return DO;}
"else"            {return ELSE;}
"for"             {return FOR;}
"new"             {return NEW;}
"short"           {return SHORT;}
"struct"          {return STRUCT;}
"void"            {return VOID;}
"switch"          {return SWITCH;}
"case"            {return CASE;}
"break"           {return BREAK;}
"continue"        {return CONTINUE;}


{ID}              {return ID;}

[ \n\r\t]         {}
.                 {return -1;}
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













