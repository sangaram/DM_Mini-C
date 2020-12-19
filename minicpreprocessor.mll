{	
	let file = Sys.argv.(1)
	let cin = open_in file
	let cout = open_out (file^".pre")
	let print s = Printf.fprintf cout s
	let length s = String.length s
	let fun_def = ref ""
	exception EofException
}

let alpha = ['a'-'z' 'A'-'Z']
let digit = ['0'-'9']
let space = [' ' '\t']
let ident = alpha (alpha | digit | '_')*
let typ = ("int" | "bool" | "void")
let params = (space* typ space+ ident space* (',' space* typ space+ ident space*)*)*

(*rule preprocess = parse
	| ['\n' '\r'] {print "\n"}
	| "int" space+ ident space* ';' as s {print "%s" s; preprocess lexbuf}
	| "bool" space+ ident space* ';' as s {print "%s" s; preprocess lexbuf}
	| "int" space+ ident space* '(' (_)* ')' space* '{' (_)* '}' as s {fun_def := (!fun_def)^"\n"^s;preprocess lexbuf}
	| "bool" space+ ident space* '(' (_)* ')' space* '{' (_)* '}' as s {fun_def := (!fun_def)^"\n"^s; preprocess lexbuf}
	| "void" space+ ident space* '(' (_)* ')' space* '{' (_)* '}' as s {fun_def := (!fun_def)^"\n"^s; preprocess lexbuf}
	| eof {print "%s" !fun_def}*)

rule preprocess = parse
	| '\n' {print "\n"; ""}
	| "int" space+ ident space* ';' as s {print "%s" s; ""}
	| "bool" space+ ident space* ';' as s {print "%s" s; ""}
	| "int" space+ ident space* '(' (_)* ')' space* '{' (_)* '}' as s {s}
	| "bool" space+ ident space* '(' (_)* ')' space* '{' (_)* '}' as s {s}
	| "void" space+ ident space* '(' (_)* ')' space* '{' (_)* '}' as s {s}
	| eof {print "&@@&"; raise EofException}
	(*rule preprocess = parse
	| _ as c {fun_def := (!fun_def)^Char.escaped(c); preprocess lexbuf}
	| eof {print "%s" !fun_def}*)
	
{
	let lexbuf = Lexing.from_channel cin in
	try
		begin
			while(true)
			do
				let m = preprocess lexbuf in
				if m == "" then () else fun_def := (!fun_def)^"\n"^m
			done	
		end
	with EofException -> print "%s" !fun_def; close_in cin; close_out cout; exit 0
}


