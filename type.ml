
open Minic



type params = (string*typ) list
type locals = (string * typ * expr option) list

type fonction = params * typ      
type envVar = (string , typ) Hashtbl.t
type envFonc = (string , fonction) Hashtbl.t

  

let rec type_expr (e: expr) (env1: envVar) (env2: envFonc): typ = match e with



(*
   Γ ⊢ e₁ : int      Γ, x:τ₁ ⊢ e₂ : int
  ------------------------------------
       Γ ⊢ Lt(e₁, e₂) : bool
*)    
  | Lt(e1, e2) ->
	begin
	    let t1 = type_expr e1 env1 env2 in
	    let t2 = type_expr e2 env1 env2 in
	    if t1 = Int && t2 = Int
	    then Bool
	    else failwith "type error"    
	end

(*
  -------------
   Γ ⊢ n : int
*)

  | Cst _ -> Int


(*
  -------------
   Γ ⊢ b : bool
*)

  | Cst_b _ -> Bool

(*
   Γ ⊢ e₁ : int     Γ ⊢ e₂ : int
  -------------------------------
       Γ ⊢ Add(e₁, e₂) : int
*)


  | Add(e1, e2) ->
	begin
	    let t1 = type_expr e1 env1 env2 in
	    let t2 = type_expr e2 env1 env2 in
	    if t1 = Int && t2 = Int
	    then Int
	    else failwith "type error"
	end
(*
   Γ ⊢ e₁ : int     Γ ⊢ e₂ : int
  -------------------------------
       Γ ⊢ Mul(e₁, e₂) : int
*)


  | Mul(e1, e2) ->
	begin
	    let t1 = type_expr e1 env1 env2 in
	    let t2 = type_expr e2 env1 env2 in
	    if t1 = Int && t2 = Int
	    then Int
	    else failwith "type error"
	end

(*
  --------------
   Γ ⊢ x : Γ(x)
*)    
  | Get(x) -> begin 
		try Hashtbl.find env1 x with Not_found -> failwith "cette variable n'est pas declarée!!!"
	      end




  | Call(f, l) ->  begin
			   try
	   		   begin
				   let param, return = Hashtbl.find env2 f in
				   let rec matche l param env1 env2 =
					begin
					       match l, param with
						| [],[] -> true
						| [],_ -> false
						| _, [] -> false
						| e::l, p::param -> let s,t = p in ((type_expr e env1 env2) = t) && (matche l param env1 env2)
					end
			 	   in
				   if (matche l param env1 env2) then return 
				   else failwith "type error"
			   end
		           with Not_found -> failwith "Fonction non définie"
 		 end ;;





let rec type_instr (i: instr) (env1: envVar) (env2: envFonc) (return:typ) : unit = match i with

    | Putchar(e) -> if ((type_expr e env1 env2) != Int) 
		    then failwith "type error"
		    else ()

    | Set(x,e) -> let  t2 = type_expr e env1 env2 in
		  if (Hashtbl.mem env1 x) 
		  then   let t1 = Hashtbl.find env1 x in
			  if (t1 = t2) then () 
			  else failwith "type error"
		  else   Hashtbl.add env1 x t2


    | If(e,s1,s2) -> let t = type_expr e env1 env2 in
			if(t != Bool) then failwith "type error"
			else type_seq s1 env1 env2 return ; type_seq s2 env1 env2 return 
			      
    | While(e,s) -> let t = type_expr e env1 env2 in
		    if(t != Bool) then failwith "type error"
		    else type_seq s env1 env2 return 

    | Return(e) -> let t = type_expr e env1 env2 in
		   begin
			   match t with
				| Void -> failwith "type error"
				| _ -> if t != return then failwith "type error"
					else () 
  		   end

    | Expr(e) -> let t = type_expr e env1 env2 in
		 begin
		 match t with
			| Void -> ()
			| _ -> failwith "type error"
		end

and  type_seq l env1 env2 return  =
	  match l with
	    | [] -> ()
	    | e::l -> type_instr e env1 env2 return  ; type_seq l env1 env2 return ;;


let type_fun fonct env1 env2  =
	if(Hashtbl.mem env2 fonct.name) 
	then failwith "this function is already defined"
	else
		Hashtbl.add env2 fonct.name (fonct.params, fonct.return);
		List.iter (fun (s,t) -> Hashtbl.add env1 s t ) fonct.params;
		 let rec h = function
			| [] -> []
			| (s,t,Some e)::l -> if (type_expr e env1 env2)=t 
					     then (s,t)::(h l)
					     else failwith "type error"
			| (s,t,None)::l -> (s,t)::(h l)

		 in let f = h fonct.locals in
	         List.iter (fun (s,t) -> Hashtbl.add env1 s t ) f;
		 type_seq fonct.code env1 env2 fonct.return ;
		 List.iter (fun (s,t) -> Hashtbl.remove env1 s ) f;
		 List.iter (fun (s,t) -> Hashtbl.remove env1 s ) (fonct.params)
;; 

	
	
let  rec type_fun_list fonct env1 env2 =
	match fonct with
		| [] -> ()
		| f::fonct -> type_fun f env1 env2 ; type_fun_list fonct env1 env2 ;;


let typ_prog prog  = 
	let env1 = Hashtbl.create 100 in (*environnement de var globales*)
	let env2 = Hashtbl.create 100 in (* environnement de fonctions *)
	let rec h = function
			| [] -> []
			| (s,t,Some e)::l -> if (type_expr e env1 env2)=t 
					     then (s,t)::(h l)
					     else failwith "type error"
			| (s,t,None)::l -> (s,t)::(h l)

	in List.iter (fun (s,t) -> Hashtbl.add env1 s t ) (h prog.globals);
	type_fun_list prog.functions env1 env2;;
