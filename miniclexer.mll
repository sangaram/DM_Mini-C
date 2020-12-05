{

  open String
  open Minicparser
  

  let line = ref 1 
  let col = ref 1

  let new_line () = 
	line := !line + 1; 
        col := 1

 let new_col n = 
	col := !col + n 


(*|  space+ as a ident as s space* as z '=' space* as r  digit as n 
			{ new_col(4 + (length a) + (length s) + (length z) + (length r) + (length n));
			  INT
			}*)


}

let alpha = ['a'-'z' 'A'-'Z']
let digit = ['0'-'9']
let ident =
  alpha (alpha | digit | '_')*


let space = [' ' '\t' '\r']
rule scan_token = parse
	| ['\n'] { new_line(); scan_token lexbuf }
	| space+ as s {new_col(length s); scan_token lexbuf }
	|'+' {new_col 1; PLUS}
	|'*' {new_col 1;FOIS}
	|'<' {new_col 1;LT}
	| ','{new_col 1;COMMA}
	|';' {new_col 1;SEMI}
	|'=' {new_col 1;EGAL}
	|'(' {new_col 1;LPAR}
	|')' {new_col 1;RPAR}
	|'{' {new_col 1;LACC}
	|'}' {new_col 1;RACC}
	|"while" as s {new_col(length s); WHILE}
	|"if" as s {new_col(length s);IF}
	|"else" as s {new_col(length s);ELSE}
	|"putchar" as s {new_col(length s);PUTCHAR}
	|"return" as s {new_col(length s);RETURN}
	


	|"int" as s {new_col(length s);INT}
	|"void" as s {new_col(length s);VOID}
	| "bool" as s {new_col(length s);BOOL}
	| "true" as s {new_col(length s);CST_B(true)}
	| "false" as s {new_col(length s);CST_B(false)}
	| digit+ as n  { new_col(length n); CST(int_of_string n)}
	| ident as s {new_col(length s); IDENT(s)}
	| _ as c
	      { failwith
		  (Printf.sprintf
		     "invalid character: %c %d %d" c !line !col ) ;

	    
	}
	| eof    {EOF }


{

}


