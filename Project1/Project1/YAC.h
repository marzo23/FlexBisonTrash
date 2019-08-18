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
     BOOLEAN = 262,
     CHAR = 263,
     CLASS = 264,
     STRUCT = 265,
     FOR = 266,
     WHILE = 267,
     IF = 268,
     TRUE = 269,
     FALSE = 270,
     ID = 271,
     ENTERO = 272,
     DECIMAL = 273,
     CADENA = 274,
     CARACTER = 275,
     PARENTESISIZ = 276,
     PARENTESISDER = 277,
     LLAVEIZ = 278,
     LLAVEDER = 279,
     BRACKETIZ = 280,
     BRACKETDER = 281,
     COMA = 282,
     PUNTOCOMA = 283,
     IGUAL = 284,
     ASTERISCO = 285,
     DIAGONAL = 286,
     MAS = 287,
     MENOS = 288,
     PORCENTAJE = 289,
     EXCLAMACION = 290,
     IGUALDAD = 291,
     DIFERENTEDE = 292,
     MAYORQUE = 293,
     MENORQUE = 294,
     AND = 295,
     OR = 296
   };
#endif
/* Tokens.  */
#define INT 258
#define DOUBLE 259
#define FLOAT 260
#define STRING 261
#define BOOLEAN 262
#define CHAR 263
#define CLASS 264
#define STRUCT 265
#define FOR 266
#define WHILE 267
#define IF 268
#define TRUE 269
#define FALSE 270
#define ID 271
#define ENTERO 272
#define DECIMAL 273
#define CADENA 274
#define CARACTER 275
#define PARENTESISIZ 276
#define PARENTESISDER 277
#define LLAVEIZ 278
#define LLAVEDER 279
#define BRACKETIZ 280
#define BRACKETDER 281
#define COMA 282
#define PUNTOCOMA 283
#define IGUAL 284
#define ASTERISCO 285
#define DIAGONAL 286
#define MAS 287
#define MENOS 288
#define PORCENTAJE 289
#define EXCLAMACION 290
#define IGUALDAD 291
#define DIFERENTEDE 292
#define MAYORQUE 293
#define MENORQUE 294
#define AND 295
#define OR 296



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
