(* Parser *)
(* calls lexxer and parser *)

open Base
open Lexer

let parse s = 
  let lexbuf = Lexing.from_string s in
  match Parser.prog Lexer.read lexbuf with
  | Some e -> e
  | None -> failwith "Empty input"

let run s = 
  s |> parse |> Desugar.compile |> Eval.interp_expr

let run_typed s = 
  s |> parse |> Desugar.compile |> Infer.type_check_expr