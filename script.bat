@echo off
C:\GnuWin32\bin\flex CompiladorLexico.l 
pause
c:\MinGW\bin\gcc.exe lex.yy.c -o Compilado.exe 
pause
Compilado.exe PRUEBA.txt
del lex.yyc
del Compilado.exe
pause