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

rule preprocess = parse
	| '\n' {""}
	| "int" space+ ident space* ';' as s {print "%s\n" s; ""}
	| "bool" space+ ident space* ';' as s {print "%s\n" s; ""}
	| "int" space+ ident space* '(' [^'(' ')']* ')' space* '{' (_)* '}' as s {s}
	| "bool" space+ ident space* '(' [^'(' ')']* ')' space* '{' (_)* '}' as s {s}
	| "void" space+ ident space* '(' [^'(' ')']* ')' space* '{' (_)* '}' as s {s}
	| eof {print "&@@&"; raise EofException}
	
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


