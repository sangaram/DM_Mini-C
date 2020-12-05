
(* The type of tokens. *)

type token = 
  | WHILE
  | VOID
  | SEMI
  | RPAR
  | RETURN
  | RACC
  | PUTCHAR
  | PLUS
  | LT
  | LPAR
  | LACC
  | INT
  | IF
  | IDENT of (string)
  | FOIS
  | EOF
  | ELSE
  | EGAL
  | CST_B of (bool)
  | CST of (int)
  | COMMA
  | BOOL

(* This exception is raised by the monolithic API functions. *)

exception Error

(* The monolithic API. *)

val prog: (Lexing.lexbuf -> token) -> Lexing.lexbuf -> (Minic.prog)
