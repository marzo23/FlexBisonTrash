%%
int {printf("entero");}
double {printf("doble");}
float {printf("flotante");}
string {printf("cadena");}
boolean {printf("booleano");}
char {printf("caracter");}
class {printf("clase");}
struct {printf("estructura");}
for {printf("for :v");}
while {printf("mientras");}
if {printf("si");}
switch {printf("switch :v");}
case {printf("caso");}
[A-Za-z_]+[A-Za-z_0-9]* {printf("ID");}
[0-9]* {printf("entero");}
[0-9|0]+"."[0-9|0]+ {printf("float");}
\".*\" {printf("string");}
"[""]" {printf("array");}
"(" {printf("parentesis iz");}
")" {printf("parentesis der");}
"," {printf("coma");}
"," {printf("puntoYcoma");}
"=" {printf("igual");}
"*" {printf("asterisco");}
"/" {printf("diagonal");}
"+" {printf("mas");}
"-" {printf("menos");}
"%" {printf("porcentaje");}
"!" {printf("exclamación");}
"==" {printf("igualdad");}
"!=" {printf("diferente de");}
">" {printf("mayor que");}
">=" {printf("mayor o igual que");}
"<" {printf("menor que");}
"<=" {printf("menor o igual que");}
" " {printf("espacio");}
%%

int yywrap() {
return 1;
} 
 
int main() {
yylex();
return 0;
}