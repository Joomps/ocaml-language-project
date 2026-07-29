
module MenhirBasics = struct
  
  exception Error
  
  let _eRR =
    fun _s ->
      raise Error
  
  type token = 
    | WITH
    | RIGHT_BRACKET
    | PLUS
    | MINUS
    | LET
    | LEFT_BRACKET
    | INT of 
# 5 "lib/parser.mly"
       (int)
# 21 "lib/parser.ml"
  
    | IF0
    | ID of 
# 6 "lib/parser.mly"
       (string)
# 27 "lib/parser.ml"
  
    | FUN
    | EOF
  
end

include MenhirBasics

# 1 "lib/parser.mly"
  
  open Syntax

# 40 "lib/parser.ml"

type ('s, 'r) _menhir_state = 
  | MenhirState00 : ('s, _menhir_box_prog) _menhir_state
    (** State 00.
        Stack shape : <empty>.
        Start symbol: prog. *)

  | MenhirState01 : (('s, _menhir_box_prog) _menhir_cell1_LEFT_BRACKET, _menhir_box_prog) _menhir_state
    (** State 01.
        Stack shape : LEFT_BRACKET.
        Start symbol: prog. *)

  | MenhirState04 : ((('s, _menhir_box_prog) _menhir_cell1_LEFT_BRACKET, _menhir_box_prog) _menhir_cell1_WITH _menhir_cell0_ID, _menhir_box_prog) _menhir_state
    (** State 04.
        Stack shape : LEFT_BRACKET WITH ID.
        Start symbol: prog. *)

  | MenhirState05 : (('s, _menhir_box_prog) _menhir_cell1_LEFT_BRACKET, _menhir_box_prog) _menhir_state
    (** State 05.
        Stack shape : LEFT_BRACKET.
        Start symbol: prog. *)

  | MenhirState08 : ((('s, _menhir_box_prog) _menhir_cell1_LEFT_BRACKET, _menhir_box_prog) _menhir_cell1_WITH _menhir_cell0_ID, _menhir_box_prog) _menhir_state
    (** State 08.
        Stack shape : LEFT_BRACKET WITH ID.
        Start symbol: prog. *)

  | MenhirState12 : (((('s, _menhir_box_prog) _menhir_cell1_LEFT_BRACKET, _menhir_box_prog) _menhir_cell1_WITH _menhir_cell0_ID, _menhir_box_prog) _menhir_cell1_sae, _menhir_box_prog) _menhir_state
    (** State 12.
        Stack shape : LEFT_BRACKET WITH ID sae.
        Start symbol: prog. *)

  | MenhirState15 : ((('s, _menhir_box_prog) _menhir_cell1_LEFT_BRACKET, _menhir_box_prog) _menhir_cell1_PLUS, _menhir_box_prog) _menhir_state
    (** State 15.
        Stack shape : LEFT_BRACKET PLUS.
        Start symbol: prog. *)

  | MenhirState16 : (((('s, _menhir_box_prog) _menhir_cell1_LEFT_BRACKET, _menhir_box_prog) _menhir_cell1_PLUS, _menhir_box_prog) _menhir_cell1_sae, _menhir_box_prog) _menhir_state
    (** State 16.
        Stack shape : LEFT_BRACKET PLUS sae.
        Start symbol: prog. *)

  | MenhirState19 : ((('s, _menhir_box_prog) _menhir_cell1_LEFT_BRACKET, _menhir_box_prog) _menhir_cell1_MINUS, _menhir_box_prog) _menhir_state
    (** State 19.
        Stack shape : LEFT_BRACKET MINUS.
        Start symbol: prog. *)

  | MenhirState20 : (((('s, _menhir_box_prog) _menhir_cell1_LEFT_BRACKET, _menhir_box_prog) _menhir_cell1_MINUS, _menhir_box_prog) _menhir_cell1_sae, _menhir_box_prog) _menhir_state
    (** State 20.
        Stack shape : LEFT_BRACKET MINUS sae.
        Start symbol: prog. *)

  | MenhirState25 : ((('s, _menhir_box_prog) _menhir_cell1_LEFT_BRACKET, _menhir_box_prog) _menhir_cell1_LET _menhir_cell0_ID, _menhir_box_prog) _menhir_state
    (** State 25.
        Stack shape : LEFT_BRACKET LET ID.
        Start symbol: prog. *)

  | MenhirState27 : (((('s, _menhir_box_prog) _menhir_cell1_LEFT_BRACKET, _menhir_box_prog) _menhir_cell1_LET _menhir_cell0_ID, _menhir_box_prog) _menhir_cell1_sae, _menhir_box_prog) _menhir_state
    (** State 27.
        Stack shape : LEFT_BRACKET LET ID sae.
        Start symbol: prog. *)

  | MenhirState30 : ((('s, _menhir_box_prog) _menhir_cell1_LEFT_BRACKET, _menhir_box_prog) _menhir_cell1_IF0, _menhir_box_prog) _menhir_state
    (** State 30.
        Stack shape : LEFT_BRACKET IF0.
        Start symbol: prog. *)

  | MenhirState31 : (((('s, _menhir_box_prog) _menhir_cell1_LEFT_BRACKET, _menhir_box_prog) _menhir_cell1_IF0, _menhir_box_prog) _menhir_cell1_sae, _menhir_box_prog) _menhir_state
    (** State 31.
        Stack shape : LEFT_BRACKET IF0 sae.
        Start symbol: prog. *)

  | MenhirState32 : ((((('s, _menhir_box_prog) _menhir_cell1_LEFT_BRACKET, _menhir_box_prog) _menhir_cell1_IF0, _menhir_box_prog) _menhir_cell1_sae, _menhir_box_prog) _menhir_cell1_sae, _menhir_box_prog) _menhir_state
    (** State 32.
        Stack shape : LEFT_BRACKET IF0 sae sae.
        Start symbol: prog. *)

  | MenhirState36 : ((('s, _menhir_box_prog) _menhir_cell1_LEFT_BRACKET, _menhir_box_prog) _menhir_cell1_FUN, _menhir_box_prog) _menhir_state
    (** State 36.
        Stack shape : LEFT_BRACKET FUN.
        Start symbol: prog. *)

  | MenhirState37 : (('s, _menhir_box_prog) _menhir_cell1_ID, _menhir_box_prog) _menhir_state
    (** State 37.
        Stack shape : ID.
        Start symbol: prog. *)

  | MenhirState40 : (((('s, _menhir_box_prog) _menhir_cell1_LEFT_BRACKET, _menhir_box_prog) _menhir_cell1_FUN, _menhir_box_prog) _menhir_cell1_list_ID_, _menhir_box_prog) _menhir_state
    (** State 40.
        Stack shape : LEFT_BRACKET FUN list(ID).
        Start symbol: prog. *)

  | MenhirState43 : ((('s, _menhir_box_prog) _menhir_cell1_LEFT_BRACKET, _menhir_box_prog) _menhir_cell1_sae, _menhir_box_prog) _menhir_state
    (** State 43.
        Stack shape : LEFT_BRACKET sae.
        Start symbol: prog. *)

  | MenhirState44 : ((('s, _menhir_box_prog) _menhir_cell1_sae, _menhir_box_prog) _menhir_cell1_sae, _menhir_box_prog) _menhir_state
    (** State 44.
        Stack shape : sae sae.
        Start symbol: prog. *)

  | MenhirState49 : (((('s, _menhir_box_prog) _menhir_cell1_LEFT_BRACKET, _menhir_box_prog) _menhir_cell1_WITH _menhir_cell0_ID, _menhir_box_prog) _menhir_cell1_sae, _menhir_box_prog) _menhir_state
    (** State 49.
        Stack shape : LEFT_BRACKET WITH ID sae.
        Start symbol: prog. *)

  | MenhirState52 : ((('s, _menhir_box_prog) _menhir_cell1_LEFT_BRACKET, _menhir_box_prog) _menhir_cell1_PLUS, _menhir_box_prog) _menhir_state
    (** State 52.
        Stack shape : LEFT_BRACKET PLUS.
        Start symbol: prog. *)

  | MenhirState53 : (((('s, _menhir_box_prog) _menhir_cell1_LEFT_BRACKET, _menhir_box_prog) _menhir_cell1_PLUS, _menhir_box_prog) _menhir_cell1_sae, _menhir_box_prog) _menhir_state
    (** State 53.
        Stack shape : LEFT_BRACKET PLUS sae.
        Start symbol: prog. *)

  | MenhirState56 : ((('s, _menhir_box_prog) _menhir_cell1_LEFT_BRACKET, _menhir_box_prog) _menhir_cell1_MINUS, _menhir_box_prog) _menhir_state
    (** State 56.
        Stack shape : LEFT_BRACKET MINUS.
        Start symbol: prog. *)

  | MenhirState57 : (((('s, _menhir_box_prog) _menhir_cell1_LEFT_BRACKET, _menhir_box_prog) _menhir_cell1_MINUS, _menhir_box_prog) _menhir_cell1_sae, _menhir_box_prog) _menhir_state
    (** State 57.
        Stack shape : LEFT_BRACKET MINUS sae.
        Start symbol: prog. *)

  | MenhirState62 : ((('s, _menhir_box_prog) _menhir_cell1_LEFT_BRACKET, _menhir_box_prog) _menhir_cell1_LET _menhir_cell0_ID, _menhir_box_prog) _menhir_state
    (** State 62.
        Stack shape : LEFT_BRACKET LET ID.
        Start symbol: prog. *)

  | MenhirState64 : (((('s, _menhir_box_prog) _menhir_cell1_LEFT_BRACKET, _menhir_box_prog) _menhir_cell1_LET _menhir_cell0_ID, _menhir_box_prog) _menhir_cell1_sae, _menhir_box_prog) _menhir_state
    (** State 64.
        Stack shape : LEFT_BRACKET LET ID sae.
        Start symbol: prog. *)

  | MenhirState67 : ((('s, _menhir_box_prog) _menhir_cell1_LEFT_BRACKET, _menhir_box_prog) _menhir_cell1_IF0, _menhir_box_prog) _menhir_state
    (** State 67.
        Stack shape : LEFT_BRACKET IF0.
        Start symbol: prog. *)

  | MenhirState68 : (((('s, _menhir_box_prog) _menhir_cell1_LEFT_BRACKET, _menhir_box_prog) _menhir_cell1_IF0, _menhir_box_prog) _menhir_cell1_sae, _menhir_box_prog) _menhir_state
    (** State 68.
        Stack shape : LEFT_BRACKET IF0 sae.
        Start symbol: prog. *)

  | MenhirState69 : ((((('s, _menhir_box_prog) _menhir_cell1_LEFT_BRACKET, _menhir_box_prog) _menhir_cell1_IF0, _menhir_box_prog) _menhir_cell1_sae, _menhir_box_prog) _menhir_cell1_sae, _menhir_box_prog) _menhir_state
    (** State 69.
        Stack shape : LEFT_BRACKET IF0 sae sae.
        Start symbol: prog. *)

  | MenhirState73 : ((('s, _menhir_box_prog) _menhir_cell1_LEFT_BRACKET, _menhir_box_prog) _menhir_cell1_FUN, _menhir_box_prog) _menhir_state
    (** State 73.
        Stack shape : LEFT_BRACKET FUN.
        Start symbol: prog. *)

  | MenhirState75 : (((('s, _menhir_box_prog) _menhir_cell1_LEFT_BRACKET, _menhir_box_prog) _menhir_cell1_FUN, _menhir_box_prog) _menhir_cell1_list_ID_, _menhir_box_prog) _menhir_state
    (** State 75.
        Stack shape : LEFT_BRACKET FUN list(ID).
        Start symbol: prog. *)

  | MenhirState78 : ((('s, _menhir_box_prog) _menhir_cell1_LEFT_BRACKET, _menhir_box_prog) _menhir_cell1_sae, _menhir_box_prog) _menhir_state
    (** State 78.
        Stack shape : LEFT_BRACKET sae.
        Start symbol: prog. *)


and ('s, 'r) _menhir_cell1_list_ID_ = 
  | MenhirCell1_list_ID_ of 's * ('s, 'r) _menhir_state * (string list)

and ('s, 'r) _menhir_cell1_sae = 
  | MenhirCell1_sae of 's * ('s, 'r) _menhir_state * (Syntax.sae)

and ('s, 'r) _menhir_cell1_FUN = 
  | MenhirCell1_FUN of 's * ('s, 'r) _menhir_state

and ('s, 'r) _menhir_cell1_ID = 
  | MenhirCell1_ID of 's * ('s, 'r) _menhir_state * 
# 6 "lib/parser.mly"
       (string)
# 222 "lib/parser.ml"


and 's _menhir_cell0_ID = 
  | MenhirCell0_ID of 's * 
# 6 "lib/parser.mly"
       (string)
# 229 "lib/parser.ml"


and ('s, 'r) _menhir_cell1_IF0 = 
  | MenhirCell1_IF0 of 's * ('s, 'r) _menhir_state

and ('s, 'r) _menhir_cell1_LEFT_BRACKET = 
  | MenhirCell1_LEFT_BRACKET of 's * ('s, 'r) _menhir_state

and ('s, 'r) _menhir_cell1_LET = 
  | MenhirCell1_LET of 's * ('s, 'r) _menhir_state

and ('s, 'r) _menhir_cell1_MINUS = 
  | MenhirCell1_MINUS of 's * ('s, 'r) _menhir_state

and ('s, 'r) _menhir_cell1_PLUS = 
  | MenhirCell1_PLUS of 's * ('s, 'r) _menhir_state

and ('s, 'r) _menhir_cell1_WITH = 
  | MenhirCell1_WITH of 's * ('s, 'r) _menhir_state

and _menhir_box_prog = 
  | MenhirBox_prog of (Syntax.sae option) [@@unboxed]

let _menhir_action_01 =
  fun () ->
    (
# 216 "<standard.mly>"
    ( [] )
# 258 "lib/parser.ml"
     : (string list))

let _menhir_action_02 =
  fun x xs ->
    (
# 219 "<standard.mly>"
    ( x :: xs )
# 266 "lib/parser.ml"
     : (string list))

let _menhir_action_03 =
  fun () ->
    (
# 216 "<standard.mly>"
    ( [] )
# 274 "lib/parser.ml"
     : (Syntax.sae list))

let _menhir_action_04 =
  fun x xs ->
    (
# 219 "<standard.mly>"
    ( x :: xs )
# 282 "lib/parser.ml"
     : (Syntax.sae list))

let _menhir_action_05 =
  fun () ->
    (
# 20 "lib/parser.mly"
              ( None )
# 290 "lib/parser.ml"
     : (Syntax.sae option))

let _menhir_action_06 =
  fun v ->
    (
# 21 "lib/parser.mly"
            ( Some v )
# 298 "lib/parser.ml"
     : (Syntax.sae option))

let _menhir_action_07 =
  fun i ->
    (
# 26 "lib/parser.mly"
    (SNum {n = i} )
# 306 "lib/parser.ml"
     : (Syntax.sae))

let _menhir_action_08 =
  fun lhs rhs ->
    (
# 28 "lib/parser.mly"
    (SAdd {lhs; rhs} )
# 314 "lib/parser.ml"
     : (Syntax.sae))

let _menhir_action_09 =
  fun lhs rhs ->
    (
# 30 "lib/parser.mly"
    (SSub {lhs; rhs} )
# 322 "lib/parser.ml"
     : (Syntax.sae))

let _menhir_action_10 =
  fun i ->
    (
# 32 "lib/parser.mly"
    (SId {name = i})
# 330 "lib/parser.ml"
     : (Syntax.sae))

let _menhir_action_11 =
  fun els test thn ->
    (
# 34 "lib/parser.mly"
    (SIf0 {test; thn; els})
# 338 "lib/parser.ml"
     : (Syntax.sae))

let _menhir_action_12 =
  fun body name named_expr ->
    (
# 36 "lib/parser.mly"
    (SWith {name; named_expr; body})
# 346 "lib/parser.ml"
     : (Syntax.sae))

let _menhir_action_13 =
  fun body name named_expr ->
    (
# 38 "lib/parser.mly"
    (SLet {name; named_expr; body})
# 354 "lib/parser.ml"
     : (Syntax.sae))

let _menhir_action_14 =
  fun body param_names ->
    (
# 40 "lib/parser.mly"
    (SFunc {param_names; body})
# 362 "lib/parser.ml"
     : (Syntax.sae))

let _menhir_action_15 =
  fun arg_exprs fun_expr ->
    (
# 42 "lib/parser.mly"
    (SApp {fun_expr; arg_exprs})
# 370 "lib/parser.ml"
     : (Syntax.sae))

let _menhir_print_token : token -> string =
  fun _tok ->
    match _tok with
    | WITH ->
        "WITH"
    | RIGHT_BRACKET ->
        "RIGHT_BRACKET"
    | PLUS ->
        "PLUS"
    | MINUS ->
        "MINUS"
    | LET ->
        "LET"
    | LEFT_BRACKET ->
        "LEFT_BRACKET"
    | INT _ ->
        "INT"
    | IF0 ->
        "IF0"
    | ID _ ->
        "ID"
    | FUN ->
        "FUN"
    | EOF ->
        "EOF"

let _menhir_fail : unit -> 'a =
  fun () ->
    Printf.eprintf "Internal failure -- please contact the parser generator's developers.\n%!";
    assert false

include struct
  
  [@@@ocaml.warning "-4-37"]
  
  let _menhir_goto_prog : type  ttv_stack. ttv_stack -> _ -> _menhir_box_prog =
    fun _menhir_stack _v ->
      MenhirBox_prog _v
  
  let _menhir_run_84 : type  ttv_stack. ttv_stack -> _ -> _menhir_box_prog =
    fun _menhir_stack _v ->
      let v = _v in
      let _v = _menhir_action_06 v in
      _menhir_goto_prog _menhir_stack _v
  
  let rec _menhir_run_05 : type  ttv_stack. ttv_stack -> _ -> _ -> (ttv_stack, _menhir_box_prog) _menhir_state -> _menhir_box_prog =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s ->
      let _menhir_stack = MenhirCell1_LEFT_BRACKET (_menhir_stack, _menhir_s) in
      let _tok = _menhir_lexer _menhir_lexbuf in
      match (_tok : MenhirBasics.token) with
      | WITH ->
          let _menhir_stack = MenhirCell1_WITH (_menhir_stack, MenhirState05) in
          let _tok = _menhir_lexer _menhir_lexbuf in
          (match (_tok : MenhirBasics.token) with
          | LEFT_BRACKET ->
              let _tok = _menhir_lexer _menhir_lexbuf in
              (match (_tok : MenhirBasics.token) with
              | ID _v ->
                  let _menhir_stack = MenhirCell0_ID (_menhir_stack, _v) in
                  let _menhir_s = MenhirState08 in
                  let _tok = _menhir_lexer _menhir_lexbuf in
                  (match (_tok : MenhirBasics.token) with
                  | LEFT_BRACKET ->
                      _menhir_run_05 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
                  | INT _v ->
                      _menhir_run_09 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
                  | ID _v ->
                      _menhir_run_10 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
                  | _ ->
                      _eRR ())
              | _ ->
                  _eRR ())
          | _ ->
              _eRR ())
      | PLUS ->
          let _menhir_stack = MenhirCell1_PLUS (_menhir_stack, MenhirState05) in
          let _menhir_s = MenhirState15 in
          let _tok = _menhir_lexer _menhir_lexbuf in
          (match (_tok : MenhirBasics.token) with
          | LEFT_BRACKET ->
              _menhir_run_05 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
          | INT _v ->
              _menhir_run_09 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
          | ID _v ->
              _menhir_run_10 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
          | _ ->
              _eRR ())
      | MINUS ->
          let _menhir_stack = MenhirCell1_MINUS (_menhir_stack, MenhirState05) in
          let _menhir_s = MenhirState19 in
          let _tok = _menhir_lexer _menhir_lexbuf in
          (match (_tok : MenhirBasics.token) with
          | LEFT_BRACKET ->
              _menhir_run_05 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
          | INT _v ->
              _menhir_run_09 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
          | ID _v ->
              _menhir_run_10 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
          | _ ->
              _eRR ())
      | LET ->
          let _menhir_stack = MenhirCell1_LET (_menhir_stack, MenhirState05) in
          let _tok = _menhir_lexer _menhir_lexbuf in
          (match (_tok : MenhirBasics.token) with
          | LEFT_BRACKET ->
              let _tok = _menhir_lexer _menhir_lexbuf in
              (match (_tok : MenhirBasics.token) with
              | ID _v ->
                  let _menhir_stack = MenhirCell0_ID (_menhir_stack, _v) in
                  let _menhir_s = MenhirState25 in
                  let _tok = _menhir_lexer _menhir_lexbuf in
                  (match (_tok : MenhirBasics.token) with
                  | LEFT_BRACKET ->
                      _menhir_run_05 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
                  | INT _v ->
                      _menhir_run_09 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
                  | ID _v ->
                      _menhir_run_10 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
                  | _ ->
                      _eRR ())
              | _ ->
                  _eRR ())
          | _ ->
              _eRR ())
      | LEFT_BRACKET ->
          _menhir_run_05 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState05
      | INT _v ->
          _menhir_run_09 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState05
      | IF0 ->
          let _menhir_stack = MenhirCell1_IF0 (_menhir_stack, MenhirState05) in
          let _menhir_s = MenhirState30 in
          let _tok = _menhir_lexer _menhir_lexbuf in
          (match (_tok : MenhirBasics.token) with
          | LEFT_BRACKET ->
              _menhir_run_05 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
          | INT _v ->
              _menhir_run_09 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
          | ID _v ->
              _menhir_run_10 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
          | _ ->
              _eRR ())
      | ID _v ->
          _menhir_run_10 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState05
      | FUN ->
          let _menhir_stack = MenhirCell1_FUN (_menhir_stack, MenhirState05) in
          let _tok = _menhir_lexer _menhir_lexbuf in
          (match (_tok : MenhirBasics.token) with
          | LEFT_BRACKET ->
              let _tok = _menhir_lexer _menhir_lexbuf in
              (match (_tok : MenhirBasics.token) with
              | ID _v ->
                  _menhir_run_37 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState36
              | RIGHT_BRACKET ->
                  let _v = _menhir_action_01 () in
                  _menhir_run_39 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState36
              | _ ->
                  _eRR ())
          | _ ->
              _eRR ())
      | _ ->
          _eRR ()
  
  and _menhir_run_09 : type  ttv_stack. ttv_stack -> _ -> _ -> _ -> (ttv_stack, _menhir_box_prog) _menhir_state -> _menhir_box_prog =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s ->
      let _tok = _menhir_lexer _menhir_lexbuf in
      let i = _v in
      let _v = _menhir_action_07 i in
      _menhir_goto_sae _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
  
  and _menhir_goto_sae : type  ttv_stack. ttv_stack -> _ -> _ -> _ -> (ttv_stack, _menhir_box_prog) _menhir_state -> _ -> _menhir_box_prog =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok ->
      match _menhir_s with
      | MenhirState08 ->
          _menhir_run_11 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState12 ->
          _menhir_run_13 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
      | MenhirState15 ->
          _menhir_run_16 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState16 ->
          _menhir_run_17 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
      | MenhirState19 ->
          _menhir_run_20 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState20 ->
          _menhir_run_21 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
      | MenhirState25 ->
          _menhir_run_26 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState27 ->
          _menhir_run_28 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
      | MenhirState30 ->
          _menhir_run_31 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState31 ->
          _menhir_run_32 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState32 ->
          _menhir_run_33 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
      | MenhirState40 ->
          _menhir_run_41 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
      | MenhirState05 ->
          _menhir_run_43 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState43 ->
          _menhir_run_44 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState44 ->
          _menhir_run_44 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState78 ->
          _menhir_run_44 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState04 ->
          _menhir_run_48 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState49 ->
          _menhir_run_50 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
      | MenhirState52 ->
          _menhir_run_53 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState53 ->
          _menhir_run_54 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
      | MenhirState56 ->
          _menhir_run_57 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState57 ->
          _menhir_run_58 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
      | MenhirState62 ->
          _menhir_run_63 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState64 ->
          _menhir_run_65 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
      | MenhirState67 ->
          _menhir_run_68 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState68 ->
          _menhir_run_69 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState69 ->
          _menhir_run_70 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
      | MenhirState75 ->
          _menhir_run_76 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
      | MenhirState01 ->
          _menhir_run_78 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState00 ->
          _menhir_run_84 _menhir_stack _v
      | _ ->
          _menhir_fail ()
  
  and _menhir_run_11 : type  ttv_stack. (((ttv_stack, _menhir_box_prog) _menhir_cell1_LEFT_BRACKET, _menhir_box_prog) _menhir_cell1_WITH _menhir_cell0_ID as 'stack) -> _ -> _ -> _ -> ('stack, _menhir_box_prog) _menhir_state -> _ -> _menhir_box_prog =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok ->
      let _menhir_stack = MenhirCell1_sae (_menhir_stack, _menhir_s, _v) in
      match (_tok : MenhirBasics.token) with
      | RIGHT_BRACKET ->
          let _menhir_s = MenhirState12 in
          let _tok = _menhir_lexer _menhir_lexbuf in
          (match (_tok : MenhirBasics.token) with
          | LEFT_BRACKET ->
              _menhir_run_05 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
          | INT _v ->
              _menhir_run_09 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
          | ID _v ->
              _menhir_run_10 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
          | _ ->
              _eRR ())
      | _ ->
          _eRR ()
  
  and _menhir_run_10 : type  ttv_stack. ttv_stack -> _ -> _ -> _ -> (ttv_stack, _menhir_box_prog) _menhir_state -> _menhir_box_prog =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s ->
      let _tok = _menhir_lexer _menhir_lexbuf in
      let i = _v in
      let _v = _menhir_action_10 i in
      _menhir_goto_sae _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
  
  and _menhir_run_13 : type  ttv_stack. (((ttv_stack, _menhir_box_prog) _menhir_cell1_LEFT_BRACKET, _menhir_box_prog) _menhir_cell1_WITH _menhir_cell0_ID, _menhir_box_prog) _menhir_cell1_sae -> _ -> _ -> _ -> _ -> _menhir_box_prog =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok ->
      match (_tok : MenhirBasics.token) with
      | RIGHT_BRACKET ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let MenhirCell1_sae (_menhir_stack, _, named_expr) = _menhir_stack in
          let MenhirCell0_ID (_menhir_stack, name) = _menhir_stack in
          let MenhirCell1_WITH (_menhir_stack, _) = _menhir_stack in
          let MenhirCell1_LEFT_BRACKET (_menhir_stack, _menhir_s) = _menhir_stack in
          let body = _v in
          let _v = _menhir_action_12 body name named_expr in
          _menhir_goto_sae _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | _ ->
          _eRR ()
  
  and _menhir_run_16 : type  ttv_stack. (((ttv_stack, _menhir_box_prog) _menhir_cell1_LEFT_BRACKET, _menhir_box_prog) _menhir_cell1_PLUS as 'stack) -> _ -> _ -> _ -> ('stack, _menhir_box_prog) _menhir_state -> _ -> _menhir_box_prog =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok ->
      let _menhir_stack = MenhirCell1_sae (_menhir_stack, _menhir_s, _v) in
      match (_tok : MenhirBasics.token) with
      | LEFT_BRACKET ->
          _menhir_run_05 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState16
      | INT _v_0 ->
          _menhir_run_09 _menhir_stack _menhir_lexbuf _menhir_lexer _v_0 MenhirState16
      | ID _v_1 ->
          _menhir_run_10 _menhir_stack _menhir_lexbuf _menhir_lexer _v_1 MenhirState16
      | _ ->
          _eRR ()
  
  and _menhir_run_17 : type  ttv_stack. (((ttv_stack, _menhir_box_prog) _menhir_cell1_LEFT_BRACKET, _menhir_box_prog) _menhir_cell1_PLUS, _menhir_box_prog) _menhir_cell1_sae -> _ -> _ -> _ -> _ -> _menhir_box_prog =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok ->
      match (_tok : MenhirBasics.token) with
      | RIGHT_BRACKET ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let MenhirCell1_sae (_menhir_stack, _, lhs) = _menhir_stack in
          let MenhirCell1_PLUS (_menhir_stack, _) = _menhir_stack in
          let MenhirCell1_LEFT_BRACKET (_menhir_stack, _menhir_s) = _menhir_stack in
          let rhs = _v in
          let _v = _menhir_action_08 lhs rhs in
          _menhir_goto_sae _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | _ ->
          _eRR ()
  
  and _menhir_run_20 : type  ttv_stack. (((ttv_stack, _menhir_box_prog) _menhir_cell1_LEFT_BRACKET, _menhir_box_prog) _menhir_cell1_MINUS as 'stack) -> _ -> _ -> _ -> ('stack, _menhir_box_prog) _menhir_state -> _ -> _menhir_box_prog =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok ->
      let _menhir_stack = MenhirCell1_sae (_menhir_stack, _menhir_s, _v) in
      match (_tok : MenhirBasics.token) with
      | LEFT_BRACKET ->
          _menhir_run_05 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState20
      | INT _v_0 ->
          _menhir_run_09 _menhir_stack _menhir_lexbuf _menhir_lexer _v_0 MenhirState20
      | ID _v_1 ->
          _menhir_run_10 _menhir_stack _menhir_lexbuf _menhir_lexer _v_1 MenhirState20
      | _ ->
          _eRR ()
  
  and _menhir_run_21 : type  ttv_stack. (((ttv_stack, _menhir_box_prog) _menhir_cell1_LEFT_BRACKET, _menhir_box_prog) _menhir_cell1_MINUS, _menhir_box_prog) _menhir_cell1_sae -> _ -> _ -> _ -> _ -> _menhir_box_prog =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok ->
      match (_tok : MenhirBasics.token) with
      | RIGHT_BRACKET ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let MenhirCell1_sae (_menhir_stack, _, lhs) = _menhir_stack in
          let MenhirCell1_MINUS (_menhir_stack, _) = _menhir_stack in
          let MenhirCell1_LEFT_BRACKET (_menhir_stack, _menhir_s) = _menhir_stack in
          let rhs = _v in
          let _v = _menhir_action_09 lhs rhs in
          _menhir_goto_sae _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | _ ->
          _eRR ()
  
  and _menhir_run_26 : type  ttv_stack. (((ttv_stack, _menhir_box_prog) _menhir_cell1_LEFT_BRACKET, _menhir_box_prog) _menhir_cell1_LET _menhir_cell0_ID as 'stack) -> _ -> _ -> _ -> ('stack, _menhir_box_prog) _menhir_state -> _ -> _menhir_box_prog =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok ->
      let _menhir_stack = MenhirCell1_sae (_menhir_stack, _menhir_s, _v) in
      match (_tok : MenhirBasics.token) with
      | RIGHT_BRACKET ->
          let _menhir_s = MenhirState27 in
          let _tok = _menhir_lexer _menhir_lexbuf in
          (match (_tok : MenhirBasics.token) with
          | LEFT_BRACKET ->
              _menhir_run_05 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
          | INT _v ->
              _menhir_run_09 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
          | ID _v ->
              _menhir_run_10 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
          | _ ->
              _eRR ())
      | _ ->
          _eRR ()
  
  and _menhir_run_28 : type  ttv_stack. (((ttv_stack, _menhir_box_prog) _menhir_cell1_LEFT_BRACKET, _menhir_box_prog) _menhir_cell1_LET _menhir_cell0_ID, _menhir_box_prog) _menhir_cell1_sae -> _ -> _ -> _ -> _ -> _menhir_box_prog =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok ->
      match (_tok : MenhirBasics.token) with
      | RIGHT_BRACKET ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let MenhirCell1_sae (_menhir_stack, _, named_expr) = _menhir_stack in
          let MenhirCell0_ID (_menhir_stack, name) = _menhir_stack in
          let MenhirCell1_LET (_menhir_stack, _) = _menhir_stack in
          let MenhirCell1_LEFT_BRACKET (_menhir_stack, _menhir_s) = _menhir_stack in
          let body = _v in
          let _v = _menhir_action_13 body name named_expr in
          _menhir_goto_sae _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | _ ->
          _eRR ()
  
  and _menhir_run_31 : type  ttv_stack. (((ttv_stack, _menhir_box_prog) _menhir_cell1_LEFT_BRACKET, _menhir_box_prog) _menhir_cell1_IF0 as 'stack) -> _ -> _ -> _ -> ('stack, _menhir_box_prog) _menhir_state -> _ -> _menhir_box_prog =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok ->
      let _menhir_stack = MenhirCell1_sae (_menhir_stack, _menhir_s, _v) in
      match (_tok : MenhirBasics.token) with
      | LEFT_BRACKET ->
          _menhir_run_05 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState31
      | INT _v_0 ->
          _menhir_run_09 _menhir_stack _menhir_lexbuf _menhir_lexer _v_0 MenhirState31
      | ID _v_1 ->
          _menhir_run_10 _menhir_stack _menhir_lexbuf _menhir_lexer _v_1 MenhirState31
      | _ ->
          _eRR ()
  
  and _menhir_run_32 : type  ttv_stack. ((((ttv_stack, _menhir_box_prog) _menhir_cell1_LEFT_BRACKET, _menhir_box_prog) _menhir_cell1_IF0, _menhir_box_prog) _menhir_cell1_sae as 'stack) -> _ -> _ -> _ -> ('stack, _menhir_box_prog) _menhir_state -> _ -> _menhir_box_prog =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok ->
      let _menhir_stack = MenhirCell1_sae (_menhir_stack, _menhir_s, _v) in
      match (_tok : MenhirBasics.token) with
      | LEFT_BRACKET ->
          _menhir_run_05 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState32
      | INT _v_0 ->
          _menhir_run_09 _menhir_stack _menhir_lexbuf _menhir_lexer _v_0 MenhirState32
      | ID _v_1 ->
          _menhir_run_10 _menhir_stack _menhir_lexbuf _menhir_lexer _v_1 MenhirState32
      | _ ->
          _eRR ()
  
  and _menhir_run_33 : type  ttv_stack. ((((ttv_stack, _menhir_box_prog) _menhir_cell1_LEFT_BRACKET, _menhir_box_prog) _menhir_cell1_IF0, _menhir_box_prog) _menhir_cell1_sae, _menhir_box_prog) _menhir_cell1_sae -> _ -> _ -> _ -> _ -> _menhir_box_prog =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok ->
      match (_tok : MenhirBasics.token) with
      | RIGHT_BRACKET ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let MenhirCell1_sae (_menhir_stack, _, thn) = _menhir_stack in
          let MenhirCell1_sae (_menhir_stack, _, test) = _menhir_stack in
          let MenhirCell1_IF0 (_menhir_stack, _) = _menhir_stack in
          let MenhirCell1_LEFT_BRACKET (_menhir_stack, _menhir_s) = _menhir_stack in
          let els = _v in
          let _v = _menhir_action_11 els test thn in
          _menhir_goto_sae _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | _ ->
          _eRR ()
  
  and _menhir_run_41 : type  ttv_stack. (((ttv_stack, _menhir_box_prog) _menhir_cell1_LEFT_BRACKET, _menhir_box_prog) _menhir_cell1_FUN, _menhir_box_prog) _menhir_cell1_list_ID_ -> _ -> _ -> _ -> _ -> _menhir_box_prog =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok ->
      match (_tok : MenhirBasics.token) with
      | RIGHT_BRACKET ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let MenhirCell1_list_ID_ (_menhir_stack, _, param_names) = _menhir_stack in
          let MenhirCell1_FUN (_menhir_stack, _) = _menhir_stack in
          let MenhirCell1_LEFT_BRACKET (_menhir_stack, _menhir_s) = _menhir_stack in
          let body = _v in
          let _v = _menhir_action_14 body param_names in
          _menhir_goto_sae _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | _ ->
          _eRR ()
  
  and _menhir_run_43 : type  ttv_stack. ((ttv_stack, _menhir_box_prog) _menhir_cell1_LEFT_BRACKET as 'stack) -> _ -> _ -> _ -> ('stack, _menhir_box_prog) _menhir_state -> _ -> _menhir_box_prog =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok ->
      let _menhir_stack = MenhirCell1_sae (_menhir_stack, _menhir_s, _v) in
      match (_tok : MenhirBasics.token) with
      | LEFT_BRACKET ->
          _menhir_run_05 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState43
      | INT _v_0 ->
          _menhir_run_09 _menhir_stack _menhir_lexbuf _menhir_lexer _v_0 MenhirState43
      | ID _v_1 ->
          _menhir_run_10 _menhir_stack _menhir_lexbuf _menhir_lexer _v_1 MenhirState43
      | RIGHT_BRACKET ->
          let _v_2 = _menhir_action_03 () in
          _menhir_run_46 _menhir_stack _menhir_lexbuf _menhir_lexer _v_2
      | _ ->
          _eRR ()
  
  and _menhir_run_46 : type  ttv_stack. ((ttv_stack, _menhir_box_prog) _menhir_cell1_LEFT_BRACKET, _menhir_box_prog) _menhir_cell1_sae -> _ -> _ -> _ -> _menhir_box_prog =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v ->
      let _tok = _menhir_lexer _menhir_lexbuf in
      let MenhirCell1_sae (_menhir_stack, _, fun_expr) = _menhir_stack in
      let MenhirCell1_LEFT_BRACKET (_menhir_stack, _menhir_s) = _menhir_stack in
      let arg_exprs = _v in
      let _v = _menhir_action_15 arg_exprs fun_expr in
      _menhir_goto_sae _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
  
  and _menhir_run_44 : type  ttv_stack. ((ttv_stack, _menhir_box_prog) _menhir_cell1_sae as 'stack) -> _ -> _ -> _ -> ('stack, _menhir_box_prog) _menhir_state -> _ -> _menhir_box_prog =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok ->
      let _menhir_stack = MenhirCell1_sae (_menhir_stack, _menhir_s, _v) in
      match (_tok : MenhirBasics.token) with
      | LEFT_BRACKET ->
          _menhir_run_05 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState44
      | INT _v_0 ->
          _menhir_run_09 _menhir_stack _menhir_lexbuf _menhir_lexer _v_0 MenhirState44
      | ID _v_1 ->
          _menhir_run_10 _menhir_stack _menhir_lexbuf _menhir_lexer _v_1 MenhirState44
      | RIGHT_BRACKET ->
          let _v_2 = _menhir_action_03 () in
          _menhir_run_45 _menhir_stack _menhir_lexbuf _menhir_lexer _v_2 _tok
      | _ ->
          _eRR ()
  
  and _menhir_run_45 : type  ttv_stack. ((ttv_stack, _menhir_box_prog) _menhir_cell1_sae, _menhir_box_prog) _menhir_cell1_sae -> _ -> _ -> _ -> _ -> _menhir_box_prog =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok ->
      let MenhirCell1_sae (_menhir_stack, _menhir_s, x) = _menhir_stack in
      let xs = _v in
      let _v = _menhir_action_04 x xs in
      _menhir_goto_list_sae_ _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
  
  and _menhir_goto_list_sae_ : type  ttv_stack. ((ttv_stack, _menhir_box_prog) _menhir_cell1_sae as 'stack) -> _ -> _ -> _ -> ('stack, _menhir_box_prog) _menhir_state -> _ -> _menhir_box_prog =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok ->
      match _menhir_s with
      | MenhirState44 ->
          _menhir_run_45 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
      | MenhirState43 ->
          _menhir_run_46 _menhir_stack _menhir_lexbuf _menhir_lexer _v
      | MenhirState78 ->
          _menhir_run_79 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
      | _ ->
          _menhir_fail ()
  
  and _menhir_run_79 : type  ttv_stack. ((ttv_stack, _menhir_box_prog) _menhir_cell1_LEFT_BRACKET, _menhir_box_prog) _menhir_cell1_sae -> _ -> _ -> _ -> _ -> _menhir_box_prog =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok ->
      let MenhirCell1_sae (_menhir_stack, _, fun_expr) = _menhir_stack in
      let MenhirCell1_LEFT_BRACKET (_menhir_stack, _menhir_s) = _menhir_stack in
      let arg_exprs = _v in
      let _v = _menhir_action_15 arg_exprs fun_expr in
      _menhir_goto_sae _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
  
  and _menhir_run_48 : type  ttv_stack. (((ttv_stack, _menhir_box_prog) _menhir_cell1_LEFT_BRACKET, _menhir_box_prog) _menhir_cell1_WITH _menhir_cell0_ID as 'stack) -> _ -> _ -> _ -> ('stack, _menhir_box_prog) _menhir_state -> _ -> _menhir_box_prog =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok ->
      let _menhir_stack = MenhirCell1_sae (_menhir_stack, _menhir_s, _v) in
      match (_tok : MenhirBasics.token) with
      | RIGHT_BRACKET ->
          let _menhir_s = MenhirState49 in
          let _tok = _menhir_lexer _menhir_lexbuf in
          (match (_tok : MenhirBasics.token) with
          | LEFT_BRACKET ->
              _menhir_run_05 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
          | INT _v ->
              _menhir_run_09 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
          | ID _v ->
              _menhir_run_10 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
          | _ ->
              _eRR ())
      | _ ->
          _eRR ()
  
  and _menhir_run_50 : type  ttv_stack. (((ttv_stack, _menhir_box_prog) _menhir_cell1_LEFT_BRACKET, _menhir_box_prog) _menhir_cell1_WITH _menhir_cell0_ID, _menhir_box_prog) _menhir_cell1_sae -> _ -> _ -> _ -> _ -> _menhir_box_prog =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok ->
      match (_tok : MenhirBasics.token) with
      | RIGHT_BRACKET ->
          let MenhirCell1_sae (_menhir_stack, _, named_expr) = _menhir_stack in
          let MenhirCell0_ID (_menhir_stack, name) = _menhir_stack in
          let MenhirCell1_WITH (_menhir_stack, _) = _menhir_stack in
          let MenhirCell1_LEFT_BRACKET (_menhir_stack, _menhir_s) = _menhir_stack in
          let body = _v in
          let _v = _menhir_action_12 body name named_expr in
          _menhir_goto_sae _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | _ ->
          _eRR ()
  
  and _menhir_run_53 : type  ttv_stack. (((ttv_stack, _menhir_box_prog) _menhir_cell1_LEFT_BRACKET, _menhir_box_prog) _menhir_cell1_PLUS as 'stack) -> _ -> _ -> _ -> ('stack, _menhir_box_prog) _menhir_state -> _ -> _menhir_box_prog =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok ->
      let _menhir_stack = MenhirCell1_sae (_menhir_stack, _menhir_s, _v) in
      match (_tok : MenhirBasics.token) with
      | LEFT_BRACKET ->
          _menhir_run_05 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState53
      | INT _v_0 ->
          _menhir_run_09 _menhir_stack _menhir_lexbuf _menhir_lexer _v_0 MenhirState53
      | ID _v_1 ->
          _menhir_run_10 _menhir_stack _menhir_lexbuf _menhir_lexer _v_1 MenhirState53
      | _ ->
          _eRR ()
  
  and _menhir_run_54 : type  ttv_stack. (((ttv_stack, _menhir_box_prog) _menhir_cell1_LEFT_BRACKET, _menhir_box_prog) _menhir_cell1_PLUS, _menhir_box_prog) _menhir_cell1_sae -> _ -> _ -> _ -> _ -> _menhir_box_prog =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok ->
      match (_tok : MenhirBasics.token) with
      | RIGHT_BRACKET ->
          let MenhirCell1_sae (_menhir_stack, _, lhs) = _menhir_stack in
          let MenhirCell1_PLUS (_menhir_stack, _) = _menhir_stack in
          let MenhirCell1_LEFT_BRACKET (_menhir_stack, _menhir_s) = _menhir_stack in
          let rhs = _v in
          let _v = _menhir_action_08 lhs rhs in
          _menhir_goto_sae _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | _ ->
          _eRR ()
  
  and _menhir_run_57 : type  ttv_stack. (((ttv_stack, _menhir_box_prog) _menhir_cell1_LEFT_BRACKET, _menhir_box_prog) _menhir_cell1_MINUS as 'stack) -> _ -> _ -> _ -> ('stack, _menhir_box_prog) _menhir_state -> _ -> _menhir_box_prog =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok ->
      let _menhir_stack = MenhirCell1_sae (_menhir_stack, _menhir_s, _v) in
      match (_tok : MenhirBasics.token) with
      | LEFT_BRACKET ->
          _menhir_run_05 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState57
      | INT _v_0 ->
          _menhir_run_09 _menhir_stack _menhir_lexbuf _menhir_lexer _v_0 MenhirState57
      | ID _v_1 ->
          _menhir_run_10 _menhir_stack _menhir_lexbuf _menhir_lexer _v_1 MenhirState57
      | _ ->
          _eRR ()
  
  and _menhir_run_58 : type  ttv_stack. (((ttv_stack, _menhir_box_prog) _menhir_cell1_LEFT_BRACKET, _menhir_box_prog) _menhir_cell1_MINUS, _menhir_box_prog) _menhir_cell1_sae -> _ -> _ -> _ -> _ -> _menhir_box_prog =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok ->
      match (_tok : MenhirBasics.token) with
      | RIGHT_BRACKET ->
          let MenhirCell1_sae (_menhir_stack, _, lhs) = _menhir_stack in
          let MenhirCell1_MINUS (_menhir_stack, _) = _menhir_stack in
          let MenhirCell1_LEFT_BRACKET (_menhir_stack, _menhir_s) = _menhir_stack in
          let rhs = _v in
          let _v = _menhir_action_09 lhs rhs in
          _menhir_goto_sae _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | _ ->
          _eRR ()
  
  and _menhir_run_63 : type  ttv_stack. (((ttv_stack, _menhir_box_prog) _menhir_cell1_LEFT_BRACKET, _menhir_box_prog) _menhir_cell1_LET _menhir_cell0_ID as 'stack) -> _ -> _ -> _ -> ('stack, _menhir_box_prog) _menhir_state -> _ -> _menhir_box_prog =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok ->
      let _menhir_stack = MenhirCell1_sae (_menhir_stack, _menhir_s, _v) in
      match (_tok : MenhirBasics.token) with
      | RIGHT_BRACKET ->
          let _menhir_s = MenhirState64 in
          let _tok = _menhir_lexer _menhir_lexbuf in
          (match (_tok : MenhirBasics.token) with
          | LEFT_BRACKET ->
              _menhir_run_05 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
          | INT _v ->
              _menhir_run_09 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
          | ID _v ->
              _menhir_run_10 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
          | _ ->
              _eRR ())
      | _ ->
          _eRR ()
  
  and _menhir_run_65 : type  ttv_stack. (((ttv_stack, _menhir_box_prog) _menhir_cell1_LEFT_BRACKET, _menhir_box_prog) _menhir_cell1_LET _menhir_cell0_ID, _menhir_box_prog) _menhir_cell1_sae -> _ -> _ -> _ -> _ -> _menhir_box_prog =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok ->
      match (_tok : MenhirBasics.token) with
      | RIGHT_BRACKET ->
          let MenhirCell1_sae (_menhir_stack, _, named_expr) = _menhir_stack in
          let MenhirCell0_ID (_menhir_stack, name) = _menhir_stack in
          let MenhirCell1_LET (_menhir_stack, _) = _menhir_stack in
          let MenhirCell1_LEFT_BRACKET (_menhir_stack, _menhir_s) = _menhir_stack in
          let body = _v in
          let _v = _menhir_action_13 body name named_expr in
          _menhir_goto_sae _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | _ ->
          _eRR ()
  
  and _menhir_run_68 : type  ttv_stack. (((ttv_stack, _menhir_box_prog) _menhir_cell1_LEFT_BRACKET, _menhir_box_prog) _menhir_cell1_IF0 as 'stack) -> _ -> _ -> _ -> ('stack, _menhir_box_prog) _menhir_state -> _ -> _menhir_box_prog =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok ->
      let _menhir_stack = MenhirCell1_sae (_menhir_stack, _menhir_s, _v) in
      match (_tok : MenhirBasics.token) with
      | LEFT_BRACKET ->
          _menhir_run_05 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState68
      | INT _v_0 ->
          _menhir_run_09 _menhir_stack _menhir_lexbuf _menhir_lexer _v_0 MenhirState68
      | ID _v_1 ->
          _menhir_run_10 _menhir_stack _menhir_lexbuf _menhir_lexer _v_1 MenhirState68
      | _ ->
          _eRR ()
  
  and _menhir_run_69 : type  ttv_stack. ((((ttv_stack, _menhir_box_prog) _menhir_cell1_LEFT_BRACKET, _menhir_box_prog) _menhir_cell1_IF0, _menhir_box_prog) _menhir_cell1_sae as 'stack) -> _ -> _ -> _ -> ('stack, _menhir_box_prog) _menhir_state -> _ -> _menhir_box_prog =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok ->
      let _menhir_stack = MenhirCell1_sae (_menhir_stack, _menhir_s, _v) in
      match (_tok : MenhirBasics.token) with
      | LEFT_BRACKET ->
          _menhir_run_05 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState69
      | INT _v_0 ->
          _menhir_run_09 _menhir_stack _menhir_lexbuf _menhir_lexer _v_0 MenhirState69
      | ID _v_1 ->
          _menhir_run_10 _menhir_stack _menhir_lexbuf _menhir_lexer _v_1 MenhirState69
      | _ ->
          _eRR ()
  
  and _menhir_run_70 : type  ttv_stack. ((((ttv_stack, _menhir_box_prog) _menhir_cell1_LEFT_BRACKET, _menhir_box_prog) _menhir_cell1_IF0, _menhir_box_prog) _menhir_cell1_sae, _menhir_box_prog) _menhir_cell1_sae -> _ -> _ -> _ -> _ -> _menhir_box_prog =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok ->
      match (_tok : MenhirBasics.token) with
      | RIGHT_BRACKET ->
          let MenhirCell1_sae (_menhir_stack, _, thn) = _menhir_stack in
          let MenhirCell1_sae (_menhir_stack, _, test) = _menhir_stack in
          let MenhirCell1_IF0 (_menhir_stack, _) = _menhir_stack in
          let MenhirCell1_LEFT_BRACKET (_menhir_stack, _menhir_s) = _menhir_stack in
          let els = _v in
          let _v = _menhir_action_11 els test thn in
          _menhir_goto_sae _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | _ ->
          _eRR ()
  
  and _menhir_run_76 : type  ttv_stack. (((ttv_stack, _menhir_box_prog) _menhir_cell1_LEFT_BRACKET, _menhir_box_prog) _menhir_cell1_FUN, _menhir_box_prog) _menhir_cell1_list_ID_ -> _ -> _ -> _ -> _ -> _menhir_box_prog =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok ->
      match (_tok : MenhirBasics.token) with
      | RIGHT_BRACKET ->
          let MenhirCell1_list_ID_ (_menhir_stack, _, param_names) = _menhir_stack in
          let MenhirCell1_FUN (_menhir_stack, _) = _menhir_stack in
          let MenhirCell1_LEFT_BRACKET (_menhir_stack, _menhir_s) = _menhir_stack in
          let body = _v in
          let _v = _menhir_action_14 body param_names in
          _menhir_goto_sae _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | _ ->
          _eRR ()
  
  and _menhir_run_78 : type  ttv_stack. ((ttv_stack, _menhir_box_prog) _menhir_cell1_LEFT_BRACKET as 'stack) -> _ -> _ -> _ -> ('stack, _menhir_box_prog) _menhir_state -> _ -> _menhir_box_prog =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok ->
      let _menhir_stack = MenhirCell1_sae (_menhir_stack, _menhir_s, _v) in
      match (_tok : MenhirBasics.token) with
      | LEFT_BRACKET ->
          _menhir_run_05 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState78
      | INT _v_0 ->
          _menhir_run_09 _menhir_stack _menhir_lexbuf _menhir_lexer _v_0 MenhirState78
      | ID _v_1 ->
          _menhir_run_10 _menhir_stack _menhir_lexbuf _menhir_lexer _v_1 MenhirState78
      | RIGHT_BRACKET ->
          let _v_2 = _menhir_action_03 () in
          _menhir_run_79 _menhir_stack _menhir_lexbuf _menhir_lexer _v_2 _tok
      | _ ->
          _eRR ()
  
  and _menhir_run_37 : type  ttv_stack. ttv_stack -> _ -> _ -> _ -> (ttv_stack, _menhir_box_prog) _menhir_state -> _menhir_box_prog =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s ->
      let _menhir_stack = MenhirCell1_ID (_menhir_stack, _menhir_s, _v) in
      let _tok = _menhir_lexer _menhir_lexbuf in
      match (_tok : MenhirBasics.token) with
      | ID _v_0 ->
          _menhir_run_37 _menhir_stack _menhir_lexbuf _menhir_lexer _v_0 MenhirState37
      | RIGHT_BRACKET ->
          let _v_1 = _menhir_action_01 () in
          _menhir_run_38 _menhir_stack _menhir_lexbuf _menhir_lexer _v_1
      | _ ->
          _eRR ()
  
  and _menhir_run_38 : type  ttv_stack. (ttv_stack, _menhir_box_prog) _menhir_cell1_ID -> _ -> _ -> _ -> _menhir_box_prog =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v ->
      let MenhirCell1_ID (_menhir_stack, _menhir_s, x) = _menhir_stack in
      let xs = _v in
      let _v = _menhir_action_02 x xs in
      _menhir_goto_list_ID_ _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
  
  and _menhir_goto_list_ID_ : type  ttv_stack. ttv_stack -> _ -> _ -> _ -> (ttv_stack, _menhir_box_prog) _menhir_state -> _menhir_box_prog =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s ->
      match _menhir_s with
      | MenhirState37 ->
          _menhir_run_38 _menhir_stack _menhir_lexbuf _menhir_lexer _v
      | MenhirState36 ->
          _menhir_run_39 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | MenhirState73 ->
          _menhir_run_74 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | _ ->
          _menhir_fail ()
  
  and _menhir_run_39 : type  ttv_stack. (((ttv_stack, _menhir_box_prog) _menhir_cell1_LEFT_BRACKET, _menhir_box_prog) _menhir_cell1_FUN as 'stack) -> _ -> _ -> _ -> ('stack, _menhir_box_prog) _menhir_state -> _menhir_box_prog =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s ->
      let _menhir_stack = MenhirCell1_list_ID_ (_menhir_stack, _menhir_s, _v) in
      let _menhir_s = MenhirState40 in
      let _tok = _menhir_lexer _menhir_lexbuf in
      match (_tok : MenhirBasics.token) with
      | LEFT_BRACKET ->
          _menhir_run_05 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | INT _v ->
          _menhir_run_09 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | ID _v ->
          _menhir_run_10 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | _ ->
          _eRR ()
  
  and _menhir_run_74 : type  ttv_stack. (((ttv_stack, _menhir_box_prog) _menhir_cell1_LEFT_BRACKET, _menhir_box_prog) _menhir_cell1_FUN as 'stack) -> _ -> _ -> _ -> ('stack, _menhir_box_prog) _menhir_state -> _menhir_box_prog =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s ->
      let _menhir_stack = MenhirCell1_list_ID_ (_menhir_stack, _menhir_s, _v) in
      let _menhir_s = MenhirState75 in
      let _tok = _menhir_lexer _menhir_lexbuf in
      match (_tok : MenhirBasics.token) with
      | LEFT_BRACKET ->
          _menhir_run_05 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | INT _v ->
          _menhir_run_09 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | ID _v ->
          _menhir_run_10 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | _ ->
          _eRR ()
  
  let _menhir_run_00 : type  ttv_stack. ttv_stack -> _ -> _ -> _menhir_box_prog =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer ->
      let _tok = _menhir_lexer _menhir_lexbuf in
      match (_tok : MenhirBasics.token) with
      | LEFT_BRACKET ->
          let _menhir_stack = MenhirCell1_LEFT_BRACKET (_menhir_stack, MenhirState00) in
          let _tok = _menhir_lexer _menhir_lexbuf in
          (match (_tok : MenhirBasics.token) with
          | WITH ->
              let _menhir_stack = MenhirCell1_WITH (_menhir_stack, MenhirState01) in
              let _tok = _menhir_lexer _menhir_lexbuf in
              (match (_tok : MenhirBasics.token) with
              | LEFT_BRACKET ->
                  let _tok = _menhir_lexer _menhir_lexbuf in
                  (match (_tok : MenhirBasics.token) with
                  | ID _v ->
                      let _menhir_stack = MenhirCell0_ID (_menhir_stack, _v) in
                      let _menhir_s = MenhirState04 in
                      let _tok = _menhir_lexer _menhir_lexbuf in
                      (match (_tok : MenhirBasics.token) with
                      | LEFT_BRACKET ->
                          _menhir_run_05 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
                      | INT _v ->
                          _menhir_run_09 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
                      | ID _v ->
                          _menhir_run_10 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
                      | _ ->
                          _eRR ())
                  | _ ->
                      _eRR ())
              | _ ->
                  _eRR ())
          | PLUS ->
              let _menhir_stack = MenhirCell1_PLUS (_menhir_stack, MenhirState01) in
              let _menhir_s = MenhirState52 in
              let _tok = _menhir_lexer _menhir_lexbuf in
              (match (_tok : MenhirBasics.token) with
              | LEFT_BRACKET ->
                  _menhir_run_05 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
              | INT _v ->
                  _menhir_run_09 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
              | ID _v ->
                  _menhir_run_10 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
              | _ ->
                  _eRR ())
          | MINUS ->
              let _menhir_stack = MenhirCell1_MINUS (_menhir_stack, MenhirState01) in
              let _menhir_s = MenhirState56 in
              let _tok = _menhir_lexer _menhir_lexbuf in
              (match (_tok : MenhirBasics.token) with
              | LEFT_BRACKET ->
                  _menhir_run_05 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
              | INT _v ->
                  _menhir_run_09 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
              | ID _v ->
                  _menhir_run_10 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
              | _ ->
                  _eRR ())
          | LET ->
              let _menhir_stack = MenhirCell1_LET (_menhir_stack, MenhirState01) in
              let _tok = _menhir_lexer _menhir_lexbuf in
              (match (_tok : MenhirBasics.token) with
              | LEFT_BRACKET ->
                  let _tok = _menhir_lexer _menhir_lexbuf in
                  (match (_tok : MenhirBasics.token) with
                  | ID _v ->
                      let _menhir_stack = MenhirCell0_ID (_menhir_stack, _v) in
                      let _menhir_s = MenhirState62 in
                      let _tok = _menhir_lexer _menhir_lexbuf in
                      (match (_tok : MenhirBasics.token) with
                      | LEFT_BRACKET ->
                          _menhir_run_05 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
                      | INT _v ->
                          _menhir_run_09 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
                      | ID _v ->
                          _menhir_run_10 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
                      | _ ->
                          _eRR ())
                  | _ ->
                      _eRR ())
              | _ ->
                  _eRR ())
          | LEFT_BRACKET ->
              _menhir_run_05 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState01
          | INT _v ->
              _menhir_run_09 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState01
          | IF0 ->
              let _menhir_stack = MenhirCell1_IF0 (_menhir_stack, MenhirState01) in
              let _menhir_s = MenhirState67 in
              let _tok = _menhir_lexer _menhir_lexbuf in
              (match (_tok : MenhirBasics.token) with
              | LEFT_BRACKET ->
                  _menhir_run_05 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
              | INT _v ->
                  _menhir_run_09 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
              | ID _v ->
                  _menhir_run_10 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
              | _ ->
                  _eRR ())
          | ID _v ->
              _menhir_run_10 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState01
          | FUN ->
              let _menhir_stack = MenhirCell1_FUN (_menhir_stack, MenhirState01) in
              let _tok = _menhir_lexer _menhir_lexbuf in
              (match (_tok : MenhirBasics.token) with
              | LEFT_BRACKET ->
                  let _tok = _menhir_lexer _menhir_lexbuf in
                  (match (_tok : MenhirBasics.token) with
                  | ID _v ->
                      _menhir_run_37 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState73
                  | RIGHT_BRACKET ->
                      let _v = _menhir_action_01 () in
                      _menhir_run_74 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState73
                  | _ ->
                      _eRR ())
              | _ ->
                  _eRR ())
          | _ ->
              _eRR ())
      | INT _v ->
          let _v =
            let i = _v in
            _menhir_action_07 i
          in
          _menhir_run_84 _menhir_stack _v
      | ID _v ->
          let _v =
            let i = _v in
            _menhir_action_10 i
          in
          _menhir_run_84 _menhir_stack _v
      | EOF ->
          let _v = _menhir_action_05 () in
          _menhir_goto_prog _menhir_stack _v
      | _ ->
          _eRR ()
  
end

let prog =
  fun _menhir_lexer _menhir_lexbuf ->
    let _menhir_stack = () in
    let MenhirBox_prog v = _menhir_run_00 _menhir_stack _menhir_lexbuf _menhir_lexer in
    v
