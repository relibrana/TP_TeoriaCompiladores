%{

/* código C, importar scanner */
#include <math.h>
#include <ctype.h>
#include <stdio.h>

#define YYSTYPE double

int yylex();

int yyerror(char* s) {
	printf("%s\n", s);
}

%}

%token DIGIT CHAR_LETTER UNDERSCORE CHAR_POINT CHAR_COLON CHAR_COMMA
%token L_SHIFT R_SHIFT CONST_INT CONST_FLOAT STRING OP_PLUS1 OP_SUM OP_SUB
%token OP_MULT OP_DIV OP_EQ OP_HIGH OP_LOW OP_HIGHEQ OP_LOWEQ OP_COMP_EQ
%token OP_DENIAL OP_DIF OP_RES OP_AND OP_OR BRACKET_OPEN BRACKET_CLOSE PARENTHESIS_O
%token PARENTHESIS_C END_SENTENCE LIBRARY COUT CIN IF WHILE INTEGER FLOAT
%token END_LINE RETURN USING NAMESPACE PPACCESS BOOL CHAR DO ELSE FOR NEW SHORT 
%token STRUCT VOID SWITCH CASE BREAK ID

%%

input
	: /* empty */
	| input line
	;

line
	: '\n'
	| exp '\n'
	;

exp
	: LITNUM          {$$ = $1;}
	| exp exp OP_SUM   {$$ = $1 + $2;}
	| exp exp OP_SUB  {$$ = $1 - $2;}
	| exp exp OP_MULT  {$$ = $1 * $2;}
	| exp exp OP_DIV   {$$ = $1 / $2;}
	| exp exp OP_EQu
	;



%%

int main() {
	yyparse();
	return 0;