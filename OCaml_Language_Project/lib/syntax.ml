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
| Let  of {name: string;
           named_expr: ae;
           body: ae}
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


type sae =
| SNum  of {n: int}
(*| SBol  of bool *)
| SAdd  of {lhs: sae; 
            rhs: sae}
| SSub  of {lhs: sae; 
            rhs: sae}
| SId   of {name: string}
| SIf0  of {test: sae;
            thn: sae;
            els: sae}
| SWith of {name: string;
            named_expr: sae;
            body: sae}
| SLet  of {name: string;
            named_expr: sae;
            body: sae}
| SFunc of {param_names: string list;
            body: sae}
| SApp  of {fun_expr: sae;
            arg_exprs: sae list}

