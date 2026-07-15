(* The Interpreter *)
(* Code to output *)

open Syntax

let rec interp expr ds = 
  match expr with
  | Num e -> NumV {n = e.n}
  | Add e -> numop Int.add e.lhs e.rhs ds
  | Sub e -> numop Int.sub e.lhs e.rhs ds
  | Id  e -> lookup e.name ds
  | If0 e -> 
    (match interp e.test ds with
    | NumV {n = 0} -> interp e.thn ds
    | _ -> (interp e.els ds))
  | Func e -> ClosureV {param_name = e.param_name; body = e.body; ds = ds}
  | App e -> 
    (match interp e.fun_expr ds with
    | ClosureV f -> interp f.body (ASub {name = f.param_name;
                                         value = interp e.arg_expr ds;
                                         rest = f.ds})
    | _ -> failwith "type error: interp expected function")

and numop op l r ds =
  match interp l ds, interp r ds with
  | NumV {n = lv}, NumV {n = rv} -> NumV {n = op lv rv}
  | _ -> failwith "type error: interp expected numbers"

and lookup name ds =
  match ds with
  | MtSub -> failwith ("free identifier: " ^ name)
  | ASub s -> 
    if String.equal name s.name 
      then s.value 
      else lookup name s.rest


let interp_expr expr =
  Pretty.aeValue_to_string (interp expr MtSub)