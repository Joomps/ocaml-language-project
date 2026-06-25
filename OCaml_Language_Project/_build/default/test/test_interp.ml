open OCaml_Language_Project
open Syntax

let aeValue_equal a b = a = b
let pp_aeValue fmt v = 
  let open Pretty in
  Format.pp_print_string fmt (aeValue_to_string v)
let aeValue_testable = Alcotest.testable pp_aeValue aeValue_equal


let test_interp () = 
let open Eval in
Alcotest.test_case "test name" `Quick (fun () ->
  Alcotest.check aeValue_testable "failure message" 
  (interp (Num {n = 5}) MtSub)
  (NumV {n = 2})
)

let () =
  Alcotest.run "Interpreter" [
    "interp", [ test_interp () ];
  ]