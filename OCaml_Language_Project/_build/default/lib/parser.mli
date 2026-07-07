
(* The type of tokens. *)

type token = 
  | WITH
  | RIGHT_BRACKET
  | PLUS
  | MINUS
  | LEFT_BRACKET
  | INT of (int)
  | IF0
  | ID of (string)
  | FUN
  | EOF

(* This exception is raised by the monolithic API functions. *)

exception Error

(* The monolithic API. *)

val prog: (Lexing.lexbuf -> token) -> Lexing.lexbuf -> (Syntax.sae option)
