/* A Bison parser, made by GNU Bison 2.7.  */

/* Bison interface for Yacc-like parsers in C
   
      Copyright (C) 1984, 1989-1990, 2000-2012 Free Software Foundation, Inc.
   
   This program is free software: you can redistribute it and/or modify
   it under the terms of the GNU General Public License as published by
   the Free Software Foundation, either version 3 of the License, or
   (at your option) any later version.
   
   This program is distributed in the hope that it will be useful,
   but WITHOUT ANY WARRANTY; without even the implied warranty of
   MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
   GNU General Public License for more details.
   
   You should have received a copy of the GNU General Public License
   along with this program.  If not, see <http://www.gnu.org/licenses/>.  */

/* As a special exception, you may create a larger work that contains
   part or all of the Bison parser skeleton and distribute that work
   under terms of your choice, so long as that work isn't itself a
   parser generator using the skeleton or a modified version thereof
   as a parser skeleton.  Alternatively, if you modify or redistribute
   the parser skeleton itself, you may (at your option) remove this
   special exception, which will cause the skeleton and the resulting
   Bison output files to be licensed under the GNU General Public
   License without this special exception.
   
   This special exception was added by the Free Software Foundation in
   version 2.2 of Bison.  */

#ifndef YY_YY_YAC_H_INCLUDED
# define YY_YY_YAC_H_INCLUDED
/* Enabling traces.  */
#ifndef YYDEBUG
# define YYDEBUG 0
#endif
#if YYDEBUG
extern int yydebug;
#endif

/* Tokens.  */
#ifndef YYTOKENTYPE
# define YYTOKENTYPE
   /* Put the tokens into the symbol table, so that GDB and other debuggers
      know about them.  */
   enum yytokentype {
     INT = 258,
     DOUBLE = 259,
     FLOAT = 260,
     STRING = 261,
     VOID = 262,
     BOOLEAN = 263,
     CHAR = 264,
     CLASS = 265,
     STRUCT = 266,
     FOR = 267,
     WHILE = 268,
     IF = 269,
     TRUE = 270,
     FALSE = 271,
     ID = 272,
     ENTERO = 273,
     DECIMAL = 274,
     CADENA = 275,
     CARACTER = 276,
     PARENTESISIZ = 277,
     PARENTESISDER = 278,
     LLAVEIZ = 279,
     LLAVEDER = 280,
     BRACKETIZ = 281,
     BRACKETDER = 282,
     COMA = 283,
     PUNTOCOMA = 284,
     IGUAL = 285,
     ASTERISCO = 286,
     DIAGONAL = 287,
     MAS = 288,
     MENOS = 289,
     PORCENTAJE = 290,
     EXCLAMACION = 291,
     IGUALDAD = 292,
     DIFERENTEDE = 293,
     MAYORQUE = 294,
     MENORQUE = 295,
     AND = 296,
     OR = 297,
     INCLUDE = 298,
     GATO = 299
   };
#endif
/* Tokens.  */
#define INT 258
#define DOUBLE 259
#define FLOAT 260
#define STRING 261
#define VOID 262
#define BOOLEAN 263
#define CHAR 264
#define CLASS 265
#define STRUCT 266
#define FOR 267
#define WHILE 268
#define IF 269
#define TRUE 270
#define FALSE 271
#define ID 272
#define ENTERO 273
#define DECIMAL 274
#define CADENA 275
#define CARACTER 276
#define PARENTESISIZ 277
#define PARENTESISDER 278
#define LLAVEIZ 279
#define LLAVEDER 280
#define BRACKETIZ 281
#define BRACKETDER 282
#define COMA 283
#define PUNTOCOMA 284
#define IGUAL 285
#define ASTERISCO 286
#define DIAGONAL 287
#define MAS 288
#define MENOS 289
#define PORCENTAJE 290
#define EXCLAMACION 291
#define IGUALDAD 292
#define DIFERENTEDE 293
#define MAYORQUE 294
#define MENORQUE 295
#define AND 296
#define OR 297
#define INCLUDE 298
#define GATO 299



#if ! defined YYSTYPE && ! defined YYSTYPE_IS_DECLARED
typedef int YYSTYPE;
# define YYSTYPE_IS_TRIVIAL 1
# define yystype YYSTYPE /* obsolescent; will be withdrawn */
# define YYSTYPE_IS_DECLARED 1
#endif

extern YYSTYPE yylval;

#ifdef YYPARSE_PARAM
#if defined __STDC__ || defined __cplusplus
int yyparse (void *YYPARSE_PARAM);
#else
int yyparse ();
#endif
#else /* ! YYPARSE_PARAM */
#if defined __STDC__ || defined __cplusplus
int yyparse (void);
#else
int yyparse ();
#endif
#endif /* ! YYPARSE_PARAM */

#endif /* !YY_YY_YAC_H_INCLUDED  */
