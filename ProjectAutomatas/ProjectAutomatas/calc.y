%{
	#include "FLEX.h"
	#include <stdio.h>
	#include <stdlib.h>
	
	void reporte();
	void imprimir();


	char * var[1000];
	int i = 0;

	
	int entero = 0;
	int doble = 0;
	int caracter = 0;
	int cadena = 0;
	int booleano = 0;
	int flotante = 0;
	int funcion = 0;
	int condicionIf = 0;
	int cicloWhile = 0;
	int cicloFor = 0;

%}

%token INT
%token DOUBLE
%token FLOAT
%token STRING
%token VOID
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
			| ASIGNACION
			| error PUNTOCOMA
			| 
			;

VARIABLE	: INT {entero++;}
			| DOUBLE {doble++;}
			| FLOAT {flotante++;}
			| STRING {cadena++;}
			| CHAR {caracter++;}
			| VOID
			| BOOLEAN {booleano++;}
			;

FUNCIONES	: VARIABLE ID PARENTESISIZ PARENTESISDER  {printf("FUNCION"); funcion++;}
			| VARIABLE ID PARENTESISIZ VARIABLE ID PARAMETROS PARENTESISDER  {printf("FUNCION"); funcion++;}
			| ID PARENTESISIZ ID PARAMETROS PARENTESISDER  PUNTOCOMA{printf("FUNCION2");}
			| ID PARENTESISIZ PARENTESISDER  PUNTOCOMA{printf("FUNCION2");}
			;

DECLARACION : VARIABLE BRACKETIZ BRACKETDER ID VAR PUNTOCOMA {printf("DECLARACION");}
			| INT ID VAR PUNTOCOMA {printf("DECLARACION"); entero++;}
			| DOUBLE ID VAR PUNTOCOMA {printf("DECLARACION"); doble++;}
			| FLOAT ID VAR PUNTOCOMA {printf("DECLARACION"); flotante++;}
			| STRING ID VAR PUNTOCOMA {printf("DECLARACION"); cadena++;}
			| CHAR ID VAR PUNTOCOMA {printf("DECLARACION"); caracter++;}
			| VOID ID VAR PUNTOCOMA {printf("DECLARACION");}
			| BOOLEAN ID VAR PUNTOCOMA {printf("DECLARACION"); booleano++;}
			| INT ID IGUAL ENTERO PUNTOCOMA {printf("DECLARACION"); entero++;}
			| INT ID IGUAL EXPARIT PUNTOCOMA {printf("DECLARACION"); entero++;}
			| DOUBLE ID IGUAL DECIMAL PUNTOCOMA {printf("DECLARACION"); doble++;}
			| FLOAT ID IGUAL DECIMAL PUNTOCOMA {printf("DECLARACION"); flotante++;}
			| STRING ID IGUAL CADENA PUNTOCOMA {printf("DECLARACION"); cadena++;}
			| CHAR ID IGUAL CARACTER PUNTOCOMA {printf("DECLARACION"); caracter++;}
			| BOOLEAN ID IGUAL BOOL PUNTOCOMA {printf("DECLARACION"); booleano++;}
			;

ASIGNACION	: ID IGUAL ENTERO PUNTOCOMA {printf("DECLARACION");}
			| ID IGUAL EXPARIT PUNTOCOMA {printf("DECLARACION");}
			| ID IGUAL DECIMAL PUNTOCOMA {printf("DECLARACION");}
			| ID IGUAL CADENA PUNTOCOMA {printf("DECLARACION");}
			| ID IGUAL CARACTER PUNTOCOMA {printf("DECLARACION");}
			| ID IGUAL BOOL PUNTOCOMA {printf("DECLARACION");}
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


IFYCICLO	: IF PARENTESISIZ CONDICION PARENTESISDER {printf(" IF!!! "); condicionIf++;}
			| WHILE PARENTESISIZ CONDICION PARENTESISDER {printf(" WHILE!!! "); cicloWhile++;}
			| FOR PARENTESISIZ INT ID IGUAL ENTERO PUNTOCOMA CONDICION PUNTOCOMA ID MAS MAS PARENTESISDER {printf(" FOR!!! "); cicloFor++;}
			;


%% 

int main()
{
	yyparse();
	imprimir();
	reporte();
	
	system("pause");
	return 1;
} 
 
int yyerror(char *s)
{
	printf("%s\n",s);
} 

void procesar(char* aux){
	var[i] = (char *)malloc(strlen(aux));
	strcpy(var[i], aux);
	i++;
}

void imprimir(){
	for(int j = 0; j<i; j++){
		printf("var %s \n", var[j]);
	}
}

void reporte() {
	i++;


	int FIRMA =	(entero * 1) + (doble * 2) + (caracter * 3) + (cadena * 4) + (booleano * 5) + (flotante * 6) + (funcion * 7) + (condicionIf * 8) + (cicloWhile * 9) + (cicloFor * 10);

	//printf("\n\nFIRMA DEL PROGRAMA: %i", FIRMA);
	printf("FIRMA DEL PROGRAMA: %i \n\nCantidad de enteros: %i \nCantidad de double: %i \nCantidad de float: %i \nCantidad de char: %i \nCantidad de string: %i \nCantidad de boolean: %i \nCantidad de funciones: %i \nCantidad de if: %i \nCantidad de while: %i \nCantidad de for: %i \n", FIRMA, entero, doble, flotante, caracter, cadena, booleano, funcion, condicionIf, cicloWhile, cicloFor);


	int j2 = 0;
	int *auxInt = malloc(i);
	char ** auxChar= (char**)malloc(i);
	printf("  I:: %i long aux %i, int %i",i, sizeof(auxChar)/sizeof(char **), sizeof(auxInt)/sizeof(int*));
	for (int j = 0; j<i; j++) {
		printf("entra j%i",j);
		if (strcmp(var[j], "0") != 0 && strcmp(var[j], "") != 0) {
		printf("entra if");
			
			auxInt[j2] = 1;
		printf("desp");
			auxChar[j2] = (char *)malloc(strlen(var[j]));
			strcpy(auxChar[j2], var[j]);
		printf("desp 2");

			for (int k = j + 1; k<i; k++){
				printf("entra for %i",k);
				if (strcmp(var[j], var[k]) == 0) {
					auxInt[j2]++;
					var[k] = "0";
				}
			}
			j2++;
		}
	}

	for (int k = 0; k < j2; k++)
	{
		printf("Variable: %s , Cantidad: %i \n", auxChar[i], auxInt[i]);
	}
}