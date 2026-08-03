(* Get input, call each step of the pipeline *)

open OCaml_Language_Project

let () = 
let result = Parse.run_typed "{fun {x} {let {y x} {+ y 1}}}" in
print_endline result
