%{ 

  open Minic
%}

%token INT BOOL VOID
%token PLUS FOIS LT
%token <int> CST
%token <bool> CST_B
%token <string> IDENT
%token RETURN WHILE IF ELSE PUTCHAR 
%token LPAR RPAR LACC RACC EGAL COMMA SEMI EOF

%left PLUS
%left FOIS
%nonassoc LT





%type <string * Minic.typ> var_decl

%type <Minic.fun_def> fun_def

%start <Minic.prog> prog


%%

prog: 
| global=list(var_decl)  funct=list(fun_def) EOF {{globals= global; functions= funct}}
;


var_decl: 
| INT x=IDENT SEMI {(x,Int)}
| BOOL x=IDENT SEMI {(x,Bool)}
;



fun_def: 
| INT f=IDENT LPAR p=separated_list(COMMA,params) RPAR LACC local=list(var_decl) l=list(instr) RACC { {name= f; params= p; return= Int; locals= local; code= l} }

| BOOL f=IDENT LPAR p=separated_list(COMMA,params) RPAR LACC local=list(var_decl) l=list(instr) RACC { {name= f; params= p; return= Bool; locals= local; code= l} }

| VOID f=IDENT LPAR p=separated_list(COMMA,params) RPAR LACC local=list(var_decl) l=list(instr) RACC { {name= f; params= p; return= Void; locals= local; code= l} }
;

params:
| INT x=IDENT  {(x,Int)}
| BOOL x=IDENT  {(x,Bool)}
;

instr:
|PUTCHAR LPAR e=expr RPAR SEMI {Putchar(e)} 
|WHILE LPAR e=expr RPAR LACC l=list(instr) RACC {While(e,l)}
|IF LPAR e=expr RPAR LACC s1=list(instr) RACC ELSE LACC s2=list(instr) RACC {If(e,s1,s2)}
|IF LPAR e=expr RPAR LACC s1=list(instr) RACC {If(e,s1,[])}
|x=IDENT EGAL e=expr SEMI {Set(x,e)}
|RETURN  e=expr SEMI {Return(e)}
|f=IDENT LPAR s=separated_list(COMMA,expr) RPAR SEMI { Expr(Call(f,s)) }
;

expr:
| n=CST { Cst(n) }
| b=CST_B { Cst_b(b) }
| x=IDENT { Get(x) }
| e=expr PLUS f=expr { Add(e,f) }
| e=expr FOIS f=expr { Mul(e,f) }
| e=expr LT f=expr { Lt(e,f) }
| LPAR e=expr RPAR { e }
| f=IDENT LPAR s=separated_list(COMMA,expr) RPAR { Call(f,s) }
;







%%
