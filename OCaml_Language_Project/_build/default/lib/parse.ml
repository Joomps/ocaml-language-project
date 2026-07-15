(* Parser *)
(* calls lexxer and parser *)

open Base
open Lexer

let parse s = 
  let lexbuf = Lexing.from_string s in
  match Parser.prog Lexer.read lexbuf with
  | Some e -> e
  | None -> failwith "Empty input"
  