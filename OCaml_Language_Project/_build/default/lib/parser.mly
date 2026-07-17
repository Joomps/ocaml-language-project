%{
  open Syntax
%}

%token <int> INT
%token <string> ID
%token LEFT_BRACKET
%token RIGHT_BRACKET
%token PLUS
%token MINUS
%token FUN
%token WITH
%token IF0
%token EOF
%start <Syntax.sae option> prog
%%

prog:
  | EOF       { None }
  | v = sae { Some v }
  ;

sae:
  | i = INT
    {SNum {n = i} }
  | LEFT_BRACKET PLUS lhs = sae rhs = sae RIGHT_BRACKET 
    {SAdd {lhs; rhs} }
  | LEFT_BRACKET MINUS lhs = sae rhs = sae RIGHT_BRACKET 
    {SSub {lhs; rhs} }
  | i = ID
    {SId {name = i}}
  | LEFT_BRACKET IF0 test = sae thn = sae els = sae RIGHT_BRACKET
    {SIf0 {test; thn; els}}
  | LEFT_BRACKET WITH LEFT_BRACKET name = ID named_expr = sae RIGHT_BRACKET body = sae RIGHT_BRACKET
    {SWith {name; named_expr; body}}
  | LEFT_BRACKET FUN LEFT_BRACKET param_names = list(ID) RIGHT_BRACKET body = sae RIGHT_BRACKET
    {SFunc {param_names; body}}
  | LEFT_BRACKET fun_expr = sae arg_exprs = list(sae) RIGHT_BRACKET
    {SApp {fun_expr; arg_exprs}}
  ;