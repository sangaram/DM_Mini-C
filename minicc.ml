open Minic
open Printf
open Type

let rec print_typ (t: Minic.typ) =
	match t with
	| Int -> "int"
    | Bool -> "bool"
    | Void -> "void"
    | T(t') -> Printf.sprintf "%s[]" (print_typ t')
;;  

let rec print_expr (e:Minic.expr) =
	match e with
	| Cst n -> sprintf "%d" n
    | Cst_b b -> sprintf "%b" b
    | Add(e1, e2) -> sprintf "%s + %s" (print_expr e1) (print_expr e2)
	| Sub(e1, e2) -> sprintf "%s - %s" (print_expr e1) (print_expr e2)
    | Mul(e1, e2) -> sprintf "%s * %s" (print_expr e1) (print_expr e2)
    | Div(e1, e2) -> sprintf "%s / %s" (print_expr e1) (print_expr e2)
    | Mod(e1, e2) -> sprintf "%s mod %s" (print_expr e1) (print_expr e2)
    | Lt(e1, e2) -> sprintf "%s < %s" (print_expr e1) (print_expr e2)
    | Le(e1, e2) -> sprintf "%s <= %s" (print_expr e1) (print_expr e2)
    | Gt(e1, e2) -> sprintf "%s > %s" (print_expr e1) (print_expr e2)
    | Ge(e1, e2) -> sprintf "%s >= %s" (print_expr e1) (print_expr e2)
    | Eq(e1, e2) -> sprintf "%s == %s" (print_expr e1) (print_expr e2)
    | Ne(e1, e2) -> sprintf "%s != %s" (print_expr e1) (print_expr e2)
    | And(e1, e2) -> sprintf "%s && %s" (print_expr e1) (print_expr e2)
    | Or(e1, e2) -> sprintf "%s || %s" (print_expr e1) (print_expr e2)
    | Not(e) -> sprintf "!(%s)" (print_expr e)
    | Get s -> sprintf "%s" s
    | GetT(s, e) -> sprintf "%s[%s]" s (print_expr e)
    | Tab(e, l) -> sprintf "[%s]{%s}" (print_expr e) (print_expr_list l)
    | Call(s, l) -> sprintf "%s(%s)" s (print_expr_list l)
       
and print_expr_list (l:Minic.expr list) =
	match l with
	| [] -> ""
	| [e] -> print_expr e
	| e::s -> (print_expr e)^","^(print_expr_list s)
;;	
let rec print_instr (i: Minic.instr) = 
	match i with
	| Putchar e -> sprintf "putchar(%s);" (print_expr e)
    | Set(s, e) -> sprintf "%s = %s;" s (print_expr e)
    | SetT(s, e1, e2) -> sprintf "%s[%s] = %s;" s (print_expr e1) (print_expr e2)
    | If(e, s1, s2) -> sprintf "if(%s) {\n%s}\nelse{\n%s\n}\n" (print_expr e) (print_seq s1) (print_seq s2)
    | While(e, s) -> sprintf "while(%s){\n%s\n}" (print_expr e) (print_seq s)
    | For (t, s, e1, e2, i, l) -> sprintf "for(%s %s = %s; %s; %s){\n%s}\n" (print_typ t) s (print_expr e1) (print_expr e2) (print_instr i) (print_seq l)
    | Return e -> sprintf "return %s;" (print_expr e)
    | Expr e -> print_expr e
    
and print_seq (l:Minic.seq) = 
	match l with
	| [] -> ""
	| e::s -> (print_instr e)^"\n"^(print_seq s)
;;	
  
let rec print_typ_expr (l:(string * Minic.typ * Minic.expr option ) list) =
	match l with
	| [] -> ""
	| (n, t, None)::s -> sprintf "%s %s;\n%s" (print_typ t) n (print_typ_expr s)
	| (n, t, Some e)::s -> sprintf "%s %s = %s;\n%s" (print_typ t) n (print_expr e) (print_typ_expr s)
;;	
let rec print_params (l:(string * Minic.typ) list) =
	match l with
	| [] -> ""
	| [(n, t)] -> sprintf "%s %s" (print_typ t) n
	| (n, t)::s -> sprintf "%s %s, %s" (print_typ t) n (print_params s)
;;
let print_fun_def ({name = name'; params = params'; return = return'; locals = locals'; code = code' }:Minic.fun_def) =
	sprintf "%s %s(%s){\n%s%s\n}\n" (print_typ return') name' (print_params params') (print_typ_expr locals') (print_seq code')
;;	
let rec print_fun_def_list (l: Minic.fun_def list) =
	match l with
	| [] -> ""
	| e::s -> (print_fun_def e)^"\n"^(print_fun_def_list s)
;;	
let print_prog ({globals = globals'; functions = functions'}: Minic.prog) =
	(print_typ_expr globals')^(print_fun_def_list functions')
;;

let globals' = [("PARAM", Int)]
let function1 = {
			name = "incr";
			params = [("n", Int)];
			return = Int;
			locals = [];
			code = [Return(Add(Get("n"), Cst(1)))];
		}
		
let function2 = {
			name = "main";
			params = [];
			return = Void;
			locals = [];
			code = [Expr(Call("incr", [Get("PARAM")]))];
		}

let functions' = [
	function1; function2
]
	


(*let program = {
	globals = [("PARAM", Int)];
	functions = [
		{
			name = "incr";
			params = [("n", Int)];
			return = Void;
			locals = [];
			code = [Set("n",Add(Get("n"), Cst(1)))];
		};
		{
			name = "main";
			params = [];
			return = Void;
			locals = [];
			code = [Expr(Call("incr", [Get("PARAM")]))] (*[Set("PARAM",Call("incr",[Get("PARAM")]))]; *)
		}
	]
}


let _= Type.typ_prog program
;;*)


let _ =
  let fichier = Sys.argv.(1) in
  let c = open_in fichier in
  let lexbuf = Lexing.from_channel c in
  let prog = Minicparser.prog Miniclexer.token lexbuf in
  printf "%s" (print_prog prog);
  Type.typ_prog prog;
  close_in c;
  exit 0 


