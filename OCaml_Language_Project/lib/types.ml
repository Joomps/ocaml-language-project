(* Types for the type checker *)

type ty =
  | TNum
  | TBool
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

let rec force ty = 
  match ty with
  | TVar t -> 
    (match !(t.contents) with
    | Link l -> force l.ty
    | _ -> ty)
  | _ -> ty             