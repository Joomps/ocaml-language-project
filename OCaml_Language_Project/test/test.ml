open OCaml_Language_Project


let ae_equal a b = a = b
let pp_ae fmt v = 
  Format.pp_print_string fmt (Pretty.ae_to_string v)
let ae_testable = Alcotest.testable pp_ae ae_equal

let aeValue_equal a b = a = b
let pp_aeValue fmt v = 
  Format.pp_print_string fmt (Pretty.aeValue_to_string v)
let aeValue_testable = Alcotest.testable pp_aeValue aeValue_equal

let ty_equal a b = a = b
let pp_ty fmt v = 
  Format.pp_print_string fmt (Pretty.ty_to_string v)
let ty_testable = Alcotest.testable pp_ty ty_equal




let test_interp () = [
  Alcotest.test_case "Num" `Quick (fun () ->
  Alcotest.check Alcotest.string "Num failed" 
  (Eval.interp_expr (Num {n = 5}))
  "5"
);
  Alcotest.test_case "If0 1" `Quick (fun () ->
  Alcotest.check Alcotest.string "If0 failed" 
  (Parse.run "{if0 0
                   0
                   1}")
  "0"
);
  Alcotest.test_case "If0 2" `Quick (fun () ->
  Alcotest.check Alcotest.string "If0 failed" 
  (Parse.run "{if0 1
                   0
                   1}")
  "1"
);
  Alcotest.test_case "If0 3" `Quick (fun () ->
  Alcotest.check Alcotest.string "If0 failed" 
  (Parse.run "{if0 {{fun {x} x} 5}
                   0
                   1}")
  "1"
);
  Alcotest.test_case "Currying" `Quick (fun () ->
  Alcotest.check Alcotest.string "Currying failed" 
  (Parse.run "{{fun {x y z} {+ {- x y} z}} 5 3 2}")
  "4"
);
  Alcotest.test_case "With" `Quick (fun () ->
  Alcotest.check Alcotest.string "With failed" 
  (Parse.run "{+ 2 {with {x 3} {+ x 2}}}")
  "7"
);
Alcotest.test_case "Let" `Quick (fun () ->
  Alcotest.check Alcotest.string "Let failed" 
  (Parse.run "{+ 2 {let {x 3} {+ x 2}}}")
  "7"
);
  Alcotest.test_case "With and Currying 1" `Quick (fun () ->
  Alcotest.check Alcotest.string "With and Currying failed" 
  (Parse.run "{with {x 0}
                    {{fun {a b c}
                          {if0 x
                              {+ {+ a b} c}
                              9}}
                    1 2 3}}")
  "6"
);
  Alcotest.test_case "With and Currying 2" `Quick (fun () ->
  Alcotest.check Alcotest.string "With and Currying failed" 
  (Parse.run "{with {x 5}
                    {{fun {a b c}
                          {if0 x
                              {+ {+ a b} c}
                              9}}
                    1 2 3}}")
  "9"
);
]

let test_compile () =
  let open Easy_syntax in [
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
  Alcotest.test_case "Currying 4" `Quick (fun () ->
  Alcotest.check ae_testable "Currying failed"
  (Desugar.compile (Parse.parse "{{fun {x y z} {+ {- x y} z}} 5 3 2}"))
  (app (app (app
             (func "x" (func "y" (func "z" (add (sub (id "x") (id "y")) (id "z")))))
             (num 5)) (num 3)) (num 2))
);
  Alcotest.test_case "With" `Quick (fun () ->
  Alcotest.check ae_testable "With failed"
  (Desugar.compile (Parse.parse "{with {x 3} {with {y 2} {+ x y}}}"))
  (app (func "x" (app (func "y" (add (id "x") (id "y")))
                      (num 2)))
       (num 3))
);
  Alcotest.test_case "With and Currying" `Quick (fun () ->
  Alcotest.check ae_testable "With and Currying failed"
  (Desugar.compile (Parse.parse "{with {x 0}
                                       {{fun {a b c}
                                             {if0 x
                                                  {+ {+ a b} c}
                                                  9}}
                                        1 2 3}}"))
  (app (func "x"
           (app
            (app
             (app
              (func "a"
                   (func "b"
                        (func "c"
                             (if0 (id "x")
                                  (add (add (id "a") (id "b")) (id "c"))
                                  (num 9)))))
              (num 1))(num 2))(num 3)))
      (num 0))
);
]

let test_type_check () = [
 Alcotest.test_case "TNum" `Quick (fun () ->
  Alcotest.check Alcotest.string "Num failed" 
  (Parse.run_typed "{+ 1 2}")
  "Num"
);
 Alcotest.test_case "Unification" `Quick (fun () ->
  Alcotest.check Alcotest.string "Unification failed" 
  (Parse.run_typed "{fun {x} {+ x 1}}")
  "(Num  ->  Num)"
);
Alcotest.test_case "Let generalization 1" `Quick (fun () ->
  Alcotest.check Alcotest.string "Let failed" 
  (Parse.run_typed "{let {f {fun {x} x}} {f 1}}")
  "Num"
);
Alcotest.test_case "Let generalization 2" `Quick (fun () ->
  Alcotest.check Alcotest.string "Let failed" 
  (Parse.run_typed "{let {x {fun {y} y}} {+ {x 1} {x 1}}}")
  "Num"
);
Alcotest.test_case "Let generalization 3" `Quick (fun () ->
  Alcotest.check Alcotest.string "Let failed" 
  (Parse.run_typed "{let {f {fun {x} x}} {let {g {fun {y} {f y}}} {g 1}}}")
  "Num"
);
Alcotest.test_case "Let generalization 4" `Quick (fun () ->
  Alcotest.check Alcotest.string "Let failed" 
  (Parse.run_typed "{let {f {fun {x} x}} {ifb {f true} {f 1} {f 2}}}")
  "Num"
);
Alcotest.test_case "Let generalization 5" `Quick (fun () ->
  Alcotest.check Alcotest.string "Let failed" 
  (Parse.run_typed "{let {f {fun {x} x}} {ifb {f true} {f 1} {f 2}}}")
  "Num"
);
Alcotest.test_case "With" `Quick (fun () ->
  Alcotest.check Alcotest.string "With failed" 
  (Parse.run_typed "{with {x 5}              
                          {{fun {a b c}
                                {if0 x
                                    {+ {+ a b} c}
                                    9}}
                           1 2 3}}")
  "Num"
);
Alcotest.test_case "If0" `Quick (fun () ->
  Alcotest.check Alcotest.string "With failed" 
  (Parse.run_typed "{if0 {{fun {x} x} 5}
                         0
                         1}")
  "Num"
);
]

let test_errors () = [
  Alcotest.test_case "Nullary function" `Quick (fun () ->
  Alcotest.(check_raises "should fail" (Failure "nullary function") (fun () ->
    ignore (Parse.run "{fun {} 5}")
  ))
);
  Alcotest.test_case "Nullary application" `Quick (fun () ->
  Alcotest.(check_raises "should fail" (Failure "nullary application") (fun () ->
    ignore (Parse.run "{{fun {x y z} {+ {+ x y} z}}}")
  ))
);
  Alcotest.test_case "Expected function" `Quick (fun () ->
  Alcotest.(check_raises "should fail" (Failure "type error: interp expected function") (fun () ->
    ignore (Parse.run "{+ {fun {x} x}
                          {1 2}}")
  ))
);
  Alcotest.test_case "Expected number" `Quick (fun () ->
  Alcotest.(check_raises "should fail" (Failure "type error: interp expected numbers") (fun () ->
    ignore (Parse.run "{{fun {x y z}
                            {+ y z}}
                        5
                        {fun {a} {+ a 5}}
                        8}")
  ))
);
  Alcotest.test_case "Free identifier" `Quick (fun () ->
  Alcotest.(check_raises "should fail" (Failure "free identifier: y") (fun () ->
    ignore (Parse.run "{with {x 5}
                             {{fun {a b c}
                                   {if0 y
                                        {+ {+ a b} c}
                                        9}}
                                   1 2 3}}")
  ))
);
  Alcotest.test_case "Free identifier" `Quick (fun () ->
  Alcotest.(check_raises "should fail" (Failure "free identifier: x") (fun () ->
    ignore (Parse.run_typed "x")
        ))
);
Alcotest.test_case "Add Type mismatch" `Quick (fun () ->
  Alcotest.(check_raises "should fail" (Failure "type error: cannot unify") (fun () ->
    ignore (Parse.run_typed "{+ 1 true}")
        ))
);
Alcotest.test_case "Infinite type" `Quick (fun () ->
  Alcotest.(check_raises "should fail" (Failure "type error: infinite type") (fun () ->
    ignore (Parse.run_typed "{fun {x} {x x}}")
        ))
);
Alcotest.test_case "Fun monomorphic" `Quick (fun () ->
  Alcotest.(check_raises "should fail" (Failure "type error: cannot unify") (fun () ->
    ignore (Parse.run_typed "{{fun {f} 
                                   {ifb {f true} 
                                        {f 1} 
                                        {f 2}}}
                              {fun {x} x}}")
        ))
);
]

let () =
  Alcotest.run "Pipeline tests" [
    "interp", test_interp ();
    "compile", test_compile ();
    "type_check", test_type_check ();
    "errors", test_errors ();
  ]