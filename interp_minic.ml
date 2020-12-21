open Minic



let rec f n l  = (*retourne le n ieme elt de la liste l*)
	match n,l with
	| _,[] -> failwith "Invalid arguments" 
	| 0, e::l -> e
	| _, e::l -> f (n-1) l

let rec h n l a = (*remplace le n ieme elt de la liste l par a*)
	match n,l with
	| _,[] -> failwith "Invalid arguments" 
	| 0, e::l -> a::l
	| _, e::l -> e::(h (n-1) l a)

type valeur =
	| I of int
	| B of bool
	| valeur list (* pour les tableaux *)
	| N (* None *)


type envVarI = (string , valeur) Hashtbl.t
type envFoncI = (string , valeur) Hashtbl.t


let rec eval e env1 env2 = match e with
    | Cst  n -> I(n)
    | Cst_b b -> B(b)
    | Add(e1,e2) -> let v1 = eval e1 env1 env2 in let v2 = eval e2 env1 env2 in
			begin
			match v1, v2 with
				| I(n1), I(n2) -> I(n1+n2)
				|_,_ -> failwith ""
			end

    | Sub(e1,e2) -> let v1 = eval e1 env1 env2 in let v2 = eval e2 env1 env2 in
			begin
			match v1, v2 with
				| I(n1), I(n2) -> I(n1-n2)
				|_,_ -> failwith ""
			end

    | Mul(e1,e2) -> let v1 = eval e1 env1 env2 in let v2 = eval e2 env1 env2 in
			begin
			match v1, v2 with
				| I(n1), I(n2) -> I(n1*n2)
				|_,_ -> failwith ""
			end

    | Div(e1,e2) -> let v1 = eval e1 env1 env2 in let v2 = eval e2 env1 env2 in
			begin
			match v1, v2 with
				| I(n1), I(n2) -> if (n2!=0) then I(n1/n2) else failwith "Division by 0"
				|_,_ -> failwith ""
			end

    | Mod(e1,e2) -> let v1 = eval e1 env1 env2 in let v2 = eval e2 env1 env2 in
			begin
			match v1, v2 with
				| I(n1), I(n2) -> if (n2!=0) then I(n1%n2) else failwith "Division by 0"
				|_,_ -> failwith ""
			end

    | And(e1,e2) -> let v1 = eval e1 env1 env2 in let v2 = eval e2 env1 env2 in
			begin
			match v1, v2 with
				| B(n1), B(n2) -> B(n1 && n2)
				|_,_ -> failwith ""
			end

    | Or(e1,e2) -> let v1 = eval e1 env1 env2 in let v2 = eval e2 env1 env2 in
			begin
			match v1, v2 with
				| B(n1), B(n2) -> B(n1 || n2)
				|_,_ -> failwith ""
			end

    | Lt(e1,e2) -> let v1 = eval e1 env1 env2 in let v2 = eval e2 env1 env2 in
			begin
			match v1, v2 with
				| I(n1), I(n2) -> B(n1 < n2)
				|_,_ -> failwith ""
			end

    | Le(e1,e2) -> let v1 = eval e1 env1 env2 in let v2 = eval e2 env1 env2 in
			begin
			match v1, v2 with
				| I(n1), I(n2) -> B(n1 <= n2)
				|_,_ -> failwith ""
			end

    | Gt(e1,e2) -> let v1 = eval e1 env1 env2 in let v2 = eval e2 env1 env2 in
			begin
			match v1, v2 with
				| I(n1), I(n2) -> B(n1 > n2)
				|_,_ -> failwith ""
			end

    | Ge(e1,e2) -> let v1 = eval e1 env1 env2 in let v2 = eval e2 env1 env2 in
			begin
			match v1, v2 with
				| I(n1), I(n2) -> B(n1 >= n2)
				|_,_ -> failwith ""
			end


    | Eq(e1,e2) -> let v1 = eval e1 env1 env2 in let v2 = eval e2 env1 env2 in B(v1 = v2)

    | Ne(e1,e2) -> let v1 = eval e1 env1 env2 in let v2 = eval e2 env1 env2 in B(v1 != v2)

    | Not(e) -> let v = eval e env1 env2 in B(Bool.not v)

    | Get(s) -> Hashtbl.find env1 s 
                


    | Tab(e,l) -> let v = eval e env1 env2 in 
			begin
			match v with
				| I(n) -> let liste = List.map (fun e -> eval e env1 env2) l in
					  if (List.length liste != n) then failwith "List length incorrect"
					  else liste
				| _ -> failwith ""
			end

    | GetT(s,e) -> let v = Hashtbl.find env1 s and let a = eval e env1 env2 in 
		   begin
		   match a with
			| I(n) ->  f n v
			| _ -> failwith ""
		   end			


    | Call(f,l) -> execFonct f l env1 env2 ; Hashtbl.find env2 f 

