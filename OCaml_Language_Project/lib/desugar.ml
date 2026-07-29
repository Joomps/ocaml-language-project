(* Compiler *)

open Base
open Syntax

let rec compile s =
match s with 
| SNum e -> Num {n = e.n}
| SAdd e -> Add {lhs = (compile e.lhs); rhs = (compile e.rhs)}
| SSub e -> Sub {lhs = (compile e.lhs); rhs = (compile e.rhs)}
| SId e -> Id {name = e.name}
| SIf0 e -> If0 {test = (compile e.test); thn = (compile e.thn); els = (compile e.els)}
| SWith e -> App {fun_expr = Func {param_name = e.name;
                                   body = (compile e.body)};
                  arg_expr = (compile e.named_expr)}
| SLet e -> Let {name = e.name;
                 named_expr = (compile e.named_expr); 
                 body = (compile e.body)}
| SFunc e -> 
  if List.length e.param_names < 1
    then failwith "nullary function"
    else
      List.fold_right e.param_names 
                  ~f:(fun param acc -> Func {param_name = param; body = acc}) 
               ~init:(compile e.body)
| SApp e ->
  if List.length e.arg_exprs < 1
    then failwith "nullary application"
    else
      List.fold_left e.arg_exprs
      ~f:(fun acc arg -> App {fun_expr = acc;
                              arg_expr = (compile arg)})
      ~init:(compile e.fun_expr)