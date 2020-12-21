
(* The type of tokens. *)

type token = 
  | WHILE
  | VOID
  | TAB of (Minic.typ)
  | SEMI
  | RPAR
  | RHOOK
  | RETURN
  | RACC
  | PUTCHAR
  | PLUS
  | OR
  | NOT
  | NE
  | MOINS
  | MOD
  | LT
  | LPAR
  | LHOOK
  | LE
  | LACC
  | INT
  | IF
  | IDENT of (string)
  | GT
  | GE
  | FOR
  | FOIS
  | EQ
  | EOF
  | END
  | ELSE
  | EGAL
  | DIV
  | CST_B of (bool)
  | CST of (int)
  | COMMA
  | BOOL
  | AND

(* This exception is raised by the monolithic API functions. *)

exception Error

(* The monolithic API. *)

val prog: (Lexing.lexbuf -> token) -> Lexing.lexbuf -> (Minic.prog)
