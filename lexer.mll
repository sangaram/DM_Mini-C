{
	open Minicparser;;
	
	let line = ref 1
	let col = ref 1
	
	let newline n = line := !line + n; col := 1
	let next n = col:= !col + n
	
	let print s = Printf.printf s
	let length s = String.length s
	
	exception Eof
}


let ident = ['A'-'Z' 'a'-'z'] ['A'-'Z' 'a'-'z' '_' '0'-'9' ]*
let number = ['0'-'9']+
let space = [' ' '\t']+

rule token = parse
	| ['\n' '\r']+ as s {newline (length s); token lexbuf}
	| space as s {next (length s); token lexbuf}
	| '+' {next 1; PLUS}
	| '*' {next 1; FOIS}
	| '<' {next 1; LT}
	| ',' {next 1; COMMA}
	| ';' {next 1;SEMI}
	| '=' {next 1;EGAL}
	| '(' {next 1;LPAR}
	| ')' {next 1;RPAR}
	| '{' {next 1;LACC}
	| '}' {next 1;RACC}
	| "&@@&" {next 4; END}
	| "while" as s {next (length s);WHILE}
	| "if" as s {next (length s);IF}
	| "else" as s {next (length s);ELSE}
	| "putchar" as s {next (length s);PUTCHAR}
	| "return" as s {next (length s);RETURN}
	(*| "int" (ident as s) '(' {lescan_token_aux lexbuf (Lexing.from_string ("@int"^ident^"(")}*)
	| "int" as s {next (length s);INT}
	| "void" as s {next (length s);VOID}
	| "bool" as s {next (length s);BOOL}
	(*| "bool" ident as s '(' {scan_token_aux lexbuf (Lexing.from_string ("@bool"^ident^"(")}*)
	| "true" as s {next (length s); CST_B(true)}
	| "false" as s {next (length s);CST_B(false)}
	| number as n {next (length n); CST(int_of_string n)}
	| ident as s {next (length s); IDENT(s)}
	| _ as c {failwith(Printf.sprintf "Invalid character: %c at %d:%d" c !line !col)}
	| eof {EOF}
	
{

	let print_token t =
		match t with
		| PLUS -> print "PLUS\n"
		| FOIS -> print "FOIS\n"
		| LT -> print "LT\n"
		| COMMA -> print "COMMA\n"
		| SEMI -> print "SEMI\n"
		| EGAL -> print "EGAL\n"
		| LPAR -> print "LPAR\n"
		| RPAR -> print "RPAR\n"
		| LACC -> print "LACC\n"
		| RACC -> print "RACC\n"
		| END -> print "END\n"
		| WHILE -> print "WHILE\n"
		| IF -> print "IF\n"
		| ELSE -> print "ELSE\n"
		| PUTCHAR -> print "PUTCHAR\n"
		| RETURN -> print "RETURN\n"
		| INT -> print "INT\n"
		| VOID -> print "VOID\n"
		| BOOL -> print "BOOL\n"
		| CST_B b -> print "CST_B(%b)\n" b
		| CST n -> print "CST(%d)\n" n
		| IDENT s -> print "%s\n" s
		| EOF -> raise Eof
		
	
	let _ =
		let file = Sys.argv.(1) in
		let cin = open_in file in
		try
			let lexbuf = Lexing.from_channel cin in
			while(true)
			do
				print_token (token lexbuf)
			done
		with Eof -> close_in cin; exit 0


}
