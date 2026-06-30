(* Types that we pattern match on in interp *)

type ae = 
| Num  of {n: int}
(*| Bol  of bool *)
| Add  of {lhs: ae; 
           rhs: ae}
| Sub  of {lhs: ae; 
           rhs: ae}
| Id   of {name: string}
| If0  of {test: ae;
           thn: ae;
           els: ae}
| Func of {param_name: string;
           body: ae}
| App  of {fun_expr: ae;
           arg_expr: ae}

           
type defSub =
| MtSub
| ASub of {name: string;
           value: aeValue;
           rest: defSub}


and aeValue =
| NumV of {n: int}
| ClosureV of {param_name: string;
               body: ae;
               ds: defSub}