# TP_TeoriaCompiladores
# 1. Describir el lenguaje de programación a utilizar, en caso de ser un lenguaje comercial, describir el alcance del mismo, es decir el subconjunto
El lenguaje de programación que se va a utilizar en el presente trabajo es C++. 
# 2. Describir los tokens y ejemplos de lexemas
A continuación se van a presentar los tokens utilizados en el Analizador Léxico. Cabe resaltar que este sirve para analizar programas de nivel tipo principiante (Programación 1).
## Palabras reservadas y parte de alguna librería
| token     | descripción        | lexema      |
|-----------|--------------------|-------------|
| COUT      |                    | _cout_      |
| IF        |                    | _if_        |
| WHILE     |                    | _while_     |
| INTEGER   |                    | _int_       |
| FLOAT     |                    | _float_     |
| END_LINE  |                    | _endl_      |
| RETURN    |                    | _return_    |
| USING     |                    | _using_     |
| NAMESPACE |                    | _namespace_ |
| PACCESS   |                    | _#include_  |
| BOOL      |                    | _bool_      |
| CHAR      |                    | _char_      |
| DO        |                    | _do_        |
| ELSE      |                    | _else_      |
| FOR       |                    | _for_       |
| NEW       |                    | _new_       |
| SHORT     |                    | _short_     |
| VOID      |                    | _void_      |

## Tipos de variables
| token      | descripción        | lexema             |
|------------|--------------------|--------------------|
| CONST_INT  |                    | 123456, 3, 654     |
| CONST_FLOAT|                    | 5.4, 456.45, 54.67 |
| STRING     |                    | "hola", "mundo"    |

## Operadores
| token      | descripción        | lexema |
|------------|--------------------|--------|
| OP_PLUS1   |                    | ++     |
| OP_SUM     |                    | +      |
| OP_SUB     |                    | -      |
| OP_MULT    |                    | *      |
| OP_DIV     |                    | /      |
| OP_EQ      |                    | =      |
| OP_HIGH    |                    | >      |
| OP_LOW     |                    | <      |
| OP_HIGHEQ  |                    | >=     |
| OP_LOWEQ   |                    | <=     |
| OP_COMP_EQ |                    | ==     |
| OP_DENIAL  |                    | !      |
| OP_DIF     |                    | !=     |
| OP_RES     |                    | %      |
| OP_AND     |                    | &&     |
| OP_OR      |                    | ||     |

## Ordenar código
| token          | descripción        | lexema |
|----------------|--------------------|--------|
| BRACKET_OPEN   |                    | {      |
| BRACKET_CLOSE  |                    | }      |
| PARENTHESIS_O  |                    | (      |
| PARENTHESIS_C  |                    | )      |
| END_SENTENCE   |                    | ;      |

## Librerias
| token     | descripción        | lexema                              |
|-----------|--------------------|-------------------------------------|
| LIBRARY   |                    | <iostream>, <math.h>, <conio.h>     |

# 3. Implementar el analizador léxico usando Flex
[Link al archivo](AnalizadorLexico.l)
# 4. Describir la gramática libre de contexto del lenguaje seleccionado.

# 5. Implementar el analizador sintáctico

# 6. Proporcionar por lo menos 10 ejemplos de programas válidos 