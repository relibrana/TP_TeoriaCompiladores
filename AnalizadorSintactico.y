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
%token L_SHIFT R_SHIFT CONST_INT CONST_FLOAT STRING OP_PLUS1 OP_SUM OP_SUB OP_SUB1
%token OP_MULT OP_DIV OP_EQ OP_HIGH OP_LOW OP_HIGHEQ OP_LOWEQ OP_COMP_EQ
%token OP_DENIAL OP_DIF OP_RES OP_AND OP_OR BRACKET_OPEN BRACKET_CLOSE PARENTHESIS_O
%token PARENTHESIS_C END_SENTENCE LIBRARY COUT CIN IF WHILE INTEGER FLOAT
%token END_LINE RETURN USING NAMESPACE PPACCESS BOOL CHAR DO ELSE FOR NEW SHORT 
%token STRUCT VOID SWITCH CASE BREAK ID CONTINUE

%%

declaration
	: type ID END_SENTENCE
	;

type
	: INTEGER
	| CHAR
	| FLOAT
	| VOID
	| BOOL
	| CHAR
	| SHORT
	;

names
	: ID
	| names CHAR_COMMA ID
	;

variable
	: ID
	| (OP_MULT)+ ID
	;

declarations
	: declarations declaration
	| declaration
	;

tail
	: statement
	| BRACKET_OPEN statements BRACKET_CLOSE
	;

if_statement
	: IF PARENTHESIS_O expression PARENTHESIS_C tail (ELSE IF PARENTHESIS_O expression PARENTHESIS_C tail)* (ELSE tail)?
	;

for_statement
	: FOR PARENTHESIS_O expression END_SENTENCE expression END_SENTENCE expression PARENTHESIS_C tail
	;

while_statement
	: WHILE PARENTHESIS_O expression PARENTHESIS_C tail
	;

constant
	: CONST_INT
	| CONST_FLOAT
	;

expression
	:expression OP_SUM expression
	| expression OP_SUB expression
	| expression OP_MULT expression
	| expression OP_DIV expression
	| expression OP_PLUS1
	| expression OP_SUB1
	| OP_PLUS1 expression
	| OP_SUB1 expression
	| expression OP_OR expression
	| expression OP_AND expression
	| OP_DENIAL expression
	| expression OP_COMP_EQ expression
	| expression OP_DIF expression
	| expression OP_HIGH expression
	| expression OP_LOW expression
	| expression OP_HIGHEQ expression
	| expression OP_LOWEQ expression
	| PARENTHESIS_O expression PARENTHESIS_C
	| variable
	| OP_SUB? constant
	;

assigment
	: variable OP_EQ expression END_SENTENCE
	; 

statement
	: if_statement
	| for_statement
	| while_statement
	| assigment
	| CONTINUE
	| BREAK
	| RETURN
	;

statements
	: statements statement
	| statement
	;



%%

int main() {
	yyparse();
	return 0;