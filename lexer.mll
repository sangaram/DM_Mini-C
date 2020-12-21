{
	let file = Sys.argv.(1)
	let cin = open_in file
	let cout = open_out (file^".pre")
	let print s = Printf.fprintf cout s
	let acc = ref 0
	let functions = ref ""
	let current = ref ""
}


let ident = ['A'-'Z' 'a'-'z'] ['A'-'Z' 'a'-'z' '_' '0'-'9' ]*
let number = ['0'-'9']+
let space = [' ' '\t']

rule preprocess = parse
	| ['\n' '\r'] {preprocess lexbuf}
	| "int" space+ ident space* ';' as s {print "%s\n" s; preprocess lexbuf}
	| "bool" space+ ident space* ';' as s {print "%s\n" s; preprocess lexbuf}
	| "int" space+ ident space* '=' [^ '=' ';']* ';' as s {print "%s\n" s; preprocess lexbuf}
	| "bool" space+ ident space* '=' [^ '=' ';']* ';' as s {print "%s\n" s; preprocess lexbuf}
	| ("int" space+ ident as name space* '(' [^ '(' ')']* ')' space* '{') as s
		{
			acc := !acc + 1;
			current := name;
			functions := !functions^"\n"^s;
			infun lexbuf
		}
	| ("bool" space+ ident as name space* '(' [^ '(' ')']* ')' space* '{') as s 
		{
			acc := !acc + 1;
			current := name;
			functions := !functions^"\n"^s;
			infun lexbuf
		}
	| ("void" space+ ident as name space* '(' [^ '(' ')']* ')' space* '{') as s
		{
			acc := !acc + 1;
			current := name;
			functions := !functions^"\n"^s;
			infun lexbuf
		}
	|eof {print "&@@&\n%s" !functions}
and infun = parse
	| '}' {acc := !acc - 1; functions := (!functions)^"}"; if !acc = 0 then preprocess lexbuf else infun lexbuf }
	| '{' {acc := !acc + 1; functions := (!functions)^"{"; infun lexbuf}
	| '\n' {functions := !functions^"\n"; infun lexbuf}
	| '\t' {functions := !functions^"\t"; infun lexbuf}
	| _ as c {functions := !functions^Char.escaped(c); infun lexbuf}
	| eof {failwith (Printf.sprintf "Program ended while defining the function : %s" !current)}
	
{	
	let _ = let lexbuf = Lexing.from_channel cin in preprocess lexbuf; close_in cin; close_out cout; exit 0
}
