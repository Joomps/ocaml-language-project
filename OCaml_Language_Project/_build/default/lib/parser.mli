
(* The type of tokens. *)

type token = 
  | WITH
  | TRUE
  | RIGHT_BRACKET
  | PLUS
  | MINUS
  | LET
  | LEFT_BRACKET
  | INT of (int)
  | IFB
  | IF0
  | ID of (string)
  | FUN
  | FALSE
  | EOF

(* This exception is raised by the monolithic API functions. *)

exception Error

(* The monolithic API. *)

val prog: (Lexing.lexbuf -> token) -> Lexing.lexbuf -> (Syntax.sae option)
