# 1 "minicpreprocessor.mll"
 	
	let file = Sys.argv.(1)
	let cin = open_in file
	let cout = open_out (file^".pre")
	let print s = Printf.fprintf cout s
	let length s = String.length s
	let fun_def = ref ""
	exception EofException

# 12 "minicpreprocessor.ml"
let __ocaml_lex_tables = {
  Lexing.lex_base =
   "\000\000\249\255\000\000\001\000\000\000\255\255\000\000\000\000\
    \054\000\192\000\027\000\254\255\002\000\060\000\059\000\061\000\
    \062\000\002\000\000\000\003\000\054\001\168\001\029\000\253\255\
    \005\000\065\000\066\000\068\000\195\000\009\000\004\000\004\000\
    \026\002\140\002\032\000\006\000\060\001\074\000\104\000\198\000\
    ";
  Lexing.lex_backtrk =
   "\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
    \255\255\255\255\255\255\255\255\255\255\255\255\255\255\003\000\
    \255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
    \255\255\255\255\255\255\004\000\255\255\255\255\255\255\255\255\
    \255\255\255\255\255\255\255\255\255\255\255\255\005\000\255\255\
    ";
  Lexing.lex_default =
   "\255\255\000\000\255\255\255\255\255\255\000\000\255\255\255\255\
    \255\255\255\255\010\000\000\000\255\255\010\000\014\000\014\000\
    \014\000\255\255\255\255\255\255\255\255\255\255\022\000\000\000\
    \255\255\022\000\026\000\026\000\026\000\255\255\255\255\255\255\
    \255\255\255\255\034\000\255\255\034\000\037\000\037\000\037\000\
    ";
  Lexing.lex_trans =
   "\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
    \000\000\008\000\005\000\012\000\020\000\032\000\024\000\035\000\
    \000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
    \000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
    \008\000\000\000\012\000\020\000\032\000\024\000\035\000\000\000\
    \000\000\000\000\010\000\000\000\000\000\022\000\034\000\000\000\
    \000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
    \000\000\000\000\000\000\000\000\000\000\011\000\000\000\008\000\
    \023\000\000\000\000\000\000\000\013\000\013\000\025\000\016\000\
    \000\000\036\000\025\000\000\000\000\000\000\000\000\000\000\000\
    \000\000\000\000\000\000\000\000\000\000\000\000\008\000\000\000\
    \000\000\000\000\000\000\000\000\013\000\000\000\016\000\000\000\
    \000\000\025\000\003\000\000\000\016\000\013\000\016\000\016\000\
    \031\000\004\000\025\000\028\000\019\000\028\000\006\000\029\000\
    \017\000\018\000\030\000\039\000\007\000\000\000\002\000\009\000\
    \009\000\009\000\009\000\009\000\009\000\009\000\009\000\009\000\
    \009\000\009\000\009\000\009\000\009\000\009\000\009\000\009\000\
    \009\000\009\000\009\000\009\000\009\000\009\000\009\000\009\000\
    \009\000\039\000\000\000\000\000\000\000\000\000\000\000\009\000\
    \009\000\009\000\009\000\009\000\009\000\009\000\009\000\009\000\
    \009\000\009\000\009\000\009\000\009\000\009\000\009\000\009\000\
    \009\000\009\000\009\000\009\000\009\000\009\000\009\000\009\000\
    \009\000\000\000\000\000\000\000\000\000\000\000\000\000\014\000\
    \015\000\000\000\015\000\015\000\026\000\000\000\000\000\027\000\
    \000\000\027\000\000\000\000\000\000\000\000\000\000\000\038\000\
    \000\000\012\000\000\000\000\000\028\000\000\000\000\000\039\000\
    \000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
    \000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
    \012\000\000\000\000\000\028\000\000\000\038\000\039\000\000\000\
    \010\000\000\000\000\000\000\000\028\000\000\000\000\000\039\000\
    \009\000\009\000\009\000\009\000\009\000\009\000\009\000\009\000\
    \009\000\009\000\000\000\011\000\000\000\000\000\000\000\000\000\
    \001\000\009\000\009\000\009\000\009\000\009\000\009\000\009\000\
    \009\000\009\000\009\000\009\000\009\000\009\000\009\000\009\000\
    \009\000\009\000\009\000\009\000\009\000\009\000\009\000\009\000\
    \009\000\009\000\009\000\255\255\000\000\255\255\000\000\009\000\
    \255\255\009\000\009\000\009\000\009\000\009\000\009\000\009\000\
    \009\000\009\000\009\000\009\000\009\000\009\000\009\000\009\000\
    \009\000\009\000\009\000\009\000\009\000\009\000\009\000\009\000\
    \009\000\009\000\009\000\255\255\255\255\255\255\255\255\020\000\
    \027\000\255\255\255\255\038\000\255\255\036\000\000\000\000\000\
    \000\000\000\000\255\255\000\000\000\000\000\000\000\000\000\000\
    \000\000\000\000\000\000\000\000\000\000\000\000\020\000\000\000\
    \000\000\000\000\000\000\000\000\036\000\000\000\000\000\000\000\
    \000\000\000\000\000\000\000\000\000\000\036\000\000\000\000\000\
    \255\255\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
    \000\000\000\000\000\000\000\000\000\000\000\000\000\000\021\000\
    \021\000\021\000\021\000\021\000\021\000\021\000\021\000\021\000\
    \021\000\021\000\021\000\021\000\021\000\021\000\021\000\021\000\
    \021\000\021\000\021\000\021\000\021\000\021\000\021\000\021\000\
    \021\000\000\000\000\000\000\000\000\000\000\000\000\000\021\000\
    \021\000\021\000\021\000\021\000\021\000\021\000\021\000\021\000\
    \021\000\021\000\021\000\021\000\021\000\021\000\021\000\021\000\
    \021\000\021\000\021\000\021\000\021\000\021\000\021\000\021\000\
    \021\000\024\000\000\000\000\000\000\000\000\000\000\000\037\000\
    \000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
    \000\000\000\000\000\000\255\255\000\000\000\000\255\255\000\000\
    \024\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
    \022\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
    \021\000\021\000\021\000\021\000\021\000\021\000\021\000\021\000\
    \021\000\021\000\000\000\023\000\000\000\000\000\000\000\000\000\
    \000\000\021\000\021\000\021\000\021\000\021\000\021\000\021\000\
    \021\000\021\000\021\000\021\000\021\000\021\000\021\000\021\000\
    \021\000\021\000\021\000\021\000\021\000\021\000\021\000\021\000\
    \021\000\021\000\021\000\000\000\000\000\000\000\000\000\021\000\
    \000\000\021\000\021\000\021\000\021\000\021\000\021\000\021\000\
    \021\000\021\000\021\000\021\000\021\000\021\000\021\000\021\000\
    \021\000\021\000\021\000\021\000\021\000\021\000\021\000\021\000\
    \021\000\021\000\021\000\032\000\000\000\000\000\000\000\000\000\
    \000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
    \000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
    \000\000\000\000\032\000\000\000\255\255\000\000\000\000\000\000\
    \000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
    \000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
    \000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
    \000\000\000\000\000\000\033\000\033\000\033\000\033\000\033\000\
    \033\000\033\000\033\000\033\000\033\000\033\000\033\000\033\000\
    \033\000\033\000\033\000\033\000\033\000\033\000\033\000\033\000\
    \033\000\033\000\033\000\033\000\033\000\000\000\000\000\000\000\
    \000\000\000\000\000\000\033\000\033\000\033\000\033\000\033\000\
    \033\000\033\000\033\000\033\000\033\000\033\000\033\000\033\000\
    \033\000\033\000\033\000\033\000\033\000\033\000\033\000\033\000\
    \033\000\033\000\033\000\033\000\033\000\035\000\000\000\000\000\
    \000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
    \000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
    \000\000\000\000\000\000\000\000\035\000\000\000\000\000\000\000\
    \000\000\000\000\000\000\000\000\034\000\000\000\000\000\000\000\
    \000\000\000\000\000\000\000\000\033\000\033\000\033\000\033\000\
    \033\000\033\000\033\000\033\000\033\000\033\000\000\000\000\000\
    \000\000\000\000\000\000\000\000\000\000\033\000\033\000\033\000\
    \033\000\033\000\033\000\033\000\033\000\033\000\033\000\033\000\
    \033\000\033\000\033\000\033\000\033\000\033\000\033\000\033\000\
    \033\000\033\000\033\000\033\000\033\000\033\000\033\000\000\000\
    \000\000\000\000\000\000\033\000\000\000\033\000\033\000\033\000\
    \033\000\033\000\033\000\033\000\033\000\033\000\033\000\033\000\
    \033\000\033\000\033\000\033\000\033\000\033\000\033\000\033\000\
    \033\000\033\000\033\000\033\000\033\000\033\000\033\000\000\000\
    \000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
    \000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
    \000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
    \000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
    \000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
    \000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
    \000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
    \000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
    \000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
    \000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
    \000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
    \000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
    \000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
    \000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
    \000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
    \000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
    \000\000\000\000\000\000\000\000\000\000";
  Lexing.lex_check =
   "\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
    \255\255\007\000\000\000\012\000\019\000\031\000\024\000\035\000\
    \255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
    \255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
    \007\000\255\255\012\000\019\000\031\000\024\000\035\000\255\255\
    \255\255\255\255\012\000\255\255\255\255\024\000\035\000\255\255\
    \255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
    \255\255\255\255\255\255\255\255\255\255\012\000\255\255\008\000\
    \024\000\255\255\255\255\255\255\010\000\013\000\022\000\016\000\
    \255\255\034\000\025\000\255\255\255\255\255\255\255\255\255\255\
    \255\255\255\255\255\255\255\255\255\255\255\255\008\000\255\255\
    \255\255\255\255\255\255\255\255\013\000\255\255\016\000\255\255\
    \255\255\025\000\000\000\255\255\014\000\013\000\015\000\016\000\
    \030\000\000\000\025\000\026\000\018\000\027\000\004\000\002\000\
    \003\000\017\000\029\000\037\000\006\000\255\255\000\000\008\000\
    \008\000\008\000\008\000\008\000\008\000\008\000\008\000\008\000\
    \008\000\008\000\008\000\008\000\008\000\008\000\008\000\008\000\
    \008\000\008\000\008\000\008\000\008\000\008\000\008\000\008\000\
    \008\000\038\000\255\255\255\255\255\255\255\255\255\255\008\000\
    \008\000\008\000\008\000\008\000\008\000\008\000\008\000\008\000\
    \008\000\008\000\008\000\008\000\008\000\008\000\008\000\008\000\
    \008\000\008\000\008\000\008\000\008\000\008\000\008\000\008\000\
    \008\000\255\255\255\255\255\255\255\255\255\255\255\255\013\000\
    \014\000\255\255\015\000\016\000\025\000\255\255\255\255\026\000\
    \255\255\027\000\255\255\255\255\255\255\255\255\255\255\037\000\
    \255\255\009\000\255\255\255\255\028\000\255\255\255\255\039\000\
    \255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
    \255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
    \009\000\255\255\255\255\028\000\255\255\038\000\039\000\255\255\
    \009\000\255\255\255\255\255\255\028\000\255\255\255\255\039\000\
    \009\000\009\000\009\000\009\000\009\000\009\000\009\000\009\000\
    \009\000\009\000\255\255\009\000\255\255\255\255\255\255\255\255\
    \000\000\009\000\009\000\009\000\009\000\009\000\009\000\009\000\
    \009\000\009\000\009\000\009\000\009\000\009\000\009\000\009\000\
    \009\000\009\000\009\000\009\000\009\000\009\000\009\000\009\000\
    \009\000\009\000\009\000\010\000\255\255\022\000\255\255\009\000\
    \034\000\009\000\009\000\009\000\009\000\009\000\009\000\009\000\
    \009\000\009\000\009\000\009\000\009\000\009\000\009\000\009\000\
    \009\000\009\000\009\000\009\000\009\000\009\000\009\000\009\000\
    \009\000\009\000\009\000\014\000\013\000\015\000\016\000\020\000\
    \028\000\025\000\026\000\039\000\027\000\036\000\255\255\255\255\
    \255\255\255\255\037\000\255\255\255\255\255\255\255\255\255\255\
    \255\255\255\255\255\255\255\255\255\255\255\255\020\000\255\255\
    \255\255\255\255\255\255\255\255\036\000\255\255\255\255\255\255\
    \255\255\255\255\255\255\255\255\255\255\036\000\255\255\255\255\
    \038\000\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
    \255\255\255\255\255\255\255\255\255\255\255\255\255\255\020\000\
    \020\000\020\000\020\000\020\000\020\000\020\000\020\000\020\000\
    \020\000\020\000\020\000\020\000\020\000\020\000\020\000\020\000\
    \020\000\020\000\020\000\020\000\020\000\020\000\020\000\020\000\
    \020\000\255\255\255\255\255\255\255\255\255\255\255\255\020\000\
    \020\000\020\000\020\000\020\000\020\000\020\000\020\000\020\000\
    \020\000\020\000\020\000\020\000\020\000\020\000\020\000\020\000\
    \020\000\020\000\020\000\020\000\020\000\020\000\020\000\020\000\
    \020\000\021\000\255\255\255\255\255\255\255\255\255\255\036\000\
    \255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
    \255\255\255\255\255\255\028\000\255\255\255\255\039\000\255\255\
    \021\000\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
    \021\000\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
    \021\000\021\000\021\000\021\000\021\000\021\000\021\000\021\000\
    \021\000\021\000\255\255\021\000\255\255\255\255\255\255\255\255\
    \255\255\021\000\021\000\021\000\021\000\021\000\021\000\021\000\
    \021\000\021\000\021\000\021\000\021\000\021\000\021\000\021\000\
    \021\000\021\000\021\000\021\000\021\000\021\000\021\000\021\000\
    \021\000\021\000\021\000\255\255\255\255\255\255\255\255\021\000\
    \255\255\021\000\021\000\021\000\021\000\021\000\021\000\021\000\
    \021\000\021\000\021\000\021\000\021\000\021\000\021\000\021\000\
    \021\000\021\000\021\000\021\000\021\000\021\000\021\000\021\000\
    \021\000\021\000\021\000\032\000\255\255\255\255\255\255\255\255\
    \255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
    \255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
    \255\255\255\255\032\000\255\255\036\000\255\255\255\255\255\255\
    \255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
    \255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
    \255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
    \255\255\255\255\255\255\032\000\032\000\032\000\032\000\032\000\
    \032\000\032\000\032\000\032\000\032\000\032\000\032\000\032\000\
    \032\000\032\000\032\000\032\000\032\000\032\000\032\000\032\000\
    \032\000\032\000\032\000\032\000\032\000\255\255\255\255\255\255\
    \255\255\255\255\255\255\032\000\032\000\032\000\032\000\032\000\
    \032\000\032\000\032\000\032\000\032\000\032\000\032\000\032\000\
    \032\000\032\000\032\000\032\000\032\000\032\000\032\000\032\000\
    \032\000\032\000\032\000\032\000\032\000\033\000\255\255\255\255\
    \255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
    \255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
    \255\255\255\255\255\255\255\255\033\000\255\255\255\255\255\255\
    \255\255\255\255\255\255\255\255\033\000\255\255\255\255\255\255\
    \255\255\255\255\255\255\255\255\033\000\033\000\033\000\033\000\
    \033\000\033\000\033\000\033\000\033\000\033\000\255\255\255\255\
    \255\255\255\255\255\255\255\255\255\255\033\000\033\000\033\000\
    \033\000\033\000\033\000\033\000\033\000\033\000\033\000\033\000\
    \033\000\033\000\033\000\033\000\033\000\033\000\033\000\033\000\
    \033\000\033\000\033\000\033\000\033\000\033\000\033\000\255\255\
    \255\255\255\255\255\255\033\000\255\255\033\000\033\000\033\000\
    \033\000\033\000\033\000\033\000\033\000\033\000\033\000\033\000\
    \033\000\033\000\033\000\033\000\033\000\033\000\033\000\033\000\
    \033\000\033\000\033\000\033\000\033\000\033\000\033\000\255\255\
    \255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
    \255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
    \255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
    \255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
    \255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
    \255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
    \255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
    \255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
    \255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
    \255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
    \255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
    \255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
    \255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
    \255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
    \255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
    \255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
    \255\255\255\255\255\255\255\255\255\255";
  Lexing.lex_base_code =
   "";
  Lexing.lex_backtrk_code =
   "";
  Lexing.lex_default_code =
   "";
  Lexing.lex_trans_code =
   "";
  Lexing.lex_check_code =
   "";
  Lexing.lex_code =
   "";
}