and

let execi i env1 env2 f = match i with
    | Putchar(e) -> let v = eval e env1 env2 in
		    begin
			match v with
				| I(n) -> Printf.printf "%c" (char_of_int n)
				| _ -> ()
		    end


    | Set(x,e) -> let t = type_expr e env1' env2' in Hashtbl.replace env1 x (t,eval e env1 env2) 

    | SetT(tab,e1,e2) -> let liste = Hashtbl.find env1 tab in let v = eval e1 env1 env2 in
			begin
			match v with
			 | I(n) -> let liste' = h n liste (eval e2 env1 énv2) in Hashtbl.replace env1 tab liste'
			 | _ -> ()  
			end

 
    | If(e,s1,s2) -> if (eval e env1 env2) = B(true) then execb s1 env1 env2 f else execb s2 env1 env2 f

    | While(e,s) -> if (eval e env1 env2) = B(true) then execb s env1 env2 f ; execi i env1 env2 f else ()

    | For(t, s, e1, e2, i',s) -> execb [Set(s,e1); While(e2,s::i')] env1 env2 f 

    | Return(e) -> execb [Return(e)] env1 env2 f 
f
    | Expr(e) -> begin 
		 match e with
		 	| Call(f',l) -> execFonct f' l env1 env2 
			| _ -> failwith "Invalid argument"


and
 
execb s env1 env2 f  =
	match s with
		| [] -> ()
		| i::s -> begin
			    match i with
				| Return e -> let v = eval e env1 env2 in Hashtbl.replace env2 f v 
				| _ -> execi env1 env2 f; execb s env1 env2 f
			end
and

execFonct f l  env1 env2 = 
	 let rec replace l l' =
		match l, l' with
			| [], _ -> ()
			| _, [] -> () 
			| e::l, (s,t)::l' -> Hashtbl.add env1 s (eval e env1 env2)
	in
	replace l, f.params;
	let rec h = function
		| [] -> ()
		| (s,t,None)::l -> Hashtbl.add env1 s N; h l
		| (s,t,Some e)::l -> Hashtbl.add env1 s (eval e env1 env2); h l
	in 
	h f.locals; 
	execb f.code env1 env2 f;
	let rec g = function
		| [] -> ()
		| (s,t,_)::l -> Hashtbl.remove env1 s; g l
	in 
	g f.locals;
	let rec j = function
		| [] -> ()
		| (s,t)::l -> Hashtbl.remove env1 s; j l
	in 
	j f.params 

;;




let execProg prog =
	let env1 = Hashtbl.create 200 and env2 = Hashtbl.create 200 in
	let rec h = function
			| [] -> ()
			| (s,t,None)::l -> Hashtbl.add env1 s N; h l
			| (s,t,Some e)::l -> Hashtbl.add env1 s (eval e env1 env2); h l
		in 
		h prog.globals; 
		List.iter (fun f -> execb env1 env2 )	
	








	
