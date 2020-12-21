%{
  open Minic;;
%}

%token INT BOOL VOID TAB
%token PLUS MOINS FOIS DIV MOD LT LE GT GE AND OR NOT EQ NE
%token <int> CST
%token <bool> CST_B
%token <string> IDENT
%token RETURN WHILE FOR IF ELSE PUTCHAR 
%token LPAR RPAR LACC RACC LHOOK RHOOK EGAL COMMA SEMI END EOF

%left PLUS MOINS	
%left FOIS DIV
%nonassoc MOINS_UNAIRE
%nonassoc MOD
%nonassoc LT LE GT GE EQ NE
%left OR
%left AND
%right NOT

%type <Minic.typ> typ
%type <Minic.instr> simple_instr
%type <Minic.instr> instr
%type <string * Minic.typ * Minic.expr option> var_decl
%type <(string * Minic.typ * Minic.expr option) list> var_decl_list
%type <Minic.fun_def> fun_def
%type <Minic.fun_def list> fun_def_list

%start <Minic.prog> prog

%%

prog: 
| global=var_decl_list END funct=fun_def_list EOF {{globals= global; functions= funct}}
;

var_decl: 
| t=typ x=IDENT {(x,t,None)}
| t=typ x=IDENT TAB {}
| t=typ x=IDENT EGAL n=expr {(x,t,Some n)}
;

var_decl_list:
| (* empty *) {[]}
| v=var_decl SEMI l=var_decl_list  {v::l}
;

fun_def: 
| t=typ f=IDENT LPAR p=separated_list(COMMA,params) RPAR LACC local=var_decl_list l=list(instr) RACC { {name= f; params= p; return= t; locals= local; code= l} }
;

fun_def_list:
| f=fun_def {[f]}
| l=fun_def_list f=fun_def { f::l }
; 

params:
| INT x=IDENT  {(x,Int)}
| BOOL x=IDENT  {(x,Bool)}
;

simple_instr:
| PUTCHAR LPAR e=expr RPAR {Putchar(e)}
| x=IDENT EGAL e=expr {Set(x,e)}
| RETURN  e=expr {Return(e)}
| f=IDENT LPAR s=separated_list(COMMA,expr) RPAR {Expr(Call(f,s))}
;


instr:
| i=simple_instr SEMI {i}
| WHILE LPAR e=expr RPAR LACC l=list(instr) RACC {While(e,l)}
| FOR LPAR d=var_decl SEMI e=expr SEMI i=simple_instr RPAR LACC l=list(instr) RACC
	{	
		 let s ,t, o = d in 
		 if o = None then failwith("La variable de la boucle for doit être initialisée") else For(t, s, Option.get o, e, i, l)
	}

| IF LPAR e=expr RPAR LACC s1=list(instr) RACC ELSE LACC s2=list(instr) RACC {If(e,s1,s2)}
| IF LPAR e=expr RPAR LACC s1=list(instr) RACC {If(e,s1,[])}
;


expr:
| n=CST { Cst(n) }
| b=CST_B { Cst_b(b) }
| x=IDENT { Get(x) }
| e=expr PLUS f=expr { Add(e,f) }
| e=expr MOINS f=expr %prec MOINS_UNAIRE { Sub(e,f) }
| e=expr FOIS f=expr { Mul(e,f) }
| e=expr DIV f=expr { Div(e,f) }
| e=expr MOD f=expr { Mod(e,f) }
| e=expr LT f=expr { Lt(e,f) }
| e=expr LE f=expr { Le(e,f) }
| e=expr GT f=expr { Gt(e,f) }
| e=expr GE f=expr { Ge(e,f) }
| e=expr EQ f=expr { Eq(e,f) }
| e=expr NE f=expr { Ne(e,f) }
| e=expr AND f=expr { And(e,f) }
| e=expr OR f=expr { Or(e,f) }
| NOT e=expr {Not(e)}
| LPAR e=expr RPAR { e }
| f=IDENT LPAR s=separated_list(COMMA,expr) RPAR { Call(f,s) }
;

typ:
| INT {Int}
| BOOL {Bool}
| VOID {Void}
%%