let rec preprocess lexbuf =
   __ocaml_lex_preprocess_rec lexbuf 0
and __ocaml_lex_preprocess_rec lexbuf __ocaml_lex_state =
  match Lexing.engine __ocaml_lex_tables __ocaml_lex_state lexbuf with
      | 0 ->
# 28 "minicpreprocessor.mll"
        (print "\n"; "")
# 286 "minicpreprocessor.ml"

  | 1 ->
let
# 29 "minicpreprocessor.mll"
                                    s
# 292 "minicpreprocessor.ml"
= Lexing.sub_lexeme lexbuf lexbuf.Lexing.lex_start_pos lexbuf.Lexing.lex_curr_pos in
# 29 "minicpreprocessor.mll"
                                      (print "%s" s; "")
# 296 "minicpreprocessor.ml"

  | 2 ->
let
# 30 "minicpreprocessor.mll"
                                     s
# 302 "minicpreprocessor.ml"
= Lexing.sub_lexeme lexbuf lexbuf.Lexing.lex_start_pos lexbuf.Lexing.lex_curr_pos in
# 30 "minicpreprocessor.mll"
                                       (print "%s" s; "")
# 306 "minicpreprocessor.ml"

  | 3 ->
let
# 31 "minicpreprocessor.mll"
                                                                 s
