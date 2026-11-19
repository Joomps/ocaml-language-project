(* Type checker *)
open Syntax
open Types

let current_id = ref 0

let new_id letter = 
  let id = !current_id in
  current_id := !current_id + 1;
  letter ^ string_of_int id

let rec type_check expr env lvl = 
  let open Types in
  match expr with
  | Num e -> TNum
  | Add e ->
    let lhs_ty = force (type_check e.lhs env lvl) in
    let rhs_ty = force (type_check e.rhs env lvl) in
    unify lhs_ty TNum;
    unify rhs_ty TNum;
    TNum
  | Sub e -> 
    let lhs_ty = force (type_check e.lhs env lvl) in
    let rhs_ty = force (type_check e.rhs env lvl) in
    unify lhs_ty TNum;
    unify rhs_ty TNum;
    TNum
  | Id e -> instantiate (lookup e.name env) lvl
  | If0 e -> 
    let test_ty = force (type_check e.test env lvl) in
    let thn_ty = force (type_check e.thn env lvl) in
    let els_ty = force (type_check e.els env lvl) in
    if test_ty = TNum
      then begin
        unify thn_ty els_ty;
        thn_ty
      end
    else failwith ("type error: If0 expected num test")
  | True | False -> TBool
  | IfB e -> 
    let test_ty = force (type_check e.test env lvl) in
    let thn_ty = force (type_check e.thn env lvl) in
    let els_ty = force (type_check e.els env lvl) in
    if test_ty = TBool
      then begin
        unify thn_ty els_ty;
        thn_ty
      end
    else failwith ("type error: If0 expected bool test")
  | Let e -> 
    let named_ty = type_check e.named_expr env (lvl + 1) in
    generalize named_ty (lvl);
    type_check e.body (ATyp {name = e.name; ty = named_ty; rest = env}) lvl
  | Func e -> 
    let param_ty = TVar {contents = ref (Unbound {name = new_id "α"; level = lvl})} in
    TFun {input = param_ty;
          output = type_check e.body (ATyp {name = e.param_name; ty = param_ty; rest = env}) lvl}
  | App e ->
    let fun_ty = force (type_check e.fun_expr env lvl) in
    let arg_ty = force (type_check e.arg_expr env lvl) in
    let return_ty = TVar {contents = ref (Unbound {name = new_id "β"; level = lvl})} in
    unify fun_ty (TFun {input = arg_ty; output = return_ty});
    return_ty


and lookup name env =
  match env with
  | MtTyp -> failwith ("free identifier: " ^ name)
  | ATyp s -> 
    if String.equal name s.name 
      then s.ty 
      else lookup name s.rest

and instantiate ty lvl  =
  let sub_tbl = Hashtbl.create 16 in
  let rec walk ty =
    match ty with 
    | TNum | TBool -> ty
    | TFun t -> TFun {input = walk t.input; output = walk t.output}
    | TVar t -> 
      (match !(t.contents) with
      | Unbound u ->
        if u.level = -1
        then if Hashtbl.mem sub_tbl u.name
             then Hashtbl.find sub_tbl u.name
             else 
              let new_var = (TVar {contents = ref (Unbound {name = new_id "γ"; level = lvl})}) in
              Hashtbl.add sub_tbl u.name new_var;
              new_var
        else ty
      | Link l -> walk l.ty)
  in walk ty


and generalize ty lvl = 
  match ty with
  | TNum | TBool -> ()
  | TFun t -> 
    generalize t.input lvl;
    generalize t.output lvl
  | TVar t ->
    (match !(t.contents) with
    | Unbound u -> 
      if u.level > lvl
      then t.contents := (Unbound {name = u.name; level = -1})
      else ()
    | Link l -> generalize l.ty lvl)


and unify ty1 ty2 =
  match ty1, ty2 with
  | TNum, TNum | TBool, TBool -> ()
  | TFun t1, TFun t2 ->
    unify t1.input t2.input;
    unify t1.output t2.output
  | TVar r, t -> 
    (match !(r.contents) with
    | Unbound _ -> 
      if occurs r.contents t
      then failwith "type error: infinite type"
      else r.contents := Link {ty = t}
    | Link l -> unify l.ty t)
  | t, TVar r -> 
    (match !(r.contents) with
    | Unbound _ -> 
      if occurs r.contents t
      then failwith "type error: infinite type"
      else r.contents := Link {ty = t}
    | Link l -> unify l.ty t)
  | _ -> failwith "type error: cannot unify"

and occurs tvar_ref ty2 =
match ty2 with
| TNum | TBool -> false
| TFun t -> 
  occurs tvar_ref t.input || occurs tvar_ref t.output
| TVar t -> 
  (match !(t.contents) with 
  | Unbound _ -> tvar_ref == t.contents
  | Link l -> occurs tvar_ref l.ty)


let infer expr = type_check expr MtTyp 0

let type_check_expr expr =
  Pretty.ty_to_string (infer expr)