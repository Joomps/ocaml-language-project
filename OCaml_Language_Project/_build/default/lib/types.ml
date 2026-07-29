(* Types for the type checker *)

type ty =
  | TInt
  | TFun of {input: ty; output: ty}
  | TVar of {contents: tvar ref}

and tvar = 
  | Unbound of {name: string; level: int}
  | Link of {ty: ty}