# 312 "minicpreprocessor.ml"
= Lexing.sub_lexeme lexbuf lexbuf.Lexing.lex_start_pos lexbuf.Lexing.lex_curr_pos in
# 31 "minicpreprocessor.mll"
                                                                   (s)
# 316 "minicpreprocessor.ml"

  | 4 ->
let
# 32 "minicpreprocessor.mll"
                                                                  s
# 322 "minicpreprocessor.ml"
= Lexing.sub_lexeme lexbuf lexbuf.Lexing.lex_start_pos lexbuf.Lexing.lex_curr_pos in
# 32 "minicpreprocessor.mll"
                                                                    (s)
# 326 "minicpreprocessor.ml"

  | 5 ->
let
# 33 "minicpreprocessor.mll"
                                                                  s
# 332 "minicpreprocessor.ml"
= Lexing.sub_lexeme lexbuf lexbuf.Lexing.lex_start_pos lexbuf.Lexing.lex_curr_pos in
# 33 "minicpreprocessor.mll"
                                                                    (s)
# 336 "minicpreprocessor.ml"

  | 6 ->
# 34 "minicpreprocessor.mll"
       (print "&@@&"; raise EofException)
# 341 "minicpreprocessor.ml"

  | __ocaml_lex_state -> lexbuf.Lexing.refill_buff lexbuf;
      __ocaml_lex_preprocess_rec lexbuf __ocaml_lex_state

;;

# 39 "minicpreprocessor.mll"
 
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

# 361 "minicpreprocessor.ml"
