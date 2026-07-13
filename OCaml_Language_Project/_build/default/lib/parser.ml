
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
    | LEFT_BRACKET
    | INT of 
# 5 "lib/parser.mly"
       (int)
# 20 "lib/parser.ml"
  
    | IF0
    | ID of 
# 6 "lib/parser.mly"
       (string)
# 26 "lib/parser.ml"
  
    | FUN
    | EOF
  
end

include MenhirBasics

# 1 "lib/parser.mly"
  
  open Syntax

# 39 "lib/parser.ml"

type ('s, 'r) _menhir_state = 
  | MenhirState00 : ('s, _menhir_box_prog) _menhir_state
    (** State 00.
        Stack shape : <empty>.
        Start symbol: prog. *)

  | MenhirState01 : (('s, _menhir_box_prog) _menhir_cell1_LEFT_BRACKET, _menhir_box_prog) _menhir_state
    (** State 01.
        Stack shape : LEFT_BRACKET.
        Start symbol: prog. *)

  | MenhirState03 : ((('s, _menhir_box_prog) _menhir_cell1_LEFT_BRACKET, _menhir_box_prog) _menhir_cell1_WITH _menhir_cell0_ID, _menhir_box_prog) _menhir_state
    (** State 03.
        Stack shape : LEFT_BRACKET WITH ID.
        Start symbol: prog. *)

  | MenhirState04 : (('s, _menhir_box_prog) _menhir_cell1_LEFT_BRACKET, _menhir_box_prog) _menhir_state
    (** State 04.
        Stack shape : LEFT_BRACKET.
        Start symbol: prog. *)

  | MenhirState06 : ((('s, _menhir_box_prog) _menhir_cell1_LEFT_BRACKET, _menhir_box_prog) _menhir_cell1_WITH _menhir_cell0_ID, _menhir_box_prog) _menhir_state
    (** State 06.
        Stack shape : LEFT_BRACKET WITH ID.
        Start symbol: prog. *)

  | MenhirState09 : (((('s, _menhir_box_prog) _menhir_cell1_LEFT_BRACKET, _menhir_box_prog) _menhir_cell1_WITH _menhir_cell0_ID, _menhir_box_prog) _menhir_cell1_sae, _menhir_box_prog) _menhir_state
    (** State 09.
        Stack shape : LEFT_BRACKET WITH ID sae.
        Start symbol: prog. *)

  | MenhirState12 : ((('s, _menhir_box_prog) _menhir_cell1_LEFT_BRACKET, _menhir_box_prog) _menhir_cell1_PLUS, _menhir_box_prog) _menhir_state
    (** State 12.
        Stack shape : LEFT_BRACKET PLUS.
        Start symbol: prog. *)

  | MenhirState13 : (((('s, _menhir_box_prog) _menhir_cell1_LEFT_BRACKET, _menhir_box_prog) _menhir_cell1_PLUS, _menhir_box_prog) _menhir_cell1_sae, _menhir_box_prog) _menhir_state
    (** State 13.
        Stack shape : LEFT_BRACKET PLUS sae.
        Start symbol: prog. *)

  | MenhirState16 : ((('s, _menhir_box_prog) _menhir_cell1_LEFT_BRACKET, _menhir_box_prog) _menhir_cell1_MINUS, _menhir_box_prog) _menhir_state
    (** State 16.
        Stack shape : LEFT_BRACKET MINUS.
        Start symbol: prog. *)

  | MenhirState17 : (((('s, _menhir_box_prog) _menhir_cell1_LEFT_BRACKET, _menhir_box_prog) _menhir_cell1_MINUS, _menhir_box_prog) _menhir_cell1_sae, _menhir_box_prog) _menhir_state
    (** State 17.
        Stack shape : LEFT_BRACKET MINUS sae.
        Start symbol: prog. *)

  | MenhirState20 : ((('s, _menhir_box_prog) _menhir_cell1_LEFT_BRACKET, _menhir_box_prog) _menhir_cell1_IF0, _menhir_box_prog) _menhir_state
    (** State 20.
        Stack shape : LEFT_BRACKET IF0.
        Start symbol: prog. *)

  | MenhirState21 : (((('s, _menhir_box_prog) _menhir_cell1_LEFT_BRACKET, _menhir_box_prog) _menhir_cell1_IF0, _menhir_box_prog) _menhir_cell1_sae, _menhir_box_prog) _menhir_state
    (** State 21.
        Stack shape : LEFT_BRACKET IF0 sae.
        Start symbol: prog. *)

  | MenhirState22 : ((((('s, _menhir_box_prog) _menhir_cell1_LEFT_BRACKET, _menhir_box_prog) _menhir_cell1_IF0, _menhir_box_prog) _menhir_cell1_sae, _menhir_box_prog) _menhir_cell1_sae, _menhir_box_prog) _menhir_state
    (** State 22.
        Stack shape : LEFT_BRACKET IF0 sae sae.
        Start symbol: prog. *)

  | MenhirState26 : ((('s, _menhir_box_prog) _menhir_cell1_LEFT_BRACKET, _menhir_box_prog) _menhir_cell1_FUN, _menhir_box_prog) _menhir_state
    (** State 26.
        Stack shape : LEFT_BRACKET FUN.
        Start symbol: prog. *)

  | MenhirState27 : (('s, _menhir_box_prog) _menhir_cell1_ID, _menhir_box_prog) _menhir_state
    (** State 27.
        Stack shape : ID.
        Start symbol: prog. *)

  | MenhirState30 : (((('s, _menhir_box_prog) _menhir_cell1_LEFT_BRACKET, _menhir_box_prog) _menhir_cell1_FUN, _menhir_box_prog) _menhir_cell1_list_ID_, _menhir_box_prog) _menhir_state
    (** State 30.
        Stack shape : LEFT_BRACKET FUN list(ID).
        Start symbol: prog. *)

  | MenhirState33 : ((('s, _menhir_box_prog) _menhir_cell1_LEFT_BRACKET, _menhir_box_prog) _menhir_cell1_sae, _menhir_box_prog) _menhir_state
    (** State 33.
        Stack shape : LEFT_BRACKET sae.
        Start symbol: prog. *)

  | MenhirState34 : ((('s, _menhir_box_prog) _menhir_cell1_sae, _menhir_box_prog) _menhir_cell1_sae, _menhir_box_prog) _menhir_state
    (** State 34.
        Stack shape : sae sae.
        Start symbol: prog. *)

  | MenhirState38 : (((('s, _menhir_box_prog) _menhir_cell1_LEFT_BRACKET, _menhir_box_prog) _menhir_cell1_WITH _menhir_cell0_ID, _menhir_box_prog) _menhir_cell1_sae, _menhir_box_prog) _menhir_state
    (** State 38.
        Stack shape : LEFT_BRACKET WITH ID sae.
        Start symbol: prog. *)

  | MenhirState41 : ((('s, _menhir_box_prog) _menhir_cell1_LEFT_BRACKET, _menhir_box_prog) _menhir_cell1_PLUS, _menhir_box_prog) _menhir_state
    (** State 41.
        Stack shape : LEFT_BRACKET PLUS.
        Start symbol: prog. *)

  | MenhirState42 : (((('s, _menhir_box_prog) _menhir_cell1_LEFT_BRACKET, _menhir_box_prog) _menhir_cell1_PLUS, _menhir_box_prog) _menhir_cell1_sae, _menhir_box_prog) _menhir_state
    (** State 42.
        Stack shape : LEFT_BRACKET PLUS sae.
        Start symbol: prog. *)

  | MenhirState45 : ((('s, _menhir_box_prog) _menhir_cell1_LEFT_BRACKET, _menhir_box_prog) _menhir_cell1_MINUS, _menhir_box_prog) _menhir_state
    (** State 45.
        Stack shape : LEFT_BRACKET MINUS.
        Start symbol: prog. *)

  | MenhirState46 : (((('s, _menhir_box_prog) _menhir_cell1_LEFT_BRACKET, _menhir_box_prog) _menhir_cell1_MINUS, _menhir_box_prog) _menhir_cell1_sae, _menhir_box_prog) _menhir_state
    (** State 46.
        Stack shape : LEFT_BRACKET MINUS sae.
        Start symbol: prog. *)

  | MenhirState49 : ((('s, _menhir_box_prog) _menhir_cell1_LEFT_BRACKET, _menhir_box_prog) _menhir_cell1_IF0, _menhir_box_prog) _menhir_state
    (** State 49.
        Stack shape : LEFT_BRACKET IF0.
        Start symbol: prog. *)

  | MenhirState50 : (((('s, _menhir_box_prog) _menhir_cell1_LEFT_BRACKET, _menhir_box_prog) _menhir_cell1_IF0, _menhir_box_prog) _menhir_cell1_sae, _menhir_box_prog) _menhir_state
    (** State 50.
        Stack shape : LEFT_BRACKET IF0 sae.
        Start symbol: prog. *)

  | MenhirState51 : ((((('s, _menhir_box_prog) _menhir_cell1_LEFT_BRACKET, _menhir_box_prog) _menhir_cell1_IF0, _menhir_box_prog) _menhir_cell1_sae, _menhir_box_prog) _menhir_cell1_sae, _menhir_box_prog) _menhir_state
    (** State 51.
        Stack shape : LEFT_BRACKET IF0 sae sae.
        Start symbol: prog. *)

  | MenhirState55 : ((('s, _menhir_box_prog) _menhir_cell1_LEFT_BRACKET, _menhir_box_prog) _menhir_cell1_FUN, _menhir_box_prog) _menhir_state
    (** State 55.
        Stack shape : LEFT_BRACKET FUN.
        Start symbol: prog. *)

  | MenhirState57 : (((('s, _menhir_box_prog) _menhir_cell1_LEFT_BRACKET, _menhir_box_prog) _menhir_cell1_FUN, _menhir_box_prog) _menhir_cell1_list_ID_, _menhir_box_prog) _menhir_state
    (** State 57.
        Stack shape : LEFT_BRACKET FUN list(ID).
        Start symbol: prog. *)

  | MenhirState60 : ((('s, _menhir_box_prog) _menhir_cell1_LEFT_BRACKET, _menhir_box_prog) _menhir_cell1_sae, _menhir_box_prog) _menhir_state
    (** State 60.
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
# 201 "lib/parser.ml"


and 's _menhir_cell0_ID = 
  | MenhirCell0_ID of 's * 
# 6 "lib/parser.mly"
       (string)
# 208 "lib/parser.ml"


and ('s, 'r) _menhir_cell1_IF0 = 
  | MenhirCell1_IF0 of 's * ('s, 'r) _menhir_state

and ('s, 'r) _menhir_cell1_LEFT_BRACKET = 
  | MenhirCell1_LEFT_BRACKET of 's * ('s, 'r) _menhir_state

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
# 234 "lib/parser.ml"
     : (string list))

let _menhir_action_02 =
  fun x xs ->
    (
# 219 "<standard.mly>"
    ( x :: xs )
# 242 "lib/parser.ml"
     : (string list))

let _menhir_action_03 =
  fun () ->
    (
# 216 "<standard.mly>"
    ( [] )
# 250 "lib/parser.ml"
     : (Syntax.sae list))

let _menhir_action_04 =
  fun x xs ->
    (
# 219 "<standard.mly>"
    ( x :: xs )
# 258 "lib/parser.ml"
     : (Syntax.sae list))

let _menhir_action_05 =
  fun () ->
    (
# 19 "lib/parser.mly"
              ( None )
# 266 "lib/parser.ml"
     : (Syntax.sae option))

let _menhir_action_06 =
  fun v ->
    (
# 20 "lib/parser.mly"
            ( Some v )
# 274 "lib/parser.ml"
     : (Syntax.sae option))

let _menhir_action_07 =
  fun i ->
    (
# 25 "lib/parser.mly"
    (SNum {n = i} )
# 282 "lib/parser.ml"
     : (Syntax.sae))

let _menhir_action_08 =
  fun lhs rhs ->
    (
# 27 "lib/parser.mly"
    (SAdd {lhs; rhs} )
# 290 "lib/parser.ml"
     : (Syntax.sae))

let _menhir_action_09 =
  fun lhs rhs ->
    (
# 29 "lib/parser.mly"
    (SSub {lhs; rhs} )
# 298 "lib/parser.ml"
     : (Syntax.sae))

let _menhir_action_10 =
  fun i ->
    (
# 31 "lib/parser.mly"
    (SId {name = i})
# 306 "lib/parser.ml"
     : (Syntax.sae))

let _menhir_action_11 =
  fun els test thn ->
    (
# 33 "lib/parser.mly"
    (SIf0 {test; thn; els})
# 314 "lib/parser.ml"
     : (Syntax.sae))

let _menhir_action_12 =
  fun body name named_expr ->
    (
# 35 "lib/parser.mly"
    (SWith {name; named_expr; body})
# 322 "lib/parser.ml"
     : (Syntax.sae))

let _menhir_action_13 =
  fun body param_names ->
    (
# 37 "lib/parser.mly"
    (SFunc {param_names; body})
# 330 "lib/parser.ml"
     : (Syntax.sae))

let _menhir_action_14 =
  fun arg_exprs fun_expr ->
    (
# 39 "lib/parser.mly"
    (SApp {fun_expr; arg_exprs})
# 338 "lib/parser.ml"
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
  
  let _menhir_run_66 : type  ttv_stack. ttv_stack -> _ -> _menhir_box_prog =
    fun _menhir_stack _v ->
      let v = _v in
      let _v = _menhir_action_06 v in
      _menhir_goto_prog _menhir_stack _v
  
  let rec _menhir_run_04 : type  ttv_stack. ttv_stack -> _ -> _ -> (ttv_stack, _menhir_box_prog) _menhir_state -> _menhir_box_prog =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s ->
      let _menhir_stack = MenhirCell1_LEFT_BRACKET (_menhir_stack, _menhir_s) in
      let _tok = _menhir_lexer _menhir_lexbuf in
      match (_tok : MenhirBasics.token) with
      | WITH ->
          let _menhir_stack = MenhirCell1_WITH (_menhir_stack, MenhirState04) in
          let _tok = _menhir_lexer _menhir_lexbuf in
          (match (_tok : MenhirBasics.token) with
          | ID _v ->
              let _menhir_stack = MenhirCell0_ID (_menhir_stack, _v) in
              let _menhir_s = MenhirState06 in
              let _tok = _menhir_lexer _menhir_lexbuf in
              (match (_tok : MenhirBasics.token) with
              | LEFT_BRACKET ->
                  _menhir_run_04 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
              | INT _v ->
                  _menhir_run_07 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
              | ID _v ->
                  _menhir_run_08 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
              | _ ->
                  _eRR ())
          | _ ->
              _eRR ())
      | PLUS ->
          let _menhir_stack = MenhirCell1_PLUS (_menhir_stack, MenhirState04) in
          let _menhir_s = MenhirState12 in
          let _tok = _menhir_lexer _menhir_lexbuf in
          (match (_tok : MenhirBasics.token) with
          | LEFT_BRACKET ->
              _menhir_run_04 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
          | INT _v ->
              _menhir_run_07 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
          | ID _v ->
              _menhir_run_08 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
          | _ ->
              _eRR ())
      | MINUS ->
          let _menhir_stack = MenhirCell1_MINUS (_menhir_stack, MenhirState04) in
          let _menhir_s = MenhirState16 in
          let _tok = _menhir_lexer _menhir_lexbuf in
          (match (_tok : MenhirBasics.token) with
          | LEFT_BRACKET ->
              _menhir_run_04 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
          | INT _v ->
              _menhir_run_07 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
          | ID _v ->
              _menhir_run_08 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
          | _ ->
              _eRR ())
      | LEFT_BRACKET ->
          _menhir_run_04 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState04
      | INT _v ->
          _menhir_run_07 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState04
      | IF0 ->
          let _menhir_stack = MenhirCell1_IF0 (_menhir_stack, MenhirState04) in
          let _menhir_s = MenhirState20 in
          let _tok = _menhir_lexer _menhir_lexbuf in
          (match (_tok : MenhirBasics.token) with
          | LEFT_BRACKET ->
              _menhir_run_04 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
          | INT _v ->
              _menhir_run_07 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
          | ID _v ->
              _menhir_run_08 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
          | _ ->
              _eRR ())
      | ID _v ->
          _menhir_run_08 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState04
      | FUN ->
          let _menhir_stack = MenhirCell1_FUN (_menhir_stack, MenhirState04) in
          let _tok = _menhir_lexer _menhir_lexbuf in
          (match (_tok : MenhirBasics.token) with
          | LEFT_BRACKET ->
              let _tok = _menhir_lexer _menhir_lexbuf in
              (match (_tok : MenhirBasics.token) with
              | ID _v ->
                  _menhir_run_27 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState26
              | RIGHT_BRACKET ->
                  let _v = _menhir_action_01 () in
                  _menhir_run_29 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState26
              | _ ->
                  _eRR ())
          | _ ->
              _eRR ())
      | _ ->
          _eRR ()
  
  and _menhir_run_07 : type  ttv_stack. ttv_stack -> _ -> _ -> _ -> (ttv_stack, _menhir_box_prog) _menhir_state -> _menhir_box_prog =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s ->
      let _tok = _menhir_lexer _menhir_lexbuf in
      let i = _v in
      let _v = _menhir_action_07 i in
      _menhir_goto_sae _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
  
  and _menhir_goto_sae : type  ttv_stack. ttv_stack -> _ -> _ -> _ -> (ttv_stack, _menhir_box_prog) _menhir_state -> _ -> _menhir_box_prog =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok ->
      match _menhir_s with
      | MenhirState06 ->
          _menhir_run_09 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState09 ->
          _menhir_run_10 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
      | MenhirState12 ->
          _menhir_run_13 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState13 ->
          _menhir_run_14 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
      | MenhirState16 ->
          _menhir_run_17 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState17 ->
          _menhir_run_18 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
      | MenhirState20 ->
          _menhir_run_21 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState21 ->
          _menhir_run_22 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState22 ->
          _menhir_run_23 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
      | MenhirState30 ->
          _menhir_run_31 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
      | MenhirState04 ->
          _menhir_run_33 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState33 ->
          _menhir_run_34 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState34 ->
          _menhir_run_34 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState60 ->
          _menhir_run_34 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState03 ->
          _menhir_run_38 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState38 ->
          _menhir_run_39 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
      | MenhirState41 ->
          _menhir_run_42 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState42 ->
          _menhir_run_43 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
      | MenhirState45 ->
          _menhir_run_46 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState46 ->
          _menhir_run_47 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
      | MenhirState49 ->
          _menhir_run_50 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState50 ->
          _menhir_run_51 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState51 ->
          _menhir_run_52 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
      | MenhirState57 ->
          _menhir_run_58 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
      | MenhirState01 ->
          _menhir_run_60 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState00 ->
          _menhir_run_66 _menhir_stack _v
      | _ ->
          _menhir_fail ()
  
  and _menhir_run_09 : type  ttv_stack. (((ttv_stack, _menhir_box_prog) _menhir_cell1_LEFT_BRACKET, _menhir_box_prog) _menhir_cell1_WITH _menhir_cell0_ID as 'stack) -> _ -> _ -> _ -> ('stack, _menhir_box_prog) _menhir_state -> _ -> _menhir_box_prog =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok ->
      let _menhir_stack = MenhirCell1_sae (_menhir_stack, _menhir_s, _v) in
      match (_tok : MenhirBasics.token) with
      | LEFT_BRACKET ->
          _menhir_run_04 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState09
      | INT _v_0 ->
          _menhir_run_07 _menhir_stack _menhir_lexbuf _menhir_lexer _v_0 MenhirState09
      | ID _v_1 ->
          _menhir_run_08 _menhir_stack _menhir_lexbuf _menhir_lexer _v_1 MenhirState09
      | _ ->
          _eRR ()
  
  and _menhir_run_08 : type  ttv_stack. ttv_stack -> _ -> _ -> _ -> (ttv_stack, _menhir_box_prog) _menhir_state -> _menhir_box_prog =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s ->
      let _tok = _menhir_lexer _menhir_lexbuf in
      let i = _v in
      let _v = _menhir_action_10 i in
      _menhir_goto_sae _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
  
  and _menhir_run_10 : type  ttv_stack. (((ttv_stack, _menhir_box_prog) _menhir_cell1_LEFT_BRACKET, _menhir_box_prog) _menhir_cell1_WITH _menhir_cell0_ID, _menhir_box_prog) _menhir_cell1_sae -> _ -> _ -> _ -> _ -> _menhir_box_prog =
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
  
  and _menhir_run_13 : type  ttv_stack. (((ttv_stack, _menhir_box_prog) _menhir_cell1_LEFT_BRACKET, _menhir_box_prog) _menhir_cell1_PLUS as 'stack) -> _ -> _ -> _ -> ('stack, _menhir_box_prog) _menhir_state -> _ -> _menhir_box_prog =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok ->
      let _menhir_stack = MenhirCell1_sae (_menhir_stack, _menhir_s, _v) in
      match (_tok : MenhirBasics.token) with
      | LEFT_BRACKET ->
          _menhir_run_04 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState13
      | INT _v_0 ->
          _menhir_run_07 _menhir_stack _menhir_lexbuf _menhir_lexer _v_0 MenhirState13
      | ID _v_1 ->
          _menhir_run_08 _menhir_stack _menhir_lexbuf _menhir_lexer _v_1 MenhirState13
      | _ ->
          _eRR ()
  
  and _menhir_run_14 : type  ttv_stack. (((ttv_stack, _menhir_box_prog) _menhir_cell1_LEFT_BRACKET, _menhir_box_prog) _menhir_cell1_PLUS, _menhir_box_prog) _menhir_cell1_sae -> _ -> _ -> _ -> _ -> _menhir_box_prog =
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
  
  and _menhir_run_17 : type  ttv_stack. (((ttv_stack, _menhir_box_prog) _menhir_cell1_LEFT_BRACKET, _menhir_box_prog) _menhir_cell1_MINUS as 'stack) -> _ -> _ -> _ -> ('stack, _menhir_box_prog) _menhir_state -> _ -> _menhir_box_prog =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok ->
      let _menhir_stack = MenhirCell1_sae (_menhir_stack, _menhir_s, _v) in
      match (_tok : MenhirBasics.token) with
      | LEFT_BRACKET ->
          _menhir_run_04 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState17
      | INT _v_0 ->
          _menhir_run_07 _menhir_stack _menhir_lexbuf _menhir_lexer _v_0 MenhirState17
      | ID _v_1 ->
          _menhir_run_08 _menhir_stack _menhir_lexbuf _menhir_lexer _v_1 MenhirState17
      | _ ->
          _eRR ()
  
  and _menhir_run_18 : type  ttv_stack. (((ttv_stack, _menhir_box_prog) _menhir_cell1_LEFT_BRACKET, _menhir_box_prog) _menhir_cell1_MINUS, _menhir_box_prog) _menhir_cell1_sae -> _ -> _ -> _ -> _ -> _menhir_box_prog =
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
  
  and _menhir_run_21 : type  ttv_stack. (((ttv_stack, _menhir_box_prog) _menhir_cell1_LEFT_BRACKET, _menhir_box_prog) _menhir_cell1_IF0 as 'stack) -> _ -> _ -> _ -> ('stack, _menhir_box_prog) _menhir_state -> _ -> _menhir_box_prog =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok ->
      let _menhir_stack = MenhirCell1_sae (_menhir_stack, _menhir_s, _v) in
      match (_tok : MenhirBasics.token) with
      | LEFT_BRACKET ->
          _menhir_run_04 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState21
      | INT _v_0 ->
          _menhir_run_07 _menhir_stack _menhir_lexbuf _menhir_lexer _v_0 MenhirState21
      | ID _v_1 ->
          _menhir_run_08 _menhir_stack _menhir_lexbuf _menhir_lexer _v_1 MenhirState21
      | _ ->
          _eRR ()
  
  and _menhir_run_22 : type  ttv_stack. ((((ttv_stack, _menhir_box_prog) _menhir_cell1_LEFT_BRACKET, _menhir_box_prog) _menhir_cell1_IF0, _menhir_box_prog) _menhir_cell1_sae as 'stack) -> _ -> _ -> _ -> ('stack, _menhir_box_prog) _menhir_state -> _ -> _menhir_box_prog =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok ->
      let _menhir_stack = MenhirCell1_sae (_menhir_stack, _menhir_s, _v) in
      match (_tok : MenhirBasics.token) with
      | LEFT_BRACKET ->
          _menhir_run_04 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState22
      | INT _v_0 ->
          _menhir_run_07 _menhir_stack _menhir_lexbuf _menhir_lexer _v_0 MenhirState22
      | ID _v_1 ->
          _menhir_run_08 _menhir_stack _menhir_lexbuf _menhir_lexer _v_1 MenhirState22
      | _ ->
          _eRR ()
  
  and _menhir_run_23 : type  ttv_stack. ((((ttv_stack, _menhir_box_prog) _menhir_cell1_LEFT_BRACKET, _menhir_box_prog) _menhir_cell1_IF0, _menhir_box_prog) _menhir_cell1_sae, _menhir_box_prog) _menhir_cell1_sae -> _ -> _ -> _ -> _ -> _menhir_box_prog =
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
  
  and _menhir_run_31 : type  ttv_stack. (((ttv_stack, _menhir_box_prog) _menhir_cell1_LEFT_BRACKET, _menhir_box_prog) _menhir_cell1_FUN, _menhir_box_prog) _menhir_cell1_list_ID_ -> _ -> _ -> _ -> _ -> _menhir_box_prog =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok ->
      match (_tok : MenhirBasics.token) with
      | RIGHT_BRACKET ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let MenhirCell1_list_ID_ (_menhir_stack, _, param_names) = _menhir_stack in
          let MenhirCell1_FUN (_menhir_stack, _) = _menhir_stack in
          let MenhirCell1_LEFT_BRACKET (_menhir_stack, _menhir_s) = _menhir_stack in
          let body = _v in
          let _v = _menhir_action_13 body param_names in
          _menhir_goto_sae _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | _ ->
          _eRR ()
  
  and _menhir_run_33 : type  ttv_stack. ((ttv_stack, _menhir_box_prog) _menhir_cell1_LEFT_BRACKET as 'stack) -> _ -> _ -> _ -> ('stack, _menhir_box_prog) _menhir_state -> _ -> _menhir_box_prog =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok ->
      let _menhir_stack = MenhirCell1_sae (_menhir_stack, _menhir_s, _v) in
      match (_tok : MenhirBasics.token) with
      | LEFT_BRACKET ->
          _menhir_run_04 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState33
      | INT _v_0 ->
          _menhir_run_07 _menhir_stack _menhir_lexbuf _menhir_lexer _v_0 MenhirState33
      | ID _v_1 ->
          _menhir_run_08 _menhir_stack _menhir_lexbuf _menhir_lexer _v_1 MenhirState33
      | RIGHT_BRACKET ->
          let _v_2 = _menhir_action_03 () in
          _menhir_run_36 _menhir_stack _menhir_lexbuf _menhir_lexer _v_2
      | _ ->
          _eRR ()
  
  and _menhir_run_36 : type  ttv_stack. ((ttv_stack, _menhir_box_prog) _menhir_cell1_LEFT_BRACKET, _menhir_box_prog) _menhir_cell1_sae -> _ -> _ -> _ -> _menhir_box_prog =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v ->
      let _tok = _menhir_lexer _menhir_lexbuf in
      let MenhirCell1_sae (_menhir_stack, _, fun_expr) = _menhir_stack in
      let MenhirCell1_LEFT_BRACKET (_menhir_stack, _menhir_s) = _menhir_stack in
      let arg_exprs = _v in
      let _v = _menhir_action_14 arg_exprs fun_expr in
      _menhir_goto_sae _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
  
  and _menhir_run_34 : type  ttv_stack. ((ttv_stack, _menhir_box_prog) _menhir_cell1_sae as 'stack) -> _ -> _ -> _ -> ('stack, _menhir_box_prog) _menhir_state -> _ -> _menhir_box_prog =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok ->
      let _menhir_stack = MenhirCell1_sae (_menhir_stack, _menhir_s, _v) in
      match (_tok : MenhirBasics.token) with
      | LEFT_BRACKET ->
          _menhir_run_04 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState34
      | INT _v_0 ->
          _menhir_run_07 _menhir_stack _menhir_lexbuf _menhir_lexer _v_0 MenhirState34
      | ID _v_1 ->
          _menhir_run_08 _menhir_stack _menhir_lexbuf _menhir_lexer _v_1 MenhirState34
      | RIGHT_BRACKET ->
          let _v_2 = _menhir_action_03 () in
          _menhir_run_35 _menhir_stack _menhir_lexbuf _menhir_lexer _v_2 _tok
      | _ ->
          _eRR ()
  
  and _menhir_run_35 : type  ttv_stack. ((ttv_stack, _menhir_box_prog) _menhir_cell1_sae, _menhir_box_prog) _menhir_cell1_sae -> _ -> _ -> _ -> _ -> _menhir_box_prog =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok ->
      let MenhirCell1_sae (_menhir_stack, _menhir_s, x) = _menhir_stack in
      let xs = _v in
      let _v = _menhir_action_04 x xs in
      _menhir_goto_list_sae_ _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
  
  and _menhir_goto_list_sae_ : type  ttv_stack. ((ttv_stack, _menhir_box_prog) _menhir_cell1_sae as 'stack) -> _ -> _ -> _ -> ('stack, _menhir_box_prog) _menhir_state -> _ -> _menhir_box_prog =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok ->
      match _menhir_s with
      | MenhirState34 ->
          _menhir_run_35 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
      | MenhirState33 ->
          _menhir_run_36 _menhir_stack _menhir_lexbuf _menhir_lexer _v
      | MenhirState60 ->
          _menhir_run_61 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
      | _ ->
          _menhir_fail ()
  
  and _menhir_run_61 : type  ttv_stack. ((ttv_stack, _menhir_box_prog) _menhir_cell1_LEFT_BRACKET, _menhir_box_prog) _menhir_cell1_sae -> _ -> _ -> _ -> _ -> _menhir_box_prog =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok ->
      let MenhirCell1_sae (_menhir_stack, _, fun_expr) = _menhir_stack in
      let MenhirCell1_LEFT_BRACKET (_menhir_stack, _menhir_s) = _menhir_stack in
      let arg_exprs = _v in
      let _v = _menhir_action_14 arg_exprs fun_expr in
      _menhir_goto_sae _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
  
  and _menhir_run_38 : type  ttv_stack. (((ttv_stack, _menhir_box_prog) _menhir_cell1_LEFT_BRACKET, _menhir_box_prog) _menhir_cell1_WITH _menhir_cell0_ID as 'stack) -> _ -> _ -> _ -> ('stack, _menhir_box_prog) _menhir_state -> _ -> _menhir_box_prog =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok ->
      let _menhir_stack = MenhirCell1_sae (_menhir_stack, _menhir_s, _v) in
      match (_tok : MenhirBasics.token) with
      | LEFT_BRACKET ->
          _menhir_run_04 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState38
      | INT _v_0 ->
          _menhir_run_07 _menhir_stack _menhir_lexbuf _menhir_lexer _v_0 MenhirState38
      | ID _v_1 ->
          _menhir_run_08 _menhir_stack _menhir_lexbuf _menhir_lexer _v_1 MenhirState38
      | _ ->
          _eRR ()
  
  and _menhir_run_39 : type  ttv_stack. (((ttv_stack, _menhir_box_prog) _menhir_cell1_LEFT_BRACKET, _menhir_box_prog) _menhir_cell1_WITH _menhir_cell0_ID, _menhir_box_prog) _menhir_cell1_sae -> _ -> _ -> _ -> _ -> _menhir_box_prog =
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
  
  and _menhir_run_42 : type  ttv_stack. (((ttv_stack, _menhir_box_prog) _menhir_cell1_LEFT_BRACKET, _menhir_box_prog) _menhir_cell1_PLUS as 'stack) -> _ -> _ -> _ -> ('stack, _menhir_box_prog) _menhir_state -> _ -> _menhir_box_prog =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok ->
      let _menhir_stack = MenhirCell1_sae (_menhir_stack, _menhir_s, _v) in
      match (_tok : MenhirBasics.token) with
      | LEFT_BRACKET ->
          _menhir_run_04 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState42
      | INT _v_0 ->
          _menhir_run_07 _menhir_stack _menhir_lexbuf _menhir_lexer _v_0 MenhirState42
      | ID _v_1 ->
          _menhir_run_08 _menhir_stack _menhir_lexbuf _menhir_lexer _v_1 MenhirState42
      | _ ->
          _eRR ()
  
  and _menhir_run_43 : type  ttv_stack. (((ttv_stack, _menhir_box_prog) _menhir_cell1_LEFT_BRACKET, _menhir_box_prog) _menhir_cell1_PLUS, _menhir_box_prog) _menhir_cell1_sae -> _ -> _ -> _ -> _ -> _menhir_box_prog =
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
  
  and _menhir_run_46 : type  ttv_stack. (((ttv_stack, _menhir_box_prog) _menhir_cell1_LEFT_BRACKET, _menhir_box_prog) _menhir_cell1_MINUS as 'stack) -> _ -> _ -> _ -> ('stack, _menhir_box_prog) _menhir_state -> _ -> _menhir_box_prog =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok ->
      let _menhir_stack = MenhirCell1_sae (_menhir_stack, _menhir_s, _v) in
      match (_tok : MenhirBasics.token) with
      | LEFT_BRACKET ->
          _menhir_run_04 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState46
      | INT _v_0 ->
          _menhir_run_07 _menhir_stack _menhir_lexbuf _menhir_lexer _v_0 MenhirState46
      | ID _v_1 ->
          _menhir_run_08 _menhir_stack _menhir_lexbuf _menhir_lexer _v_1 MenhirState46
      | _ ->
          _eRR ()
  
  and _menhir_run_47 : type  ttv_stack. (((ttv_stack, _menhir_box_prog) _menhir_cell1_LEFT_BRACKET, _menhir_box_prog) _menhir_cell1_MINUS, _menhir_box_prog) _menhir_cell1_sae -> _ -> _ -> _ -> _ -> _menhir_box_prog =
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
  
  and _menhir_run_50 : type  ttv_stack. (((ttv_stack, _menhir_box_prog) _menhir_cell1_LEFT_BRACKET, _menhir_box_prog) _menhir_cell1_IF0 as 'stack) -> _ -> _ -> _ -> ('stack, _menhir_box_prog) _menhir_state -> _ -> _menhir_box_prog =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok ->
      let _menhir_stack = MenhirCell1_sae (_menhir_stack, _menhir_s, _v) in
      match (_tok : MenhirBasics.token) with
      | LEFT_BRACKET ->
          _menhir_run_04 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState50
      | INT _v_0 ->
          _menhir_run_07 _menhir_stack _menhir_lexbuf _menhir_lexer _v_0 MenhirState50
      | ID _v_1 ->
          _menhir_run_08 _menhir_stack _menhir_lexbuf _menhir_lexer _v_1 MenhirState50
      | _ ->
          _eRR ()
  
  and _menhir_run_51 : type  ttv_stack. ((((ttv_stack, _menhir_box_prog) _menhir_cell1_LEFT_BRACKET, _menhir_box_prog) _menhir_cell1_IF0, _menhir_box_prog) _menhir_cell1_sae as 'stack) -> _ -> _ -> _ -> ('stack, _menhir_box_prog) _menhir_state -> _ -> _menhir_box_prog =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok ->
      let _menhir_stack = MenhirCell1_sae (_menhir_stack, _menhir_s, _v) in
      match (_tok : MenhirBasics.token) with
      | LEFT_BRACKET ->
          _menhir_run_04 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState51
      | INT _v_0 ->
          _menhir_run_07 _menhir_stack _menhir_lexbuf _menhir_lexer _v_0 MenhirState51
      | ID _v_1 ->
          _menhir_run_08 _menhir_stack _menhir_lexbuf _menhir_lexer _v_1 MenhirState51
      | _ ->
          _eRR ()
  
  and _menhir_run_52 : type  ttv_stack. ((((ttv_stack, _menhir_box_prog) _menhir_cell1_LEFT_BRACKET, _menhir_box_prog) _menhir_cell1_IF0, _menhir_box_prog) _menhir_cell1_sae, _menhir_box_prog) _menhir_cell1_sae -> _ -> _ -> _ -> _ -> _menhir_box_prog =
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
  
  and _menhir_run_58 : type  ttv_stack. (((ttv_stack, _menhir_box_prog) _menhir_cell1_LEFT_BRACKET, _menhir_box_prog) _menhir_cell1_FUN, _menhir_box_prog) _menhir_cell1_list_ID_ -> _ -> _ -> _ -> _ -> _menhir_box_prog =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok ->
      match (_tok : MenhirBasics.token) with
      | RIGHT_BRACKET ->
          let MenhirCell1_list_ID_ (_menhir_stack, _, param_names) = _menhir_stack in
          let MenhirCell1_FUN (_menhir_stack, _) = _menhir_stack in
          let MenhirCell1_LEFT_BRACKET (_menhir_stack, _menhir_s) = _menhir_stack in
          let body = _v in
          let _v = _menhir_action_13 body param_names in
          _menhir_goto_sae _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | _ ->
          _eRR ()
  
  and _menhir_run_60 : type  ttv_stack. ((ttv_stack, _menhir_box_prog) _menhir_cell1_LEFT_BRACKET as 'stack) -> _ -> _ -> _ -> ('stack, _menhir_box_prog) _menhir_state -> _ -> _menhir_box_prog =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok ->
      let _menhir_stack = MenhirCell1_sae (_menhir_stack, _menhir_s, _v) in
      match (_tok : MenhirBasics.token) with
      | LEFT_BRACKET ->
          _menhir_run_04 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState60
      | INT _v_0 ->
          _menhir_run_07 _menhir_stack _menhir_lexbuf _menhir_lexer _v_0 MenhirState60
      | ID _v_1 ->
          _menhir_run_08 _menhir_stack _menhir_lexbuf _menhir_lexer _v_1 MenhirState60
      | RIGHT_BRACKET ->
          let _v_2 = _menhir_action_03 () in
          _menhir_run_61 _menhir_stack _menhir_lexbuf _menhir_lexer _v_2 _tok
      | _ ->
          _eRR ()
  
  and _menhir_run_27 : type  ttv_stack. ttv_stack -> _ -> _ -> _ -> (ttv_stack, _menhir_box_prog) _menhir_state -> _menhir_box_prog =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s ->
      let _menhir_stack = MenhirCell1_ID (_menhir_stack, _menhir_s, _v) in
      let _tok = _menhir_lexer _menhir_lexbuf in
      match (_tok : MenhirBasics.token) with
      | ID _v_0 ->
          _menhir_run_27 _menhir_stack _menhir_lexbuf _menhir_lexer _v_0 MenhirState27
      | RIGHT_BRACKET ->
          let _v_1 = _menhir_action_01 () in
          _menhir_run_28 _menhir_stack _menhir_lexbuf _menhir_lexer _v_1
      | _ ->
          _eRR ()
  
  and _menhir_run_28 : type  ttv_stack. (ttv_stack, _menhir_box_prog) _menhir_cell1_ID -> _ -> _ -> _ -> _menhir_box_prog =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v ->
      let MenhirCell1_ID (_menhir_stack, _menhir_s, x) = _menhir_stack in
      let xs = _v in
      let _v = _menhir_action_02 x xs in
      _menhir_goto_list_ID_ _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
  
  and _menhir_goto_list_ID_ : type  ttv_stack. ttv_stack -> _ -> _ -> _ -> (ttv_stack, _menhir_box_prog) _menhir_state -> _menhir_box_prog =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s ->
      match _menhir_s with
      | MenhirState27 ->
          _menhir_run_28 _menhir_stack _menhir_lexbuf _menhir_lexer _v
      | MenhirState26 ->
          _menhir_run_29 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | MenhirState55 ->
          _menhir_run_56 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | _ ->
          _menhir_fail ()
  
  and _menhir_run_29 : type  ttv_stack. (((ttv_stack, _menhir_box_prog) _menhir_cell1_LEFT_BRACKET, _menhir_box_prog) _menhir_cell1_FUN as 'stack) -> _ -> _ -> _ -> ('stack, _menhir_box_prog) _menhir_state -> _menhir_box_prog =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s ->
      let _menhir_stack = MenhirCell1_list_ID_ (_menhir_stack, _menhir_s, _v) in
      let _menhir_s = MenhirState30 in
      let _tok = _menhir_lexer _menhir_lexbuf in
      match (_tok : MenhirBasics.token) with
      | LEFT_BRACKET ->
          _menhir_run_04 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | INT _v ->
          _menhir_run_07 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | ID _v ->
          _menhir_run_08 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | _ ->
          _eRR ()
  
  and _menhir_run_56 : type  ttv_stack. (((ttv_stack, _menhir_box_prog) _menhir_cell1_LEFT_BRACKET, _menhir_box_prog) _menhir_cell1_FUN as 'stack) -> _ -> _ -> _ -> ('stack, _menhir_box_prog) _menhir_state -> _menhir_box_prog =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s ->
      let _menhir_stack = MenhirCell1_list_ID_ (_menhir_stack, _menhir_s, _v) in
      let _menhir_s = MenhirState57 in
      let _tok = _menhir_lexer _menhir_lexbuf in
      match (_tok : MenhirBasics.token) with
      | LEFT_BRACKET ->
          _menhir_run_04 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | INT _v ->
          _menhir_run_07 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | ID _v ->
          _menhir_run_08 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
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
              | ID _v ->
                  let _menhir_stack = MenhirCell0_ID (_menhir_stack, _v) in
                  let _menhir_s = MenhirState03 in
                  let _tok = _menhir_lexer _menhir_lexbuf in
                  (match (_tok : MenhirBasics.token) with
                  | LEFT_BRACKET ->
                      _menhir_run_04 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
                  | INT _v ->
                      _menhir_run_07 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
                  | ID _v ->
                      _menhir_run_08 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
                  | _ ->
                      _eRR ())
              | _ ->
                  _eRR ())
          | PLUS ->
              let _menhir_stack = MenhirCell1_PLUS (_menhir_stack, MenhirState01) in
              let _menhir_s = MenhirState41 in
              let _tok = _menhir_lexer _menhir_lexbuf in
              (match (_tok : MenhirBasics.token) with
              | LEFT_BRACKET ->
                  _menhir_run_04 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
              | INT _v ->
                  _menhir_run_07 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
              | ID _v ->
                  _menhir_run_08 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
              | _ ->
                  _eRR ())
          | MINUS ->
              let _menhir_stack = MenhirCell1_MINUS (_menhir_stack, MenhirState01) in
              let _menhir_s = MenhirState45 in
              let _tok = _menhir_lexer _menhir_lexbuf in
              (match (_tok : MenhirBasics.token) with
              | LEFT_BRACKET ->
                  _menhir_run_04 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
              | INT _v ->
                  _menhir_run_07 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
              | ID _v ->
                  _menhir_run_08 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
              | _ ->
                  _eRR ())
          | LEFT_BRACKET ->
              _menhir_run_04 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState01
          | INT _v ->
              _menhir_run_07 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState01
          | IF0 ->
              let _menhir_stack = MenhirCell1_IF0 (_menhir_stack, MenhirState01) in
              let _menhir_s = MenhirState49 in
              let _tok = _menhir_lexer _menhir_lexbuf in
              (match (_tok : MenhirBasics.token) with
              | LEFT_BRACKET ->
                  _menhir_run_04 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
              | INT _v ->
                  _menhir_run_07 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
              | ID _v ->
                  _menhir_run_08 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
              | _ ->
                  _eRR ())
          | ID _v ->
              _menhir_run_08 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState01
          | FUN ->
              let _menhir_stack = MenhirCell1_FUN (_menhir_stack, MenhirState01) in
              let _tok = _menhir_lexer _menhir_lexbuf in
              (match (_tok : MenhirBasics.token) with
              | LEFT_BRACKET ->
                  let _tok = _menhir_lexer _menhir_lexbuf in
                  (match (_tok : MenhirBasics.token) with
                  | ID _v ->
                      _menhir_run_27 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState55
                  | RIGHT_BRACKET ->
                      let _v = _menhir_action_01 () in
                      _menhir_run_56 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState55
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
          _menhir_run_66 _menhir_stack _v
      | ID _v ->
          let _v =
            let i = _v in
            _menhir_action_10 i
          in
          _menhir_run_66 _menhir_stack _v
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
