%{
	#include "FLEX.h"
	#include <stdio.h>
	#include <stdlib.h>
	#include <string.h>

	int printTotal();
	char * auxi;
	char * total[1000];
	int i = 0;
%}

%token INT
%token DOUBLE
%token FLOAT
%token STRING
%token BOOLEAN
%token CHAR
%token CLASS
%token STRUCT
%token FOR
%token WHILE
%token IF
%token TRUE
%token FALSE
%token ID
%token ENTERO
%token DECIMAL
%token CADENA
%token CARACTER
%token PARENTESISIZ
%token PARENTESISDER
%token LLAVEIZ
%token LLAVEDER
%token BRACKETIZ
%token BRACKETDER
%token COMA
%token PUNTOCOMA
%token IGUAL
%token ASTERISCO
%token DIAGONAL
%token MAS
%token MENOS
%token PORCENTAJE
%token EXCLAMACION
%token IGUALDAD
%token DIFERENTEDE
%token MAYORQUE
%token MENORQUE
%token AND
%token OR
%start S
%%

S:			|INICIOS S;

INICIOS		: FUNCIONES 
			| IFYCICLO
			| DECLARACION
			| error PUNTOCOMA
			| 
			;

VARIABLE	: INT
			| DOUBLE 
			| FLOAT 
			| STRING 
			| CHAR 
			| BOOLEAN
			;

FUNCIONES	: VARIABLE ID PARENTESISIZ PARENTESISDER  {printf("FUNCION");}
			| VARIABLE ID PARENTESISIZ VARIABLE ID PARAMETROS PARENTESISDER  {printf("FUNCION");}
			| VARIABLE ID PARENTESISIZ ID PARAMETROS PARENTESISDER  {printf("FUNCION2");}
			;

DECLARACION : VARIABLE ID VAR PUNTOCOMA {printf("DECLARACION");}
			| VARIABLE BRACKETIZ BRACKETDER ID VAR PUNTOCOMA {printf("DECLARACION");}
			| INT ID IGUAL ENTERO PUNTOCOMA {printf("DECLARACION %s",auxi);}
			| INT ID IGUAL EXPARIT PUNTOCOMA {printf("DECLARACION");}
			| DOUBLE ID IGUAL DECIMAL PUNTOCOMA {printf("DECLARACION");}
			| FLOAT ID IGUAL DECIMAL PUNTOCOMA {printf("DECLARACION");}
			| STRING ID IGUAL CADENA PUNTOCOMA {printf("DECLARACION");}
			| CHAR ID IGUAL CARACTER PUNTOCOMA {printf("DECLARACION");}
			| BOOLEAN ID IGUAL BOOL PUNTOCOMA {printf("DECLARACION");}
			;

BOOL		: TRUE | FALSE
			;

PARAMETROS	: 
			| COMA VARIABLE ID PARAMETROS 
			| COMA ID PARAMETROS 
			;

VAR			:
			| COMA ID VAR
			;

OPERACION	: MAS 
			| MENOS 
			| ASTERISCO 
			| DIAGONAL 
			| PORCENTAJE
			;

EXPARIT		: NUMERO OPERACION EXPARIT
			| ID OPERACION EXPARIT
			| ID
			| NUMERO 
			;

NUMERO		: 
			| ENTERO 
			| DECIMAL
			;

CONDICIONES	: MAYORQUE
			| MENORQUE
			| IGUALDAD
			| DIFERENTEDE
			| MAYORQUE IGUAL
			| MENORQUE IGUAL
			;

OPERADORBOOL : AND | OR ;

CONDAUX		:
			| OPERADORBOOL CONDICION
			;

CONDICION	: ID CONDICIONES NUMERO CONDAUX
			| ID CONDICIONES ID CONDAUX
			| NUMERO CONDICIONES NUMERO CONDAUX
			| NUMERO CONDICIONES ID CONDAUX
			| ID CONDAUX
			| EXCLAMACION ID CONDAUX
			;


IFYCICLO	: IF PARENTESISIZ CONDICION PARENTESISDER {printf(" IF!!! ");}
			| WHILE PARENTESISIZ CONDICION PARENTESISDER {printf(" WHILE!!! ");}
			| FOR PARENTESISIZ INT ID IGUAL ENTERO PUNTOCOMA CONDICION PUNTOCOMA ID MAS MAS PARENTESISDER {printf(" FOR!!! ");}
			;


%% 

int main()
{
	yyparse();
	printTotal();
	system("pause");
	return 1;
}
 
int yyerror(char *s)
{
	printf("%s\n",s);
} 

void procesar(char* aux){
	auxi = aux;
	return 0;
}

void printTotal (){
	int j = 0;
	while(total[j]!=NULL){
		printf("var %s \n", total[j]);
		j++;
	}
}
