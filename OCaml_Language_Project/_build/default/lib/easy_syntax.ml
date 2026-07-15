(* Helper functions that make ae's easier to write for tests *)

open Syntax

let num n = Num {n}
let add lhs rhs = Add {lhs; rhs}
let sub lhs rhs = Sub {lhs; rhs}
let id name = Id {name}
let if0 test thn els = If0 {test; thn; els}
let func param_name body = Func {param_name; body}
let app fun_expr arg_expr = App {fun_expr; arg_expr}