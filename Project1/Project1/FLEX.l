%option noyywrap

%{
	#include <stdio.h>
	#include <stdlib.h>
	#include "YAC.h"
	void procesar(char* aux);
%}

%%
int {printf("INT"); return INT;}
double {printf("DOUBLE"); return DOUBLE;}
float {printf("FLOAT"); return FLOAT;}
string {printf("STRING"); return STRING;}
boolean {printf("BOOLEAN"); return BOOLEAN;}
char {printf("CHAR"); return CHAR;}
class {printf("CLASS"); return CLASS;}
struct {printf("STRUCT"); return STRUCT;}
for {printf("FOR"); return FOR;}
while {printf("WHILE"); return WHILE;}
if {printf("IF"); return IF;}
true {printf("TRUE"); return TRUE;}
false {printf("FALSE"); return FALSE;}
[A-Za-z_]+[A-Za-z_0-9]* {printf("ID"); procesar(yytext); return ID;}
[0-9]* {printf("ENTERO"); return ENTERO;}
[0-9|0]+"."[0-9|0]+ {printf("DECIMAL"); return DECIMAL;}
\".*\" {printf("CADENA"); return CADENA;}
"'"."'" {printf("CARACTER"); return CARACTER;}
"(" {printf("PARENTESISIZ"); return PARENTESISIZ;}
")" {printf("PARENTESISDER"); return PARENTESISDER;}
"{" {printf("LLAVEIZ"); return LLAVEIZ;}
"}" {printf("LLAVEDER"); return LLAVEDER;}
"[" {printf("BRACKETIZ"); return BRACKETIZ;}
"]" {printf("BRACKETDER"); return BRACKETDER;}
"," {printf("COMA"); return COMA;}
";" {printf("PUNTOCOMA"); return PUNTOCOMA;}
"=" {printf("IGUAL"); return IGUAL;}
"*" {printf("ASTERISCO"); return ASTERISCO;}
"/" {printf("DIAGONAL"); return DIAGONAL;}
"+" {printf("MAS"); return MAS;}
"-" {printf("MENOS"); return MENOS;}
"%" {printf("PORCENTAJE"); return PORCENTAJE;}
"!" {printf("EXCLAMACION"); return EXCLAMACION;}
"==" {printf("IGUALDAD"); return IGUALDAD;}
"!=" {printf("DIFERENTEDE"); return DIFERENTEDE;}
">" {printf("MAYORQUE"); return MAYORQUE;}
"<" {printf("MENORQUE"); return MENORQUE;}
"&&" {printf("AND"); return AND;}
"||" {printf("OR"); return OR;}
" " {}
\n	{printf("\n");}
\t	{}

%%