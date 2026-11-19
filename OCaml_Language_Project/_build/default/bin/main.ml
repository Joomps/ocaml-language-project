(* Get input, call each step of the pipeline *)

open OCaml_Language_Project

let () = 

let input_string = (*stdin*) in

try
  let parse_out = Parse.parse input_string in
  let desugar_out = Desugar.compile parse_out in
  let infer_out = Infer.infer desugar_out in
  let eval_out = Eval.eval desugar_out in
  Printf.printf "%s : %s\n" (Pretty.aeValue_to_string eval_out)
                            (Pretty.ty_to_string infer_out)
                             
with 
  | Lexer.SyntaxError msg Printf.eprintf "Error: %s\n" msg 
    exit 1
  | Parser.Error -> Printf.eprintf "Error: Parser error\n"
    exit 1
  | Failure msg -> Printf.eprintf "Error: %s\n" msg
    exit 1