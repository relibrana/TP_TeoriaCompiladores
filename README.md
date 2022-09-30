# TP_TeoriaCompiladores
## 1. Describir el lenguaje de programación a utilizar, en caso de ser un lenguaje comercial, describir el alcance del mismo, es decir el subconjunto
Para el presente trabajo se va a realizar un analizador léxico y sintáctico para el Lenguaje de Programación C++. Este es un lenguaje bastante amplio: cuenta con 32 palabras claves heredadas de C más 31 palabras claves del mismo, tiene la Librería Estándar C++ que cuenta con 32 ficheros, entre otras cosas. 
Por simplicidad y poder poner en practica lo aprendido en clase se ha decidido tener como referencia algunos ejercicios realizados en el curso de "Programación 1". Por lo que el alcance de nuestros analizadores sería el siguiente:
* Se tomara en cuenta el fichero < iostream > para el reconocimiento y lectura de sus objetos (ej. cout, cin). Se utiliza para entrada y salida de objetos.
* Se consideraran 14 palabras claves de C y 4 de C++ para los tokens.

## 2. Describir los tokens y ejemplos de lexemas
A continuación se van a presentar los tokens utilizados en el Analizador Léxico. Cabe resaltar que este sirve para analizar programas de nivel tipo principiante.

### Identificador
| token     | descripción                                           | lexema        |
|-----------|-------------------------------------------------------|---------------|
| ID        | Una letra seguida de una letra, un número o un guión  | a, cont, aux_ |

### Palabras reservadas y parte de el fichero < iostream >
| token     | descripción                                        | lexema      |
|-----------|----------------------------------------------------|-------------|
| COUT      | Caracteres 'c','o','u','t'                         | _cout_      |
| CIN       | Caracteres 'c','i','n'                             | _cout_      |
| IF        | Caracteres 'i','f'                                 | _if_        |
| WHILE     | Caracteres 'w','h','i','l','e'                     | _while_     |
| INTEGER   | Caracteres 'i','n','t'                             | _int_       |
| FLOAT     | Caracteres 'f','l','o','a','t'                     | _float_     |
| END_LINE  | Caracteres 'e','n','d','l'                         | _endl_      |
| RETURN    | Caracteres 'r','e','t','u','r','n'                 | _return_    |
| USING     | Caracteres 'u','s','i','n','g'                     | _using_     |
| NAMESPACE | Caracteres 'n','a','m','e','s','p','a','c','e'     | _namespace_ |
| PACCESS   | Caracteres '#','i','n','c','l','u','d','e'         | _#include_  |
| BOOL      | Caracteres 'b','o','o','l'                         | _bool_      |
| CHAR      | Caracteres 'c','h','a','r'                         | _char_      |
| DO        | Caracteres 'd','o'                                 | _do_        |
| ELSE      | Caracteres 'e','l','s','e'                         | _else_      |
| FOR       | Caracteres 'f','o','r'                             | _for_       |
| NEW       | Caracteres 'n','e','w'                             | _new_       |
| SHORT     | Caracteres 's','h','o','r',t'                      | _short_     |
| VOID      | Caracteres 'v','o','i','d'                         | _void_      |
| SWITCH    | Caracteres 's','w','i','t',c','h'                  | _switch_    |
| CASE      | Caracteres 'c','a','s','e'                         | _case_      |

### Tipos de variables
| token      | descripción                                      | lexema                        |
|------------|--------------------------------------------------|-------------------------------|
| CONST_INT  | Número entero entre -2147483648 y 2147483647     | 123456, 3, 654                |
| CONST_FLOAT| Número decimal entre -2147483648 y 2147483647    | 5.4, 456.45, 54.67            |
| STRING     | Cadena de caracteres (letras o números)          | "hola", "mundo", "hola mundo" |

### Operadores
| token      | lexema |
|------------|--------|
| OP_PLUS1   | ++     |
| OP_SUM     | +      |
| OP_SUB     | -      |
| OP_MULT    | *      |
| OP_DIV     | /      |
| OP_EQ      | =      |
| OP_HIGH    | >      |
| OP_LOW     | <      |
| OP_HIGHEQ  | >=     |
| OP_LOWEQ   | <=     |
| OP_COMP_EQ | ==     |
| OP_DENIAL  | !      |
| OP_DIF     | !=     |
| OP_RES     | %      |
| OP_AND     | &&     |
| OP_OR      | ||     |

### Código
| token          | lexema |
|----------------|--------|
| BRACKET_OPEN   | {      |
| BRACKET_CLOSE  | }      |
| PARENTHESIS_O  | (      |
| PARENTHESIS_C  | )      |
| END_SENTENCE   | ;      |
| BRACKET_OPEN   | {      |
| BRACKET_CLOSE  | }      |
| COMMENT        | //     |
| UNDERSCORE     | _      |
| CHAR_COMMA     | ,      |
| CHAR_POINT     | .      |
| CHAR_COLON     | :      |
| L_SHIFT        | <<     |
| R_SHIFT        | >>     |

### Librerias
| token     | descripción                | lexema                              |
|-----------|----------------------------|-------------------------------------|
| LIBRARY   | Librerias incluidas en C++ | < iostream >, <math.h>, <conio.h>     |

## 3. Implementar el analizador léxico usando Flex
[Analizador Lexico](AnalizadorLexico.l)

## 4. Describir la gramática libre de contexto del lenguaje seleccionado.

## 5. Implementar el analizador sintáctico

## 6. Proporcionar por lo menos 10 ejemplos de programas válidos 
- [Ejemplo 1](prueba1.cpp)  
- [Ejemplo 2](prueba2.cpp)  
- [Ejemplo 3](prueba3.cpp)  
- [Ejemplo 4](prueba4.cpp)  
- [Ejemplo 5](prueba5.cpp)  
- [Ejemplo 6](prueba6.cpp)  
- [Ejemplo 7](prueba7.cpp)  
- [Ejemplo 8](prueba8.cpp)  
- [Ejemplo 9](prueba9.cpp)  
- [Ejemplo 10](prueba10.cpp)  
