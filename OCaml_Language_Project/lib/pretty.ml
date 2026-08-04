(* Printers for data types in syntax.ml *)
open Syntax

let rec ae_to_string expr =
  match expr with
  | Num e -> "Num " ^ Int.to_string e.n
  | Add e -> Printf.sprintf "Add \n (%s) \n (%s)" 
                            (ae_to_string e.lhs)
                            (ae_to_string e.rhs)
  | Sub e -> Printf.sprintf "Sub \n (%s) \n (%s)" 
                            (ae_to_string e.lhs)
                            (ae_to_string e.rhs)
  | Id e -> "Id " ^ e.name
  | If0 e -> Printf.sprintf "IF0 (%s) \n (%s) \n (%s)"
                            (ae_to_string e.test)
                            (ae_to_string e.thn)
                            (ae_to_string e.els)
  | True -> "True"
  | False -> "False"
  | IfB e -> Printf.sprintf "IFB (%s) \n (%s) \n (%s)"
                            (ae_to_string e.test)
                            (ae_to_string e.thn)
                            (ae_to_string e.els)
  | Let e -> Printf.sprintf "Let %s \n (%s) \n (%s)"
                            e.name
                            (ae_to_string e.named_expr)
                            (ae_to_string e.body)
  | Func e -> Printf.sprintf "Func %s \n (%s)" 
                             e.param_name
                             (ae_to_string e.body)
  | App e -> Printf.sprintf "App \n (%s) \n (%s)"
                            (ae_to_string e.fun_expr)
                            (ae_to_string e.arg_expr)

let rec defSub_to_string expr =
  match expr with
  | MtSub -> "MtSub"
  | ASub e -> Printf.sprintf "ASub %s: %s \n (%s)"
                             e.name
                             (aeValue_to_string e.value)
                             (defSub_to_string e.rest)

and aeValue_to_string expr =
  match expr with
  | NumV e -> Int.to_string e.n
  | BoolV e -> Bool.to_string e.b
  | ClosureV e -> "function"


let rec ty_to_string expr =
  let open Types in
  match expr with
  | TNum -> "TNum"
  | TBool -> "TBool"
  | TFun e -> Printf.sprintf "TFun \n (%s \n  %s)"
                             (ty_to_string e.input)
                             (ty_to_string e.output)
  | TVar e -> 
    (match !(e.contents) with
    | Unbound u -> Printf.sprintf "Unbound (%s %s)"
                                  u.name
                                  (Int.to_string u.level)
    | Link l -> (ty_to_string l.ty))