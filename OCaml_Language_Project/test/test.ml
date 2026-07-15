open OCaml_Language_Project

let ae_equal a b = a = b
let pp_ae fmt v = 
  Format.pp_print_string fmt (Pretty.ae_to_string v)
let ae_testable = Alcotest.testable pp_ae ae_equal

let aeValue_equal a b = a = b
let pp_aeValue fmt v = 
  Format.pp_print_string fmt (Pretty.aeValue_to_string v)
let aeValue_testable = Alcotest.testable pp_aeValue aeValue_equal


let test_interp () = 
Alcotest.test_case "test name" `Quick (fun () ->
  Alcotest.check aeValue_testable "failure message" 
  (Eval.interp (Num {n = 5}) MtSub)
  (NumV {n = 5})
)

let test_compile () =
  let open Easy_syntax in
  Alcotest.test_case "Compile Currying" `Quick (fun () ->
  Alcotest.check ae_testable "Currying failed"
  (Desugar.compile (Parse.parse "{f 1 2}"))
  (app (app (id "f") (num 1)) (num 2))
)

let () =
  Alcotest.run "Pipeline tests" [
    "interp", [test_interp ()];
    "compile", [test_compile ()];
  ]