open OCaml_Language_Project

let ae_equal a b = a = b
let pp_ae fmt v = 
  Format.pp_print_string fmt (Pretty.ae_to_string v)
let ae_testable = Alcotest.testable pp_ae ae_equal

let aeValue_equal a b = a = b
let pp_aeValue fmt v = 
  Format.pp_print_string fmt (Pretty.aeValue_to_string v)
let aeValue_testable = Alcotest.testable pp_aeValue aeValue_equal


let test_interp () = [
Alcotest.test_case "test name" `Quick (fun () ->
  Alcotest.check aeValue_testable "failure message" 
  (Eval.interp (Num {n = 5}) MtSub)
  (NumV {n = 5})
)]

let test_compile () =
  let open Easy_syntax in
  [
  Alcotest.test_case "Currying 1" `Quick (fun () ->
  Alcotest.check ae_testable "Currying failed"
  (Desugar.compile (Parse.parse
  "{fun {x y} {{fun {a b} {- a b}} x y}}"))
  (func "x"
           (func "y"
                (app
                 (app
                  (func "a"
                       (func "b"
                            (sub (id "a") (id "b"))))
                  (id "x"))
                 (id "y"))))              
);
  Alcotest.test_case "Currying 2" `Quick (fun () ->
  Alcotest.check ae_testable "Currying failed"
  (Desugar.compile (Parse.parse "{f 1 2}"))
  (app (app (id "f") (num 1)) (num 2)) 
);
  Alcotest.test_case "Currying 3" `Quick (fun () ->
  Alcotest.check ae_testable "Currying failed"
  (Desugar.compile (Parse.parse "{fun {x y} {+ x y}}"))
  (func "x" (func "y" (add (id "x") (id "y"))))
);
  Alcotest.test_case "Nullary function" `Quick (fun () ->
  Alcotest.(check_raises "should fail" (Failure "nullary function") (fun () ->
    ignore (Parse.run "{fun {} 5}")
  ))
);
Alcotest.test_case "Nullary application" `Quick (fun () ->
  Alcotest.(check_raises "should fail" (Failure "nullary application") (fun () ->
    ignore (Parse.run "{{fun {x y z} {+ {+ x y} z}}}")
  ))
);]

let () =
  Alcotest.run "Pipeline tests" [
    "interp", test_interp ();
    "compile", test_compile ();
  ]