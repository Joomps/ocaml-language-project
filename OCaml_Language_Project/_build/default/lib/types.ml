(* Types for the type checker *)

type ty =
  | TNum
  | TFun of {input: ty; output: ty}
  | TVar of {contents: tvar ref}

and tvar = 
  | Unbound of {name: string; level: int}
  | Link of {ty: ty}

  
type type_env =
  | MtTyp  
  | ATyp of {name: string;
             ty: ty;
             rest: type_env}