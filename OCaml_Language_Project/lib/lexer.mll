{
    open Lexing
    open Parser

    exception SyntaxError of string
}


let int = '-'? ['0'-'9'] ['0'-'9']*

let white = [' ' '\t']+
let newline = '\r' | '\n' | "\r\n"
let id = ['a'-'z' 'A'-'Z' '_'] ['a'-'z' 'A'-'Z' '0'-'9' '_']*

rule read =
  parse
  | white    { read lexbuf }
  | newline  { new_line lexbuf; read lexbuf }
  | int      { INT (int_of_string (Lexing.lexeme lexbuf)) }
  | id {match Lexing.lexeme lexbuf with
        | "if0" -> IF0
        | "true" -> TRUE
        | "false" -> FALSE
        | "ifb" -> IFB
        | "with" -> WITH
        | "let" -> LET
        | "fun" -> FUN
        | _ -> ID (Lexing.lexeme lexbuf)}
  | '+'      { PLUS }
  | '-'      { MINUS }
  | '{'      { LEFT_BRACKET }
  | '}'      { RIGHT_BRACKET }
  | _ { raise (SyntaxError ("Unexpected char: " ^ Lexing.lexeme lexbuf)) }
  | eof      { EOF }