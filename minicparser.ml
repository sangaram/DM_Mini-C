
module MenhirBasics = struct
  
  exception Error
  
  type token = 
    | WHILE
    | VOID
    | TAB of (
# 9 "minicparser.mly"
       (Minic.typ)
# 13 "minicparser.ml"
  )
    | SEMI
    | RPAR
    | RHOOK
    | RETURN
    | RACC
    | PUTCHAR
    | PLUS
    | OR
    | NOT
    | NE
    | MOINS
    | MOD
    | LT
    | LPAR
    | LHOOK
    | LE
    | LACC
    | INT
    | IF
    | IDENT of (
# 10 "minicparser.mly"
       (string)
# 37 "minicparser.ml"
  )
    | GT
    | GE
    | FOR
    | FOIS
    | EQ
    | EOF
    | END
    | ELSE
    | EGAL
    | DIV
    | CST_B of (
# 8 "minicparser.mly"
       (bool)
# 52 "minicparser.ml"
  )
    | CST of (
# 7 "minicparser.mly"
       (int)
# 57 "minicparser.ml"
  )
    | COMMA
    | BOOL
    | AND
  
end

include MenhirBasics

let _eRR =
  MenhirBasics.Error

type _menhir_env = {
  _menhir_lexer: Lexing.lexbuf -> token;
  _menhir_lexbuf: Lexing.lexbuf;
  _menhir_token: token;
  mutable _menhir_error: bool
}

and _menhir_state = 
  | MenhirState131
  | MenhirState123
  | MenhirState118
  | MenhirState114
  | MenhirState109
  | MenhirState106
  | MenhirState104
  | MenhirState102
  | MenhirState99
  | MenhirState97
  | MenhirState94
  | MenhirState91
  | MenhirState89
  | MenhirState86
  | MenhirState82
  | MenhirState79
  | MenhirState78
  | MenhirState70
  | MenhirState65
  | MenhirState63
  | MenhirState61
  | MenhirState59
  | MenhirState57
  | MenhirState55
  | MenhirState53
  | MenhirState51
  | MenhirState49
  | MenhirState47
  | MenhirState45
  | MenhirState43
  | MenhirState41
  | MenhirState39
  | MenhirState37
  | MenhirState30
  | MenhirState28
  | MenhirState27
  | MenhirState26
  | MenhirState25
  | MenhirState23
  | MenhirState22
  | MenhirState18
  | MenhirState11
  | MenhirState7
  | MenhirState0

# 1 "minicparser.mly"
  
  open Minic;;

# 127 "minicparser.ml"

let rec _menhir_goto_instr : _menhir_env -> 'ttv_tail -> _menhir_state -> (
# 25 "minicparser.mly"
      (Minic.instr)
# 132 "minicparser.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv525 * _menhir_state * (
# 25 "minicparser.mly"
      (Minic.instr)
# 140 "minicparser.ml"
    )) = Obj.magic _menhir_stack in
    ((assert (not _menhir_env._menhir_error);
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | FOR ->
        _menhir_run101 _menhir_env (Obj.magic _menhir_stack) MenhirState114
    | IDENT _v ->
        _menhir_run90 _menhir_env (Obj.magic _menhir_stack) MenhirState114 _v
    | IF ->
        _menhir_run85 _menhir_env (Obj.magic _menhir_stack) MenhirState114
    | PUTCHAR ->
        _menhir_run81 _menhir_env (Obj.magic _menhir_stack) MenhirState114
    | RETURN ->
        _menhir_run79 _menhir_env (Obj.magic _menhir_stack) MenhirState114
    | WHILE ->
        _menhir_run24 _menhir_env (Obj.magic _menhir_stack) MenhirState114
    | RACC ->
        _menhir_reduce30 _menhir_env (Obj.magic _menhir_stack) MenhirState114
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState114) : 'freshtv526)

and _menhir_goto_loption_separated_nonempty_list_COMMA_expr__ : _menhir_env -> 'ttv_tail -> _menhir_state -> 'tv_loption_separated_nonempty_list_COMMA_expr__ -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    match _menhir_s with
    | MenhirState30 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv507 * _menhir_state * (
# 10 "minicparser.mly"
       (string)
# 173 "minicparser.ml"
        ))) * _menhir_state * 'tv_loption_separated_nonempty_list_COMMA_expr__) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | RPAR ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv503 * _menhir_state * (
# 10 "minicparser.mly"
       (string)
# 183 "minicparser.ml"
            ))) * _menhir_state * 'tv_loption_separated_nonempty_list_COMMA_expr__) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv501 * _menhir_state * (
# 10 "minicparser.mly"
       (string)
# 190 "minicparser.ml"
            ))) * _menhir_state * 'tv_loption_separated_nonempty_list_COMMA_expr__) = Obj.magic _menhir_stack in
            ((let ((_menhir_stack, _menhir_s, (f : (
# 10 "minicparser.mly"
       (string)
# 195 "minicparser.ml"
            ))), _, (xs0 : 'tv_loption_separated_nonempty_list_COMMA_expr__)) = _menhir_stack in
            let _4 = () in
            let _2 = () in
            let _v : 'tv_expr = let s =
              let xs = xs0 in
              
# 206 "/usr/share/menhir/standard.mly"
    ( xs )
# 204 "minicparser.ml"
              
            in
            
# 107 "minicparser.mly"
                                                 ( Call(f,s) )
# 210 "minicparser.ml"
             in
            _menhir_goto_expr _menhir_env _menhir_stack _menhir_s _v) : 'freshtv502)) : 'freshtv504)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv505 * _menhir_state * (
# 10 "minicparser.mly"
       (string)
# 220 "minicparser.ml"
            ))) * _menhir_state * 'tv_loption_separated_nonempty_list_COMMA_expr__) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv506)) : 'freshtv508)
    | MenhirState70 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (((('freshtv515 * _menhir_state) * _menhir_state * 'tv_expr))) * _menhir_state * 'tv_loption_separated_nonempty_list_COMMA_expr__) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | RACC ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (((('freshtv511 * _menhir_state) * _menhir_state * 'tv_expr))) * _menhir_state * 'tv_loption_separated_nonempty_list_COMMA_expr__) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (((('freshtv509 * _menhir_state) * _menhir_state * 'tv_expr))) * _menhir_state * 'tv_loption_separated_nonempty_list_COMMA_expr__) = Obj.magic _menhir_stack in
            ((let (((_menhir_stack, _menhir_s), _, (e : 'tv_expr)), _, (xs0 : 'tv_loption_separated_nonempty_list_COMMA_expr__)) = _menhir_stack in
            let _6 = () in
            let _4 = () in
            let _3 = () in
            let _1 = () in
            let _v : 'tv_expr = let l =
              let xs = xs0 in
              
# 206 "/usr/share/menhir/standard.mly"
    ( xs )
# 246 "minicparser.ml"
              
            in
            
# 91 "minicparser.mly"
                                                             (Tab(e, l))
# 252 "minicparser.ml"
             in
            _menhir_goto_expr _menhir_env _menhir_stack _menhir_s _v) : 'freshtv510)) : 'freshtv512)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (((('freshtv513 * _menhir_state) * _menhir_state * 'tv_expr))) * _menhir_state * 'tv_loption_separated_nonempty_list_COMMA_expr__) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv514)) : 'freshtv516)
    | MenhirState91 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv523 * _menhir_state * (
# 10 "minicparser.mly"
       (string)
# 267 "minicparser.ml"
        ))) * _menhir_state * 'tv_loption_separated_nonempty_list_COMMA_expr__) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | RPAR ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv519 * _menhir_state * (
# 10 "minicparser.mly"
       (string)
# 277 "minicparser.ml"
            ))) * _menhir_state * 'tv_loption_separated_nonempty_list_COMMA_expr__) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv517 * _menhir_state * (
# 10 "minicparser.mly"
       (string)
# 284 "minicparser.ml"
            ))) * _menhir_state * 'tv_loption_separated_nonempty_list_COMMA_expr__) = Obj.magic _menhir_stack in
            ((let ((_menhir_stack, _menhir_s, (f : (
# 10 "minicparser.mly"
       (string)
# 289 "minicparser.ml"
            ))), _, (xs0 : 'tv_loption_separated_nonempty_list_COMMA_expr__)) = _menhir_stack in
            let _4 = () in
            let _2 = () in
            let _v : (
# 24 "minicparser.mly"
      (Minic.instr)
# 296 "minicparser.ml"
            ) = let s =
              let xs = xs0 in
              
# 206 "/usr/share/menhir/standard.mly"
    ( xs )
# 302 "minicparser.ml"
              
            in
            
# 68 "minicparser.mly"
                                                 (Expr(Call(f,s)))
# 308 "minicparser.ml"
             in
            _menhir_goto_simple_instr _menhir_env _menhir_stack _menhir_s _v) : 'freshtv518)) : 'freshtv520)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv521 * _menhir_state * (
# 10 "minicparser.mly"
       (string)
# 318 "minicparser.ml"
            ))) * _menhir_state * 'tv_loption_separated_nonempty_list_COMMA_expr__) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv522)) : 'freshtv524)
    | _ ->
        _menhir_fail ()

and _menhir_goto_simple_instr : _menhir_env -> 'ttv_tail -> _menhir_state -> (
# 24 "minicparser.mly"
      (Minic.instr)
# 328 "minicparser.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    match _menhir_s with
    | MenhirState106 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (((((('freshtv491 * _menhir_state)) * _menhir_state * (
# 26 "minicparser.mly"
      (string * Minic.typ * Minic.expr option)
# 338 "minicparser.ml"
        ))) * _menhir_state * 'tv_expr)) * _menhir_state * (
# 24 "minicparser.mly"
      (Minic.instr)
# 342 "minicparser.ml"
        )) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | RPAR ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (((((('freshtv487 * _menhir_state)) * _menhir_state * (
# 26 "minicparser.mly"
      (string * Minic.typ * Minic.expr option)
# 352 "minicparser.ml"
            ))) * _menhir_state * 'tv_expr)) * _menhir_state * (
# 24 "minicparser.mly"
      (Minic.instr)
# 356 "minicparser.ml"
            )) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | LACC ->
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : ((((((('freshtv483 * _menhir_state)) * _menhir_state * (
# 26 "minicparser.mly"
      (string * Minic.typ * Minic.expr option)
# 366 "minicparser.ml"
                ))) * _menhir_state * 'tv_expr)) * _menhir_state * (
# 24 "minicparser.mly"
      (Minic.instr)
# 370 "minicparser.ml"
                ))) = Obj.magic _menhir_stack in
                ((let _menhir_env = _menhir_discard _menhir_env in
                let _tok = _menhir_env._menhir_token in
                match _tok with
                | FOR ->
                    _menhir_run101 _menhir_env (Obj.magic _menhir_stack) MenhirState109
                | IDENT _v ->
                    _menhir_run90 _menhir_env (Obj.magic _menhir_stack) MenhirState109 _v
                | IF ->
                    _menhir_run85 _menhir_env (Obj.magic _menhir_stack) MenhirState109
                | PUTCHAR ->
                    _menhir_run81 _menhir_env (Obj.magic _menhir_stack) MenhirState109
                | RETURN ->
                    _menhir_run79 _menhir_env (Obj.magic _menhir_stack) MenhirState109
                | WHILE ->
                    _menhir_run24 _menhir_env (Obj.magic _menhir_stack) MenhirState109
                | RACC ->
                    _menhir_reduce30 _menhir_env (Obj.magic _menhir_stack) MenhirState109
                | _ ->
                    assert (not _menhir_env._menhir_error);
                    _menhir_env._menhir_error <- true;
                    _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState109) : 'freshtv484)
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : ((((((('freshtv485 * _menhir_state)) * _menhir_state * (
# 26 "minicparser.mly"
      (string * Minic.typ * Minic.expr option)
# 400 "minicparser.ml"
                ))) * _menhir_state * 'tv_expr)) * _menhir_state * (
# 24 "minicparser.mly"
      (Minic.instr)
# 404 "minicparser.ml"
                ))) = Obj.magic _menhir_stack in
                ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv486)) : 'freshtv488)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (((((('freshtv489 * _menhir_state)) * _menhir_state * (
# 26 "minicparser.mly"
      (string * Minic.typ * Minic.expr option)
# 415 "minicparser.ml"
            ))) * _menhir_state * 'tv_expr)) * _menhir_state * (
# 24 "minicparser.mly"
      (Minic.instr)
# 419 "minicparser.ml"
            )) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv490)) : 'freshtv492)
    | MenhirState23 | MenhirState78 | MenhirState123 | MenhirState89 | MenhirState114 | MenhirState109 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv499 * _menhir_state * (
# 24 "minicparser.mly"
      (Minic.instr)
# 428 "minicparser.ml"
        )) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | SEMI ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv495 * _menhir_state * (
# 24 "minicparser.mly"
      (Minic.instr)
# 438 "minicparser.ml"
            )) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv493 * _menhir_state * (
# 24 "minicparser.mly"
      (Minic.instr)
# 445 "minicparser.ml"
            )) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, (i : (
# 24 "minicparser.mly"
      (Minic.instr)
# 450 "minicparser.ml"
            ))) = _menhir_stack in
            let _2 = () in
            let _v : (
# 25 "minicparser.mly"
      (Minic.instr)
# 456 "minicparser.ml"
            ) = 
# 73 "minicparser.mly"
                      (i)
# 460 "minicparser.ml"
             in
            _menhir_goto_instr _menhir_env _menhir_stack _menhir_s _v) : 'freshtv494)) : 'freshtv496)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv497 * _menhir_state * (
# 24 "minicparser.mly"
      (Minic.instr)
# 470 "minicparser.ml"
            )) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv498)) : 'freshtv500)
    | _ ->
        _menhir_fail ()

and _menhir_goto_separated_nonempty_list_COMMA_expr_ : _menhir_env -> 'ttv_tail -> _menhir_state -> 'tv_separated_nonempty_list_COMMA_expr_ -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    match _menhir_s with
    | MenhirState91 | MenhirState70 | MenhirState30 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv477) = Obj.magic _menhir_stack in
        let (_menhir_s : _menhir_state) = _menhir_s in
        let (_v : 'tv_separated_nonempty_list_COMMA_expr_) = _v in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv475) = Obj.magic _menhir_stack in
        let (_menhir_s : _menhir_state) = _menhir_s in
        let ((x : 'tv_separated_nonempty_list_COMMA_expr_) : 'tv_separated_nonempty_list_COMMA_expr_) = _v in
        ((let _v : 'tv_loption_separated_nonempty_list_COMMA_expr__ = 
# 130 "/usr/share/menhir/standard.mly"
    ( x )
# 492 "minicparser.ml"
         in
        _menhir_goto_loption_separated_nonempty_list_COMMA_expr__ _menhir_env _menhir_stack _menhir_s _v) : 'freshtv476)) : 'freshtv478)
    | MenhirState63 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv481 * _menhir_state * 'tv_expr)) = Obj.magic _menhir_stack in
        let (_menhir_s : _menhir_state) = _menhir_s in
        let (_v : 'tv_separated_nonempty_list_COMMA_expr_) = _v in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv479 * _menhir_state * 'tv_expr)) = Obj.magic _menhir_stack in
        let (_ : _menhir_state) = _menhir_s in
        let ((xs : 'tv_separated_nonempty_list_COMMA_expr_) : 'tv_separated_nonempty_list_COMMA_expr_) = _v in
        ((let (_menhir_stack, _menhir_s, (x : 'tv_expr)) = _menhir_stack in
        let _2 = () in
        let _v : 'tv_separated_nonempty_list_COMMA_expr_ = 
# 217 "/usr/share/menhir/standard.mly"
    ( x :: xs )
# 509 "minicparser.ml"
         in
        _menhir_goto_separated_nonempty_list_COMMA_expr_ _menhir_env _menhir_stack _menhir_s _v) : 'freshtv480)) : 'freshtv482)
    | _ ->
        _menhir_fail ()

and _menhir_run37 : _menhir_env -> 'ttv_tail * _menhir_state * 'tv_expr -> 'ttv_return =
  fun _menhir_env _menhir_stack ->
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | CST _v ->
        _menhir_run32 _menhir_env (Obj.magic _menhir_stack) MenhirState37 _v
    | CST_B _v ->
        _menhir_run31 _menhir_env (Obj.magic _menhir_stack) MenhirState37 _v
    | IDENT _v ->
        _menhir_run29 _menhir_env (Obj.magic _menhir_stack) MenhirState37 _v
    | LHOOK ->
        _menhir_run28 _menhir_env (Obj.magic _menhir_stack) MenhirState37
    | LPAR ->
        _menhir_run27 _menhir_env (Obj.magic _menhir_stack) MenhirState37
    | NOT ->
        _menhir_run26 _menhir_env (Obj.magic _menhir_stack) MenhirState37
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState37

and _menhir_run39 : _menhir_env -> 'ttv_tail * _menhir_state * 'tv_expr -> 'ttv_return =
  fun _menhir_env _menhir_stack ->
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | CST _v ->
        _menhir_run32 _menhir_env (Obj.magic _menhir_stack) MenhirState39 _v
    | CST_B _v ->
        _menhir_run31 _menhir_env (Obj.magic _menhir_stack) MenhirState39 _v
    | IDENT _v ->
        _menhir_run29 _menhir_env (Obj.magic _menhir_stack) MenhirState39 _v
    | LHOOK ->
        _menhir_run28 _menhir_env (Obj.magic _menhir_stack) MenhirState39
    | LPAR ->
        _menhir_run27 _menhir_env (Obj.magic _menhir_stack) MenhirState39
    | NOT ->
        _menhir_run26 _menhir_env (Obj.magic _menhir_stack) MenhirState39
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState39

and _menhir_run43 : _menhir_env -> 'ttv_tail * _menhir_state * 'tv_expr -> 'ttv_return =
  fun _menhir_env _menhir_stack ->
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | CST _v ->
        _menhir_run32 _menhir_env (Obj.magic _menhir_stack) MenhirState43 _v
    | CST_B _v ->
        _menhir_run31 _menhir_env (Obj.magic _menhir_stack) MenhirState43 _v
    | IDENT _v ->
        _menhir_run29 _menhir_env (Obj.magic _menhir_stack) MenhirState43 _v
    | LHOOK ->
        _menhir_run28 _menhir_env (Obj.magic _menhir_stack) MenhirState43
    | LPAR ->
        _menhir_run27 _menhir_env (Obj.magic _menhir_stack) MenhirState43
    | NOT ->
        _menhir_run26 _menhir_env (Obj.magic _menhir_stack) MenhirState43
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState43

and _menhir_run61 : _menhir_env -> 'ttv_tail * _menhir_state * 'tv_expr -> 'ttv_return =
  fun _menhir_env _menhir_stack ->
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | CST _v ->
        _menhir_run32 _menhir_env (Obj.magic _menhir_stack) MenhirState61 _v
    | CST_B _v ->
        _menhir_run31 _menhir_env (Obj.magic _menhir_stack) MenhirState61 _v
    | IDENT _v ->
        _menhir_run29 _menhir_env (Obj.magic _menhir_stack) MenhirState61 _v
    | LHOOK ->
        _menhir_run28 _menhir_env (Obj.magic _menhir_stack) MenhirState61
    | LPAR ->
        _menhir_run27 _menhir_env (Obj.magic _menhir_stack) MenhirState61
    | NOT ->
        _menhir_run26 _menhir_env (Obj.magic _menhir_stack) MenhirState61
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState61

and _menhir_run45 : _menhir_env -> 'ttv_tail * _menhir_state * 'tv_expr -> 'ttv_return =
  fun _menhir_env _menhir_stack ->
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | CST _v ->
        _menhir_run32 _menhir_env (Obj.magic _menhir_stack) MenhirState45 _v
    | CST_B _v ->
        _menhir_run31 _menhir_env (Obj.magic _menhir_stack) MenhirState45 _v
    | IDENT _v ->
        _menhir_run29 _menhir_env (Obj.magic _menhir_stack) MenhirState45 _v
    | LHOOK ->
        _menhir_run28 _menhir_env (Obj.magic _menhir_stack) MenhirState45
    | LPAR ->
        _menhir_run27 _menhir_env (Obj.magic _menhir_stack) MenhirState45
    | NOT ->
        _menhir_run26 _menhir_env (Obj.magic _menhir_stack) MenhirState45
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState45

and _menhir_run47 : _menhir_env -> 'ttv_tail * _menhir_state * 'tv_expr -> 'ttv_return =
  fun _menhir_env _menhir_stack ->
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | CST _v ->
        _menhir_run32 _menhir_env (Obj.magic _menhir_stack) MenhirState47 _v
    | CST_B _v ->
        _menhir_run31 _menhir_env (Obj.magic _menhir_stack) MenhirState47 _v
    | IDENT _v ->
        _menhir_run29 _menhir_env (Obj.magic _menhir_stack) MenhirState47 _v
    | LHOOK ->
        _menhir_run28 _menhir_env (Obj.magic _menhir_stack) MenhirState47
    | LPAR ->
        _menhir_run27 _menhir_env (Obj.magic _menhir_stack) MenhirState47
    | NOT ->
        _menhir_run26 _menhir_env (Obj.magic _menhir_stack) MenhirState47
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState47

and _menhir_run49 : _menhir_env -> 'ttv_tail * _menhir_state * 'tv_expr -> 'ttv_return =
  fun _menhir_env _menhir_stack ->
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | CST _v ->
        _menhir_run32 _menhir_env (Obj.magic _menhir_stack) MenhirState49 _v
    | CST_B _v ->
        _menhir_run31 _menhir_env (Obj.magic _menhir_stack) MenhirState49 _v
    | IDENT _v ->
        _menhir_run29 _menhir_env (Obj.magic _menhir_stack) MenhirState49 _v
    | LHOOK ->
        _menhir_run28 _menhir_env (Obj.magic _menhir_stack) MenhirState49
    | LPAR ->
        _menhir_run27 _menhir_env (Obj.magic _menhir_stack) MenhirState49
    | NOT ->
        _menhir_run26 _menhir_env (Obj.magic _menhir_stack) MenhirState49
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState49

and _menhir_run51 : _menhir_env -> 'ttv_tail * _menhir_state * 'tv_expr -> 'ttv_return =
  fun _menhir_env _menhir_stack ->
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | CST _v ->
        _menhir_run32 _menhir_env (Obj.magic _menhir_stack) MenhirState51 _v
    | CST_B _v ->
        _menhir_run31 _menhir_env (Obj.magic _menhir_stack) MenhirState51 _v
    | IDENT _v ->
        _menhir_run29 _menhir_env (Obj.magic _menhir_stack) MenhirState51 _v
    | LHOOK ->
        _menhir_run28 _menhir_env (Obj.magic _menhir_stack) MenhirState51
    | LPAR ->
        _menhir_run27 _menhir_env (Obj.magic _menhir_stack) MenhirState51
    | NOT ->
        _menhir_run26 _menhir_env (Obj.magic _menhir_stack) MenhirState51
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState51

and _menhir_run53 : _menhir_env -> 'ttv_tail * _menhir_state * 'tv_expr -> 'ttv_return =
  fun _menhir_env _menhir_stack ->
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | CST _v ->
        _menhir_run32 _menhir_env (Obj.magic _menhir_stack) MenhirState53 _v
    | CST_B _v ->
        _menhir_run31 _menhir_env (Obj.magic _menhir_stack) MenhirState53 _v
    | IDENT _v ->
        _menhir_run29 _menhir_env (Obj.magic _menhir_stack) MenhirState53 _v
    | LHOOK ->
        _menhir_run28 _menhir_env (Obj.magic _menhir_stack) MenhirState53
    | LPAR ->
        _menhir_run27 _menhir_env (Obj.magic _menhir_stack) MenhirState53
    | NOT ->
        _menhir_run26 _menhir_env (Obj.magic _menhir_stack) MenhirState53
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState53

and _menhir_run57 : _menhir_env -> 'ttv_tail * _menhir_state * 'tv_expr -> 'ttv_return =
  fun _menhir_env _menhir_stack ->
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | CST _v ->
        _menhir_run32 _menhir_env (Obj.magic _menhir_stack) MenhirState57 _v
    | CST_B _v ->
        _menhir_run31 _menhir_env (Obj.magic _menhir_stack) MenhirState57 _v
    | IDENT _v ->
        _menhir_run29 _menhir_env (Obj.magic _menhir_stack) MenhirState57 _v
    | LHOOK ->
        _menhir_run28 _menhir_env (Obj.magic _menhir_stack) MenhirState57
    | LPAR ->
        _menhir_run27 _menhir_env (Obj.magic _menhir_stack) MenhirState57
    | NOT ->
        _menhir_run26 _menhir_env (Obj.magic _menhir_stack) MenhirState57
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState57

and _menhir_run55 : _menhir_env -> 'ttv_tail * _menhir_state * 'tv_expr -> 'ttv_return =
  fun _menhir_env _menhir_stack ->
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | CST _v ->
        _menhir_run32 _menhir_env (Obj.magic _menhir_stack) MenhirState55 _v
    | CST_B _v ->
        _menhir_run31 _menhir_env (Obj.magic _menhir_stack) MenhirState55 _v
    | IDENT _v ->
        _menhir_run29 _menhir_env (Obj.magic _menhir_stack) MenhirState55 _v
    | LHOOK ->
        _menhir_run28 _menhir_env (Obj.magic _menhir_stack) MenhirState55
    | LPAR ->
        _menhir_run27 _menhir_env (Obj.magic _menhir_stack) MenhirState55
    | NOT ->
        _menhir_run26 _menhir_env (Obj.magic _menhir_stack) MenhirState55
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState55

and _menhir_run59 : _menhir_env -> 'ttv_tail * _menhir_state * 'tv_expr -> 'ttv_return =
  fun _menhir_env _menhir_stack ->
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | CST _v ->
        _menhir_run32 _menhir_env (Obj.magic _menhir_stack) MenhirState59 _v
    | CST_B _v ->
        _menhir_run31 _menhir_env (Obj.magic _menhir_stack) MenhirState59 _v
    | IDENT _v ->
        _menhir_run29 _menhir_env (Obj.magic _menhir_stack) MenhirState59 _v
    | LHOOK ->
        _menhir_run28 _menhir_env (Obj.magic _menhir_stack) MenhirState59
    | LPAR ->
        _menhir_run27 _menhir_env (Obj.magic _menhir_stack) MenhirState59
    | NOT ->
        _menhir_run26 _menhir_env (Obj.magic _menhir_stack) MenhirState59
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState59

and _menhir_run41 : _menhir_env -> 'ttv_tail * _menhir_state * 'tv_expr -> 'ttv_return =
  fun _menhir_env _menhir_stack ->
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | CST _v ->
        _menhir_run32 _menhir_env (Obj.magic _menhir_stack) MenhirState41 _v
    | CST_B _v ->
        _menhir_run31 _menhir_env (Obj.magic _menhir_stack) MenhirState41 _v
    | IDENT _v ->
        _menhir_run29 _menhir_env (Obj.magic _menhir_stack) MenhirState41 _v
    | LHOOK ->
        _menhir_run28 _menhir_env (Obj.magic _menhir_stack) MenhirState41
    | LPAR ->
        _menhir_run27 _menhir_env (Obj.magic _menhir_stack) MenhirState41
    | NOT ->
        _menhir_run26 _menhir_env (Obj.magic _menhir_stack) MenhirState41
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState41

and _menhir_goto_separated_nonempty_list_COMMA_params_ : _menhir_env -> 'ttv_tail -> _menhir_state -> 'tv_separated_nonempty_list_COMMA_params_ -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    match _menhir_s with
    | MenhirState11 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv469) = Obj.magic _menhir_stack in
        let (_menhir_s : _menhir_state) = _menhir_s in
        let (_v : 'tv_separated_nonempty_list_COMMA_params_) = _v in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv467) = Obj.magic _menhir_stack in
        let (_menhir_s : _menhir_state) = _menhir_s in
        let ((x : 'tv_separated_nonempty_list_COMMA_params_) : 'tv_separated_nonempty_list_COMMA_params_) = _v in
        ((let _v : 'tv_loption_separated_nonempty_list_COMMA_params__ = 
# 130 "/usr/share/menhir/standard.mly"
    ( x )
# 816 "minicparser.ml"
         in
        _menhir_goto_loption_separated_nonempty_list_COMMA_params__ _menhir_env _menhir_stack _menhir_s _v) : 'freshtv468)) : 'freshtv470)
    | MenhirState18 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv473 * _menhir_state * 'tv_params)) = Obj.magic _menhir_stack in
        let (_menhir_s : _menhir_state) = _menhir_s in
        let (_v : 'tv_separated_nonempty_list_COMMA_params_) = _v in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv471 * _menhir_state * 'tv_params)) = Obj.magic _menhir_stack in
        let (_ : _menhir_state) = _menhir_s in
        let ((xs : 'tv_separated_nonempty_list_COMMA_params_) : 'tv_separated_nonempty_list_COMMA_params_) = _v in
        ((let (_menhir_stack, _menhir_s, (x : 'tv_params)) = _menhir_stack in
        let _2 = () in
        let _v : 'tv_separated_nonempty_list_COMMA_params_ = 
# 217 "/usr/share/menhir/standard.mly"
    ( x :: xs )
# 833 "minicparser.ml"
         in
        _menhir_goto_separated_nonempty_list_COMMA_params_ _menhir_env _menhir_stack _menhir_s _v) : 'freshtv472)) : 'freshtv474)
    | _ ->
        _menhir_fail ()

and _menhir_goto_list_instr_ : _menhir_env -> 'ttv_tail -> _menhir_state -> 'tv_list_instr_ -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    match _menhir_s with
    | MenhirState109 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((((((((('freshtv415 * _menhir_state)) * _menhir_state * (
# 26 "minicparser.mly"
      (string * Minic.typ * Minic.expr option)
# 848 "minicparser.ml"
        ))) * _menhir_state * 'tv_expr)) * _menhir_state * (
# 24 "minicparser.mly"
      (Minic.instr)
# 852 "minicparser.ml"
        )))) * _menhir_state * 'tv_list_instr_) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | RACC ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ((((((((('freshtv411 * _menhir_state)) * _menhir_state * (
# 26 "minicparser.mly"
      (string * Minic.typ * Minic.expr option)
# 862 "minicparser.ml"
            ))) * _menhir_state * 'tv_expr)) * _menhir_state * (
# 24 "minicparser.mly"
      (Minic.instr)
# 866 "minicparser.ml"
            )))) * _menhir_state * 'tv_list_instr_) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ((((((((('freshtv409 * _menhir_state)) * _menhir_state * (
# 26 "minicparser.mly"
      (string * Minic.typ * Minic.expr option)
# 873 "minicparser.ml"
            ))) * _menhir_state * 'tv_expr)) * _menhir_state * (
# 24 "minicparser.mly"
      (Minic.instr)
# 877 "minicparser.ml"
            )))) * _menhir_state * 'tv_list_instr_) = Obj.magic _menhir_stack in
            ((let (((((_menhir_stack, _menhir_s), _, (d : (
# 26 "minicparser.mly"
      (string * Minic.typ * Minic.expr option)
# 882 "minicparser.ml"
            ))), _, (e : 'tv_expr)), _, (i : (
# 24 "minicparser.mly"
      (Minic.instr)
# 886 "minicparser.ml"
            ))), _, (l : 'tv_list_instr_)) = _menhir_stack in
            let _11 = () in
            let _9 = () in
            let _8 = () in
            let _6 = () in
            let _4 = () in
            let _2 = () in
            let _1 = () in
            let _v : (
# 25 "minicparser.mly"
      (Minic.instr)
# 898 "minicparser.ml"
            ) = 
# 76 "minicparser.mly"
 (	
		 let s ,t, o = d in 
		 if o = None then failwith("La variable de la boucle for doit être initialisée") else For(t, s, Option.get o, e, i, l)
	)
# 905 "minicparser.ml"
             in
            _menhir_goto_instr _menhir_env _menhir_stack _menhir_s _v) : 'freshtv410)) : 'freshtv412)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ((((((((('freshtv413 * _menhir_state)) * _menhir_state * (
# 26 "minicparser.mly"
      (string * Minic.typ * Minic.expr option)
# 915 "minicparser.ml"
            ))) * _menhir_state * 'tv_expr)) * _menhir_state * (
# 24 "minicparser.mly"
      (Minic.instr)
# 919 "minicparser.ml"
            )))) * _menhir_state * 'tv_list_instr_) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv414)) : 'freshtv416)
    | MenhirState114 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv419 * _menhir_state * (
# 25 "minicparser.mly"
      (Minic.instr)
# 928 "minicparser.ml"
        )) * _menhir_state * 'tv_list_instr_) = Obj.magic _menhir_stack in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv417 * _menhir_state * (
# 25 "minicparser.mly"
      (Minic.instr)
# 934 "minicparser.ml"
        )) * _menhir_state * 'tv_list_instr_) = Obj.magic _menhir_stack in
        ((let ((_menhir_stack, _menhir_s, (x : (
# 25 "minicparser.mly"
      (Minic.instr)
# 939 "minicparser.ml"
        ))), _, (xs : 'tv_list_instr_)) = _menhir_stack in
        let _v : 'tv_list_instr_ = 
# 187 "/usr/share/menhir/standard.mly"
    ( x :: xs )
# 944 "minicparser.ml"
         in
        _menhir_goto_list_instr_ _menhir_env _menhir_stack _menhir_s _v) : 'freshtv418)) : 'freshtv420)
    | MenhirState89 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((((('freshtv435 * _menhir_state)) * _menhir_state * 'tv_expr))) * _menhir_state * 'tv_list_instr_) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | RACC ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ((((('freshtv431 * _menhir_state)) * _menhir_state * 'tv_expr))) * _menhir_state * 'tv_list_instr_) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | ELSE ->
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : (((((('freshtv425 * _menhir_state)) * _menhir_state * 'tv_expr))) * _menhir_state * 'tv_list_instr_)) = Obj.magic _menhir_stack in
                ((let _menhir_env = _menhir_discard _menhir_env in
                let _tok = _menhir_env._menhir_token in
                match _tok with
                | LACC ->
                    let (_menhir_env : _menhir_env) = _menhir_env in
                    let (_menhir_stack : ((((((('freshtv421 * _menhir_state)) * _menhir_state * 'tv_expr))) * _menhir_state * 'tv_list_instr_))) = Obj.magic _menhir_stack in
                    ((let _menhir_env = _menhir_discard _menhir_env in
                    let _tok = _menhir_env._menhir_token in
                    match _tok with
                    | FOR ->
                        _menhir_run101 _menhir_env (Obj.magic _menhir_stack) MenhirState123
                    | IDENT _v ->
                        _menhir_run90 _menhir_env (Obj.magic _menhir_stack) MenhirState123 _v
                    | IF ->
                        _menhir_run85 _menhir_env (Obj.magic _menhir_stack) MenhirState123
                    | PUTCHAR ->
                        _menhir_run81 _menhir_env (Obj.magic _menhir_stack) MenhirState123
                    | RETURN ->
                        _menhir_run79 _menhir_env (Obj.magic _menhir_stack) MenhirState123
                    | WHILE ->
                        _menhir_run24 _menhir_env (Obj.magic _menhir_stack) MenhirState123
                    | RACC ->
                        _menhir_reduce30 _menhir_env (Obj.magic _menhir_stack) MenhirState123
                    | _ ->
                        assert (not _menhir_env._menhir_error);
                        _menhir_env._menhir_error <- true;
                        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState123) : 'freshtv422)
                | _ ->
                    assert (not _menhir_env._menhir_error);
                    _menhir_env._menhir_error <- true;
                    let (_menhir_env : _menhir_env) = _menhir_env in
                    let (_menhir_stack : ((((((('freshtv423 * _menhir_state)) * _menhir_state * 'tv_expr))) * _menhir_state * 'tv_list_instr_))) = Obj.magic _menhir_stack in
                    ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
                    _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv424)) : 'freshtv426)
            | FOR | IDENT _ | IF | PUTCHAR | RACC | RETURN | WHILE ->
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : (((((('freshtv427 * _menhir_state)) * _menhir_state * 'tv_expr))) * _menhir_state * 'tv_list_instr_)) = Obj.magic _menhir_stack in
                ((let (((_menhir_stack, _menhir_s), _, (e : 'tv_expr)), _, (s1 : 'tv_list_instr_)) = _menhir_stack in
                let _7 = () in
                let _5 = () in
                let _4 = () in
                let _2 = () in
                let _1 = () in
                let _v : (
# 25 "minicparser.mly"
      (Minic.instr)
# 1008 "minicparser.ml"
                ) = 
# 82 "minicparser.mly"
                                               (If(e,s1,[]))
# 1012 "minicparser.ml"
                 in
                _menhir_goto_instr _menhir_env _menhir_stack _menhir_s _v) : 'freshtv428)
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : (((((('freshtv429 * _menhir_state)) * _menhir_state * 'tv_expr))) * _menhir_state * 'tv_list_instr_)) = Obj.magic _menhir_stack in
                ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv430)) : 'freshtv432)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ((((('freshtv433 * _menhir_state)) * _menhir_state * 'tv_expr))) * _menhir_state * 'tv_list_instr_) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv434)) : 'freshtv436)
    | MenhirState123 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((((((((('freshtv443 * _menhir_state)) * _menhir_state * 'tv_expr))) * _menhir_state * 'tv_list_instr_)))) * _menhir_state * 'tv_list_instr_) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | RACC ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ((((((((('freshtv439 * _menhir_state)) * _menhir_state * 'tv_expr))) * _menhir_state * 'tv_list_instr_)))) * _menhir_state * 'tv_list_instr_) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ((((((((('freshtv437 * _menhir_state)) * _menhir_state * 'tv_expr))) * _menhir_state * 'tv_list_instr_)))) * _menhir_state * 'tv_list_instr_) = Obj.magic _menhir_stack in
            ((let ((((_menhir_stack, _menhir_s), _, (e : 'tv_expr)), _, (s1 : 'tv_list_instr_)), _, (s2 : 'tv_list_instr_)) = _menhir_stack in
            let _11 = () in
            let _9 = () in
            let _8 = () in
            let _7 = () in
            let _5 = () in
            let _4 = () in
            let _2 = () in
            let _1 = () in
            let _v : (
# 25 "minicparser.mly"
      (Minic.instr)
# 1053 "minicparser.ml"
            ) = 
# 81 "minicparser.mly"
                                                                             (If(e,s1,s2))
# 1057 "minicparser.ml"
             in
            _menhir_goto_instr _menhir_env _menhir_stack _menhir_s _v) : 'freshtv438)) : 'freshtv440)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ((((((((('freshtv441 * _menhir_state)) * _menhir_state * 'tv_expr))) * _menhir_state * 'tv_list_instr_)))) * _menhir_state * 'tv_list_instr_) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv442)) : 'freshtv444)
    | MenhirState78 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((((('freshtv451 * _menhir_state)) * _menhir_state * 'tv_expr))) * _menhir_state * 'tv_list_instr_) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | RACC ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ((((('freshtv447 * _menhir_state)) * _menhir_state * 'tv_expr))) * _menhir_state * 'tv_list_instr_) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ((((('freshtv445 * _menhir_state)) * _menhir_state * 'tv_expr))) * _menhir_state * 'tv_list_instr_) = Obj.magic _menhir_stack in
            ((let (((_menhir_stack, _menhir_s), _, (e : 'tv_expr)), _, (l : 'tv_list_instr_)) = _menhir_stack in
            let _7 = () in
            let _5 = () in
            let _4 = () in
            let _2 = () in
            let _1 = () in
            let _v : (
# 25 "minicparser.mly"
      (Minic.instr)
# 1088 "minicparser.ml"
            ) = 
# 74 "minicparser.mly"
                                                 (While(e,l))
# 1092 "minicparser.ml"
             in
            _menhir_goto_instr _menhir_env _menhir_stack _menhir_s _v) : 'freshtv446)) : 'freshtv448)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ((((('freshtv449 * _menhir_state)) * _menhir_state * 'tv_expr))) * _menhir_state * 'tv_list_instr_) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv450)) : 'freshtv452)
    | MenhirState23 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((((((('freshtv465 * _menhir_state * (
# 23 "minicparser.mly"
      (Minic.typ)
# 1107 "minicparser.ml"
        )) * (
# 10 "minicparser.mly"
       (string)
# 1111 "minicparser.ml"
        ))) * _menhir_state * 'tv_loption_separated_nonempty_list_COMMA_params__))) * _menhir_state * (
# 27 "minicparser.mly"
      ((string * Minic.typ * Minic.expr option) list)
# 1115 "minicparser.ml"
        )) * _menhir_state * 'tv_list_instr_) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | RACC ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ((((((('freshtv461 * _menhir_state * (
# 23 "minicparser.mly"
      (Minic.typ)
# 1125 "minicparser.ml"
            )) * (
# 10 "minicparser.mly"
       (string)
# 1129 "minicparser.ml"
            ))) * _menhir_state * 'tv_loption_separated_nonempty_list_COMMA_params__))) * _menhir_state * (
# 27 "minicparser.mly"
      ((string * Minic.typ * Minic.expr option) list)
# 1133 "minicparser.ml"
            )) * _menhir_state * 'tv_list_instr_) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ((((((('freshtv459 * _menhir_state * (
# 23 "minicparser.mly"
      (Minic.typ)
# 1140 "minicparser.ml"
            )) * (
# 10 "minicparser.mly"
       (string)
# 1144 "minicparser.ml"
            ))) * _menhir_state * 'tv_loption_separated_nonempty_list_COMMA_params__))) * _menhir_state * (
# 27 "minicparser.mly"
      ((string * Minic.typ * Minic.expr option) list)
# 1148 "minicparser.ml"
            )) * _menhir_state * 'tv_list_instr_) = Obj.magic _menhir_stack in
            ((let (((((_menhir_stack, _menhir_s, (t : (
# 23 "minicparser.mly"
      (Minic.typ)
# 1153 "minicparser.ml"
            ))), (f : (
# 10 "minicparser.mly"
       (string)
# 1157 "minicparser.ml"
            ))), _, (xs0 : 'tv_loption_separated_nonempty_list_COMMA_params__)), _, (local : (
# 27 "minicparser.mly"
      ((string * Minic.typ * Minic.expr option) list)
# 1161 "minicparser.ml"
            ))), _, (l : 'tv_list_instr_)) = _menhir_stack in
            let _9 = () in
            let _6 = () in
            let _5 = () in
            let _3 = () in
            let _v : (
# 28 "minicparser.mly"
      (Minic.fun_def)
# 1170 "minicparser.ml"
            ) = let p =
              let xs = xs0 in
              
# 206 "/usr/share/menhir/standard.mly"
    ( xs )
# 1176 "minicparser.ml"
              
            in
            
# 50 "minicparser.mly"
                                                                                                     ( {name= f; params= p; return= t; locals= local; code= l} )
# 1182 "minicparser.ml"
             in
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv457) = _menhir_stack in
            let (_menhir_s : _menhir_state) = _menhir_s in
            let (_v : (
# 28 "minicparser.mly"
      (Minic.fun_def)
# 1190 "minicparser.ml"
            )) = _v in
            ((let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv455 * (
# 29 "minicparser.mly"
      (Minic.fun_def list)
# 1196 "minicparser.ml"
            )) = Obj.magic _menhir_stack in
            let (_menhir_s : _menhir_state) = _menhir_s in
            let (_v : (
# 28 "minicparser.mly"
      (Minic.fun_def)
# 1202 "minicparser.ml"
            )) = _v in
            ((let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv453 * (
# 29 "minicparser.mly"
      (Minic.fun_def list)
# 1208 "minicparser.ml"
            )) = Obj.magic _menhir_stack in
            let (_ : _menhir_state) = _menhir_s in
            let ((f : (
# 28 "minicparser.mly"
      (Minic.fun_def)
# 1214 "minicparser.ml"
            )) : (
# 28 "minicparser.mly"
      (Minic.fun_def)
# 1218 "minicparser.ml"
            )) = _v in
            ((let (_menhir_stack, (l : (
# 29 "minicparser.mly"
      (Minic.fun_def list)
# 1223 "minicparser.ml"
            ))) = _menhir_stack in
            let _v : (
# 29 "minicparser.mly"
      (Minic.fun_def list)
# 1228 "minicparser.ml"
            ) = 
# 55 "minicparser.mly"
                           ( f::l )
# 1232 "minicparser.ml"
             in
            _menhir_goto_fun_def_list _menhir_env _menhir_stack _v) : 'freshtv454)) : 'freshtv456)) : 'freshtv458)) : 'freshtv460)) : 'freshtv462)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ((((((('freshtv463 * _menhir_state * (
# 23 "minicparser.mly"
      (Minic.typ)
# 1242 "minicparser.ml"
            )) * (
# 10 "minicparser.mly"
       (string)
# 1246 "minicparser.ml"
            ))) * _menhir_state * 'tv_loption_separated_nonempty_list_COMMA_params__))) * _menhir_state * (
# 27 "minicparser.mly"
      ((string * Minic.typ * Minic.expr option) list)
# 1250 "minicparser.ml"
            )) * _menhir_state * 'tv_list_instr_) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv464)) : 'freshtv466)
    | _ ->
        _menhir_fail ()

and _menhir_reduce32 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _v : 'tv_loption_separated_nonempty_list_COMMA_expr__ = 
# 128 "/usr/share/menhir/standard.mly"
    ( [] )
# 1262 "minicparser.ml"
     in
    _menhir_goto_loption_separated_nonempty_list_COMMA_expr__ _menhir_env _menhir_stack _menhir_s _v

and _menhir_goto_expr : _menhir_env -> 'ttv_tail -> _menhir_state -> 'tv_expr -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    match _menhir_s with
    | MenhirState91 | MenhirState70 | MenhirState63 | MenhirState30 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv233 * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | AND ->
            _menhir_run41 _menhir_env (Obj.magic _menhir_stack)
        | COMMA ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv227 * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | CST _v ->
                _menhir_run32 _menhir_env (Obj.magic _menhir_stack) MenhirState63 _v
            | CST_B _v ->
                _menhir_run31 _menhir_env (Obj.magic _menhir_stack) MenhirState63 _v
            | IDENT _v ->
                _menhir_run29 _menhir_env (Obj.magic _menhir_stack) MenhirState63 _v
            | LHOOK ->
                _menhir_run28 _menhir_env (Obj.magic _menhir_stack) MenhirState63
            | LPAR ->
                _menhir_run27 _menhir_env (Obj.magic _menhir_stack) MenhirState63
            | NOT ->
                _menhir_run26 _menhir_env (Obj.magic _menhir_stack) MenhirState63
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState63) : 'freshtv228)
        | DIV ->
            _menhir_run59 _menhir_env (Obj.magic _menhir_stack)
        | EQ ->
            _menhir_run55 _menhir_env (Obj.magic _menhir_stack)
        | FOIS ->
            _menhir_run57 _menhir_env (Obj.magic _menhir_stack)
        | GE ->
            _menhir_run53 _menhir_env (Obj.magic _menhir_stack)
        | GT ->
            _menhir_run51 _menhir_env (Obj.magic _menhir_stack)
        | LE ->
            _menhir_run49 _menhir_env (Obj.magic _menhir_stack)
        | LT ->
            _menhir_run47 _menhir_env (Obj.magic _menhir_stack)
        | MOD ->
            _menhir_run45 _menhir_env (Obj.magic _menhir_stack)
        | MOINS ->
            _menhir_run61 _menhir_env (Obj.magic _menhir_stack)
        | NE ->
            _menhir_run43 _menhir_env (Obj.magic _menhir_stack)
        | OR ->
            _menhir_run39 _menhir_env (Obj.magic _menhir_stack)
        | PLUS ->
            _menhir_run37 _menhir_env (Obj.magic _menhir_stack)
        | RACC | RPAR ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv229 * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, (x : 'tv_expr)) = _menhir_stack in
            let _v : 'tv_separated_nonempty_list_COMMA_expr_ = 
# 215 "/usr/share/menhir/standard.mly"
    ( [ x ] )
# 1331 "minicparser.ml"
             in
            _menhir_goto_separated_nonempty_list_COMMA_expr_ _menhir_env _menhir_stack _menhir_s _v) : 'freshtv230)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv231 * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv232)) : 'freshtv234)
    | MenhirState37 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv239 * _menhir_state * 'tv_expr)) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | AND ->
            _menhir_run41 _menhir_env (Obj.magic _menhir_stack)
        | DIV ->
            _menhir_run59 _menhir_env (Obj.magic _menhir_stack)
        | EQ ->
            _menhir_run55 _menhir_env (Obj.magic _menhir_stack)
        | FOIS ->
            _menhir_run57 _menhir_env (Obj.magic _menhir_stack)
        | GE ->
            _menhir_run53 _menhir_env (Obj.magic _menhir_stack)
        | GT ->
            _menhir_run51 _menhir_env (Obj.magic _menhir_stack)
        | LE ->
            _menhir_run49 _menhir_env (Obj.magic _menhir_stack)
        | LT ->
            _menhir_run47 _menhir_env (Obj.magic _menhir_stack)
        | MOD ->
            _menhir_run45 _menhir_env (Obj.magic _menhir_stack)
        | NE ->
            _menhir_run43 _menhir_env (Obj.magic _menhir_stack)
        | OR ->
            _menhir_run39 _menhir_env (Obj.magic _menhir_stack)
        | COMMA | MOINS | PLUS | RACC | RHOOK | RPAR | SEMI ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv235 * _menhir_state * 'tv_expr)) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
            ((let ((_menhir_stack, _menhir_s, (e : 'tv_expr)), _, (f : 'tv_expr)) = _menhir_stack in
            let _2 = () in
            let _v : 'tv_expr = 
# 92 "minicparser.mly"
                     ( Add(e,f) )
# 1377 "minicparser.ml"
             in
            _menhir_goto_expr _menhir_env _menhir_stack _menhir_s _v) : 'freshtv236)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv237 * _menhir_state * 'tv_expr)) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv238)) : 'freshtv240)
    | MenhirState39 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv245 * _menhir_state * 'tv_expr)) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | AND ->
            _menhir_run41 _menhir_env (Obj.magic _menhir_stack)
        | COMMA | DIV | EQ | FOIS | GE | GT | LE | LT | MOD | MOINS | NE | OR | PLUS | RACC | RHOOK | RPAR | SEMI ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv241 * _menhir_state * 'tv_expr)) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
            ((let ((_menhir_stack, _menhir_s, (e : 'tv_expr)), _, (f : 'tv_expr)) = _menhir_stack in
            let _2 = () in
            let _v : 'tv_expr = 
# 104 "minicparser.mly"
                   ( Or(e,f) )
# 1403 "minicparser.ml"
             in
            _menhir_goto_expr _menhir_env _menhir_stack _menhir_s _v) : 'freshtv242)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv243 * _menhir_state * 'tv_expr)) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv244)) : 'freshtv246)
    | MenhirState41 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv249 * _menhir_state * 'tv_expr)) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv247 * _menhir_state * 'tv_expr)) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
        ((let ((_menhir_stack, _menhir_s, (e : 'tv_expr)), _, (f : 'tv_expr)) = _menhir_stack in
        let _2 = () in
        let _v : 'tv_expr = 
# 103 "minicparser.mly"
                    ( And(e,f) )
# 1423 "minicparser.ml"
         in
        _menhir_goto_expr _menhir_env _menhir_stack _menhir_s _v) : 'freshtv248)) : 'freshtv250)
    | MenhirState43 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv255 * _menhir_state * 'tv_expr)) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | AND ->
            _menhir_run41 _menhir_env (Obj.magic _menhir_stack)
        | OR ->
            _menhir_run39 _menhir_env (Obj.magic _menhir_stack)
        | COMMA | DIV | FOIS | MOD | MOINS | PLUS | RACC | RHOOK | RPAR | SEMI ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv251 * _menhir_state * 'tv_expr)) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
            ((let ((_menhir_stack, _menhir_s, (e : 'tv_expr)), _, (f : 'tv_expr)) = _menhir_stack in
            let _2 = () in
            let _v : 'tv_expr = 
# 102 "minicparser.mly"
                   ( Ne(e,f) )
# 1444 "minicparser.ml"
             in
            _menhir_goto_expr _menhir_env _menhir_stack _menhir_s _v) : 'freshtv252)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv253 * _menhir_state * 'tv_expr)) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv254)) : 'freshtv256)
    | MenhirState45 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv261 * _menhir_state * 'tv_expr)) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | AND ->
            _menhir_run41 _menhir_env (Obj.magic _menhir_stack)
        | EQ ->
            _menhir_run55 _menhir_env (Obj.magic _menhir_stack)
        | GE ->
            _menhir_run53 _menhir_env (Obj.magic _menhir_stack)
        | GT ->
            _menhir_run51 _menhir_env (Obj.magic _menhir_stack)
        | LE ->
            _menhir_run49 _menhir_env (Obj.magic _menhir_stack)
        | LT ->
            _menhir_run47 _menhir_env (Obj.magic _menhir_stack)
        | NE ->
            _menhir_run43 _menhir_env (Obj.magic _menhir_stack)
        | OR ->
            _menhir_run39 _menhir_env (Obj.magic _menhir_stack)
        | COMMA | DIV | FOIS | MOINS | PLUS | RACC | RHOOK | RPAR | SEMI ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv257 * _menhir_state * 'tv_expr)) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
            ((let ((_menhir_stack, _menhir_s, (e : 'tv_expr)), _, (f : 'tv_expr)) = _menhir_stack in
            let _2 = () in
            let _v : 'tv_expr = 
# 96 "minicparser.mly"
                    ( Mod(e,f) )
# 1484 "minicparser.ml"
             in
            _menhir_goto_expr _menhir_env _menhir_stack _menhir_s _v) : 'freshtv258)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv259 * _menhir_state * 'tv_expr)) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv260)) : 'freshtv262)
    | MenhirState47 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv267 * _menhir_state * 'tv_expr)) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | AND ->
            _menhir_run41 _menhir_env (Obj.magic _menhir_stack)
        | OR ->
            _menhir_run39 _menhir_env (Obj.magic _menhir_stack)
        | COMMA | DIV | FOIS | MOD | MOINS | PLUS | RACC | RHOOK | RPAR | SEMI ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv263 * _menhir_state * 'tv_expr)) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
            ((let ((_menhir_stack, _menhir_s, (e : 'tv_expr)), _, (f : 'tv_expr)) = _menhir_stack in
            let _2 = () in
            let _v : 'tv_expr = 
# 97 "minicparser.mly"
                   ( Lt(e,f) )
# 1512 "minicparser.ml"
             in
            _menhir_goto_expr _menhir_env _menhir_stack _menhir_s _v) : 'freshtv264)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv265 * _menhir_state * 'tv_expr)) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv266)) : 'freshtv268)
    | MenhirState49 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv273 * _menhir_state * 'tv_expr)) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | AND ->
            _menhir_run41 _menhir_env (Obj.magic _menhir_stack)
        | OR ->
            _menhir_run39 _menhir_env (Obj.magic _menhir_stack)
        | COMMA | DIV | FOIS | MOD | MOINS | PLUS | RACC | RHOOK | RPAR | SEMI ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv269 * _menhir_state * 'tv_expr)) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
            ((let ((_menhir_stack, _menhir_s, (e : 'tv_expr)), _, (f : 'tv_expr)) = _menhir_stack in
            let _2 = () in
            let _v : 'tv_expr = 
# 98 "minicparser.mly"
                   ( Le(e,f) )
# 1540 "minicparser.ml"
             in
            _menhir_goto_expr _menhir_env _menhir_stack _menhir_s _v) : 'freshtv270)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv271 * _menhir_state * 'tv_expr)) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv272)) : 'freshtv274)
    | MenhirState51 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv279 * _menhir_state * 'tv_expr)) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | AND ->
            _menhir_run41 _menhir_env (Obj.magic _menhir_stack)
        | OR ->
            _menhir_run39 _menhir_env (Obj.magic _menhir_stack)
        | COMMA | DIV | FOIS | MOD | MOINS | PLUS | RACC | RHOOK | RPAR | SEMI ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv275 * _menhir_state * 'tv_expr)) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
            ((let ((_menhir_stack, _menhir_s, (e : 'tv_expr)), _, (f : 'tv_expr)) = _menhir_stack in
            let _2 = () in
            let _v : 'tv_expr = 
# 99 "minicparser.mly"
                   ( Gt(e,f) )
# 1568 "minicparser.ml"
             in
            _menhir_goto_expr _menhir_env _menhir_stack _menhir_s _v) : 'freshtv276)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv277 * _menhir_state * 'tv_expr)) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv278)) : 'freshtv280)
    | MenhirState53 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv285 * _menhir_state * 'tv_expr)) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | AND ->
            _menhir_run41 _menhir_env (Obj.magic _menhir_stack)
        | OR ->
            _menhir_run39 _menhir_env (Obj.magic _menhir_stack)
        | COMMA | DIV | FOIS | MOD | MOINS | PLUS | RACC | RHOOK | RPAR | SEMI ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv281 * _menhir_state * 'tv_expr)) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
            ((let ((_menhir_stack, _menhir_s, (e : 'tv_expr)), _, (f : 'tv_expr)) = _menhir_stack in
            let _2 = () in
            let _v : 'tv_expr = 
# 100 "minicparser.mly"
                   ( Ge(e,f) )
# 1596 "minicparser.ml"
             in
            _menhir_goto_expr _menhir_env _menhir_stack _menhir_s _v) : 'freshtv282)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv283 * _menhir_state * 'tv_expr)) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv284)) : 'freshtv286)
    | MenhirState55 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv291 * _menhir_state * 'tv_expr)) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | AND ->
            _menhir_run41 _menhir_env (Obj.magic _menhir_stack)
        | OR ->
            _menhir_run39 _menhir_env (Obj.magic _menhir_stack)
        | COMMA | DIV | FOIS | MOD | MOINS | PLUS | RACC | RHOOK | RPAR | SEMI ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv287 * _menhir_state * 'tv_expr)) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
            ((let ((_menhir_stack, _menhir_s, (e : 'tv_expr)), _, (f : 'tv_expr)) = _menhir_stack in
            let _2 = () in
            let _v : 'tv_expr = 
# 101 "minicparser.mly"
                   ( Eq(e,f) )
# 1624 "minicparser.ml"
             in
            _menhir_goto_expr _menhir_env _menhir_stack _menhir_s _v) : 'freshtv288)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv289 * _menhir_state * 'tv_expr)) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv290)) : 'freshtv292)
    | MenhirState57 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv297 * _menhir_state * 'tv_expr)) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | AND ->
            _menhir_run41 _menhir_env (Obj.magic _menhir_stack)
        | EQ ->
            _menhir_run55 _menhir_env (Obj.magic _menhir_stack)
        | GE ->
            _menhir_run53 _menhir_env (Obj.magic _menhir_stack)
        | GT ->
            _menhir_run51 _menhir_env (Obj.magic _menhir_stack)
        | LE ->
            _menhir_run49 _menhir_env (Obj.magic _menhir_stack)
        | LT ->
            _menhir_run47 _menhir_env (Obj.magic _menhir_stack)
        | MOD ->
            _menhir_run45 _menhir_env (Obj.magic _menhir_stack)
        | NE ->
            _menhir_run43 _menhir_env (Obj.magic _menhir_stack)
        | OR ->
            _menhir_run39 _menhir_env (Obj.magic _menhir_stack)
        | COMMA | DIV | FOIS | MOINS | PLUS | RACC | RHOOK | RPAR | SEMI ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv293 * _menhir_state * 'tv_expr)) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
            ((let ((_menhir_stack, _menhir_s, (e : 'tv_expr)), _, (f : 'tv_expr)) = _menhir_stack in
            let _2 = () in
            let _v : 'tv_expr = 
# 94 "minicparser.mly"
                     ( Mul(e,f) )
# 1666 "minicparser.ml"
             in
            _menhir_goto_expr _menhir_env _menhir_stack _menhir_s _v) : 'freshtv294)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv295 * _menhir_state * 'tv_expr)) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv296)) : 'freshtv298)
    | MenhirState59 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv303 * _menhir_state * 'tv_expr)) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | AND ->
            _menhir_run41 _menhir_env (Obj.magic _menhir_stack)
        | EQ ->
            _menhir_run55 _menhir_env (Obj.magic _menhir_stack)
        | GE ->
            _menhir_run53 _menhir_env (Obj.magic _menhir_stack)
        | GT ->
            _menhir_run51 _menhir_env (Obj.magic _menhir_stack)
        | LE ->
            _menhir_run49 _menhir_env (Obj.magic _menhir_stack)
        | LT ->
            _menhir_run47 _menhir_env (Obj.magic _menhir_stack)
        | MOD ->
            _menhir_run45 _menhir_env (Obj.magic _menhir_stack)
        | NE ->
            _menhir_run43 _menhir_env (Obj.magic _menhir_stack)
        | OR ->
            _menhir_run39 _menhir_env (Obj.magic _menhir_stack)
        | COMMA | DIV | FOIS | MOINS | PLUS | RACC | RHOOK | RPAR | SEMI ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv299 * _menhir_state * 'tv_expr)) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
            ((let ((_menhir_stack, _menhir_s, (e : 'tv_expr)), _, (f : 'tv_expr)) = _menhir_stack in
            let _2 = () in
            let _v : 'tv_expr = 
# 95 "minicparser.mly"
                    ( Div(e,f) )
# 1708 "minicparser.ml"
             in
            _menhir_goto_expr _menhir_env _menhir_stack _menhir_s _v) : 'freshtv300)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv301 * _menhir_state * 'tv_expr)) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv302)) : 'freshtv304)
    | MenhirState61 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv309 * _menhir_state * 'tv_expr)) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | AND ->
            _menhir_run41 _menhir_env (Obj.magic _menhir_stack)
        | EQ ->
            _menhir_run55 _menhir_env (Obj.magic _menhir_stack)
        | GE ->
            _menhir_run53 _menhir_env (Obj.magic _menhir_stack)
        | GT ->
            _menhir_run51 _menhir_env (Obj.magic _menhir_stack)
        | LE ->
            _menhir_run49 _menhir_env (Obj.magic _menhir_stack)
        | LT ->
            _menhir_run47 _menhir_env (Obj.magic _menhir_stack)
        | MOD ->
            _menhir_run45 _menhir_env (Obj.magic _menhir_stack)
        | NE ->
            _menhir_run43 _menhir_env (Obj.magic _menhir_stack)
        | OR ->
            _menhir_run39 _menhir_env (Obj.magic _menhir_stack)
        | COMMA | DIV | FOIS | MOINS | PLUS | RACC | RHOOK | RPAR | SEMI ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv305 * _menhir_state * 'tv_expr)) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
            ((let ((_menhir_stack, _menhir_s, (e : 'tv_expr)), _, (f : 'tv_expr)) = _menhir_stack in
            let _2 = () in
            let _v : 'tv_expr = 
# 93 "minicparser.mly"
                                         ( Sub(e,f) )
# 1750 "minicparser.ml"
             in
            _menhir_goto_expr _menhir_env _menhir_stack _menhir_s _v) : 'freshtv306)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv307 * _menhir_state * 'tv_expr)) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv308)) : 'freshtv310)
    | MenhirState65 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv317 * _menhir_state * (
# 10 "minicparser.mly"
       (string)
# 1765 "minicparser.ml"
        ))) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | AND ->
            _menhir_run41 _menhir_env (Obj.magic _menhir_stack)
        | DIV ->
            _menhir_run59 _menhir_env (Obj.magic _menhir_stack)
        | EQ ->
            _menhir_run55 _menhir_env (Obj.magic _menhir_stack)
        | FOIS ->
            _menhir_run57 _menhir_env (Obj.magic _menhir_stack)
        | GE ->
            _menhir_run53 _menhir_env (Obj.magic _menhir_stack)
        | GT ->
            _menhir_run51 _menhir_env (Obj.magic _menhir_stack)
        | LE ->
            _menhir_run49 _menhir_env (Obj.magic _menhir_stack)
        | LT ->
            _menhir_run47 _menhir_env (Obj.magic _menhir_stack)
        | MOD ->
            _menhir_run45 _menhir_env (Obj.magic _menhir_stack)
        | MOINS ->
            _menhir_run61 _menhir_env (Obj.magic _menhir_stack)
        | NE ->
            _menhir_run43 _menhir_env (Obj.magic _menhir_stack)
        | OR ->
            _menhir_run39 _menhir_env (Obj.magic _menhir_stack)
        | PLUS ->
            _menhir_run37 _menhir_env (Obj.magic _menhir_stack)
        | RHOOK ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv313 * _menhir_state * (
# 10 "minicparser.mly"
       (string)
# 1801 "minicparser.ml"
            ))) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv311 * _menhir_state * (
# 10 "minicparser.mly"
       (string)
# 1808 "minicparser.ml"
            ))) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
            ((let ((_menhir_stack, _menhir_s, (x : (
# 10 "minicparser.mly"
       (string)
# 1813 "minicparser.ml"
            ))), _, (e : 'tv_expr)) = _menhir_stack in
            let _4 = () in
            let _2 = () in
            let _v : 'tv_expr = 
# 90 "minicparser.mly"
                             (GetT(x, e))
# 1820 "minicparser.ml"
             in
            _menhir_goto_expr _menhir_env _menhir_stack _menhir_s _v) : 'freshtv312)) : 'freshtv314)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv315 * _menhir_state * (
# 10 "minicparser.mly"
       (string)
# 1830 "minicparser.ml"
            ))) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv316)) : 'freshtv318)
    | MenhirState28 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv327 * _menhir_state) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | AND ->
            _menhir_run41 _menhir_env (Obj.magic _menhir_stack)
        | DIV ->
            _menhir_run59 _menhir_env (Obj.magic _menhir_stack)
        | EQ ->
            _menhir_run55 _menhir_env (Obj.magic _menhir_stack)
        | FOIS ->
            _menhir_run57 _menhir_env (Obj.magic _menhir_stack)
        | GE ->
            _menhir_run53 _menhir_env (Obj.magic _menhir_stack)
        | GT ->
            _menhir_run51 _menhir_env (Obj.magic _menhir_stack)
        | LE ->
            _menhir_run49 _menhir_env (Obj.magic _menhir_stack)
        | LT ->
            _menhir_run47 _menhir_env (Obj.magic _menhir_stack)
        | MOD ->
            _menhir_run45 _menhir_env (Obj.magic _menhir_stack)
        | MOINS ->
            _menhir_run61 _menhir_env (Obj.magic _menhir_stack)
        | NE ->
            _menhir_run43 _menhir_env (Obj.magic _menhir_stack)
        | OR ->
            _menhir_run39 _menhir_env (Obj.magic _menhir_stack)
        | PLUS ->
            _menhir_run37 _menhir_env (Obj.magic _menhir_stack)
        | RHOOK ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv323 * _menhir_state) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | LACC ->
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : (('freshtv319 * _menhir_state) * _menhir_state * 'tv_expr)) = Obj.magic _menhir_stack in
                ((let _menhir_env = _menhir_discard _menhir_env in
                let _tok = _menhir_env._menhir_token in
                match _tok with
                | CST _v ->
                    _menhir_run32 _menhir_env (Obj.magic _menhir_stack) MenhirState70 _v
                | CST_B _v ->
                    _menhir_run31 _menhir_env (Obj.magic _menhir_stack) MenhirState70 _v
                | IDENT _v ->
                    _menhir_run29 _menhir_env (Obj.magic _menhir_stack) MenhirState70 _v
                | LHOOK ->
                    _menhir_run28 _menhir_env (Obj.magic _menhir_stack) MenhirState70
                | LPAR ->
                    _menhir_run27 _menhir_env (Obj.magic _menhir_stack) MenhirState70
                | NOT ->
                    _menhir_run26 _menhir_env (Obj.magic _menhir_stack) MenhirState70
                | RACC ->
                    _menhir_reduce32 _menhir_env (Obj.magic _menhir_stack) MenhirState70
                | _ ->
                    assert (not _menhir_env._menhir_error);
                    _menhir_env._menhir_error <- true;
                    _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState70) : 'freshtv320)
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : (('freshtv321 * _menhir_state) * _menhir_state * 'tv_expr)) = Obj.magic _menhir_stack in
                ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv322)) : 'freshtv324)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv325 * _menhir_state) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv326)) : 'freshtv328)
    | MenhirState27 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv335 * _menhir_state) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | AND ->
            _menhir_run41 _menhir_env (Obj.magic _menhir_stack)
        | DIV ->
            _menhir_run59 _menhir_env (Obj.magic _menhir_stack)
        | EQ ->
            _menhir_run55 _menhir_env (Obj.magic _menhir_stack)
        | FOIS ->
            _menhir_run57 _menhir_env (Obj.magic _menhir_stack)
        | GE ->
            _menhir_run53 _menhir_env (Obj.magic _menhir_stack)
        | GT ->
            _menhir_run51 _menhir_env (Obj.magic _menhir_stack)
        | LE ->
            _menhir_run49 _menhir_env (Obj.magic _menhir_stack)
        | LT ->
            _menhir_run47 _menhir_env (Obj.magic _menhir_stack)
        | MOD ->
            _menhir_run45 _menhir_env (Obj.magic _menhir_stack)
        | MOINS ->
            _menhir_run61 _menhir_env (Obj.magic _menhir_stack)
        | NE ->
            _menhir_run43 _menhir_env (Obj.magic _menhir_stack)
        | OR ->
            _menhir_run39 _menhir_env (Obj.magic _menhir_stack)
        | PLUS ->
            _menhir_run37 _menhir_env (Obj.magic _menhir_stack)
        | RPAR ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv331 * _menhir_state) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv329 * _menhir_state) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
            ((let ((_menhir_stack, _menhir_s), _, (e : 'tv_expr)) = _menhir_stack in
            let _3 = () in
            let _1 = () in
            let _v : 'tv_expr = 
# 106 "minicparser.mly"
                   ( e )
# 1954 "minicparser.ml"
             in
            _menhir_goto_expr _menhir_env _menhir_stack _menhir_s _v) : 'freshtv330)) : 'freshtv332)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv333 * _menhir_state) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv334)) : 'freshtv336)
    | MenhirState26 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv339 * _menhir_state) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv337 * _menhir_state) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
        ((let ((_menhir_stack, _menhir_s), _, (e : 'tv_expr)) = _menhir_stack in
        let _1 = () in
        let _v : 'tv_expr = 
# 105 "minicparser.mly"
             (Not(e))
# 1974 "minicparser.ml"
         in
        _menhir_goto_expr _menhir_env _menhir_stack _menhir_s _v) : 'freshtv338)) : 'freshtv340)
    | MenhirState25 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv349 * _menhir_state)) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | AND ->
            _menhir_run41 _menhir_env (Obj.magic _menhir_stack)
        | DIV ->
            _menhir_run59 _menhir_env (Obj.magic _menhir_stack)
        | EQ ->
            _menhir_run55 _menhir_env (Obj.magic _menhir_stack)
        | FOIS ->
            _menhir_run57 _menhir_env (Obj.magic _menhir_stack)
        | GE ->
            _menhir_run53 _menhir_env (Obj.magic _menhir_stack)
        | GT ->
            _menhir_run51 _menhir_env (Obj.magic _menhir_stack)
        | LE ->
            _menhir_run49 _menhir_env (Obj.magic _menhir_stack)
        | LT ->
            _menhir_run47 _menhir_env (Obj.magic _menhir_stack)
        | MOD ->
            _menhir_run45 _menhir_env (Obj.magic _menhir_stack)
        | MOINS ->
            _menhir_run61 _menhir_env (Obj.magic _menhir_stack)
        | NE ->
            _menhir_run43 _menhir_env (Obj.magic _menhir_stack)
        | OR ->
            _menhir_run39 _menhir_env (Obj.magic _menhir_stack)
        | PLUS ->
            _menhir_run37 _menhir_env (Obj.magic _menhir_stack)
        | RPAR ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv345 * _menhir_state)) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | LACC ->
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : ((('freshtv341 * _menhir_state)) * _menhir_state * 'tv_expr)) = Obj.magic _menhir_stack in
                ((let _menhir_env = _menhir_discard _menhir_env in
                let _tok = _menhir_env._menhir_token in
                match _tok with
                | FOR ->
                    _menhir_run101 _menhir_env (Obj.magic _menhir_stack) MenhirState78
                | IDENT _v ->
                    _menhir_run90 _menhir_env (Obj.magic _menhir_stack) MenhirState78 _v
                | IF ->
                    _menhir_run85 _menhir_env (Obj.magic _menhir_stack) MenhirState78
                | PUTCHAR ->
                    _menhir_run81 _menhir_env (Obj.magic _menhir_stack) MenhirState78
                | RETURN ->
                    _menhir_run79 _menhir_env (Obj.magic _menhir_stack) MenhirState78
                | WHILE ->
                    _menhir_run24 _menhir_env (Obj.magic _menhir_stack) MenhirState78
                | RACC ->
                    _menhir_reduce30 _menhir_env (Obj.magic _menhir_stack) MenhirState78
                | _ ->
                    assert (not _menhir_env._menhir_error);
                    _menhir_env._menhir_error <- true;
                    _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState78) : 'freshtv342)
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : ((('freshtv343 * _menhir_state)) * _menhir_state * 'tv_expr)) = Obj.magic _menhir_stack in
                ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv344)) : 'freshtv346)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv347 * _menhir_state)) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv348)) : 'freshtv350)
    | MenhirState79 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv355 * _menhir_state) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | AND ->
            _menhir_run41 _menhir_env (Obj.magic _menhir_stack)
        | DIV ->
            _menhir_run59 _menhir_env (Obj.magic _menhir_stack)
        | EQ ->
            _menhir_run55 _menhir_env (Obj.magic _menhir_stack)
        | FOIS ->
            _menhir_run57 _menhir_env (Obj.magic _menhir_stack)
        | GE ->
            _menhir_run53 _menhir_env (Obj.magic _menhir_stack)
        | GT ->
            _menhir_run51 _menhir_env (Obj.magic _menhir_stack)
        | LE ->
            _menhir_run49 _menhir_env (Obj.magic _menhir_stack)
        | LT ->
            _menhir_run47 _menhir_env (Obj.magic _menhir_stack)
        | MOD ->
            _menhir_run45 _menhir_env (Obj.magic _menhir_stack)
        | MOINS ->
            _menhir_run61 _menhir_env (Obj.magic _menhir_stack)
        | NE ->
            _menhir_run43 _menhir_env (Obj.magic _menhir_stack)
        | OR ->
            _menhir_run39 _menhir_env (Obj.magic _menhir_stack)
        | PLUS ->
            _menhir_run37 _menhir_env (Obj.magic _menhir_stack)
        | RPAR | SEMI ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv351 * _menhir_state) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
            ((let ((_menhir_stack, _menhir_s), _, (e : 'tv_expr)) = _menhir_stack in
            let _1 = () in
            let _v : (
# 24 "minicparser.mly"
      (Minic.instr)
# 2093 "minicparser.ml"
            ) = 
# 67 "minicparser.mly"
                 (Return(e))
# 2097 "minicparser.ml"
             in
            _menhir_goto_simple_instr _menhir_env _menhir_stack _menhir_s _v) : 'freshtv352)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv353 * _menhir_state) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv354)) : 'freshtv356)
    | MenhirState82 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv363 * _menhir_state)) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | AND ->
            _menhir_run41 _menhir_env (Obj.magic _menhir_stack)
        | DIV ->
            _menhir_run59 _menhir_env (Obj.magic _menhir_stack)
        | EQ ->
            _menhir_run55 _menhir_env (Obj.magic _menhir_stack)
        | FOIS ->
            _menhir_run57 _menhir_env (Obj.magic _menhir_stack)
        | GE ->
            _menhir_run53 _menhir_env (Obj.magic _menhir_stack)
        | GT ->
            _menhir_run51 _menhir_env (Obj.magic _menhir_stack)
        | LE ->
            _menhir_run49 _menhir_env (Obj.magic _menhir_stack)
        | LT ->
            _menhir_run47 _menhir_env (Obj.magic _menhir_stack)
        | MOD ->
            _menhir_run45 _menhir_env (Obj.magic _menhir_stack)
        | MOINS ->
            _menhir_run61 _menhir_env (Obj.magic _menhir_stack)
        | NE ->
            _menhir_run43 _menhir_env (Obj.magic _menhir_stack)
        | OR ->
            _menhir_run39 _menhir_env (Obj.magic _menhir_stack)
        | PLUS ->
            _menhir_run37 _menhir_env (Obj.magic _menhir_stack)
        | RPAR ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv359 * _menhir_state)) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv357 * _menhir_state)) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
            ((let ((_menhir_stack, _menhir_s), _, (e : 'tv_expr)) = _menhir_stack in
            let _4 = () in
            let _2 = () in
            let _1 = () in
            let _v : (
# 24 "minicparser.mly"
      (Minic.instr)
# 2152 "minicparser.ml"
            ) = 
# 64 "minicparser.mly"
                           (Putchar(e))
# 2156 "minicparser.ml"
             in
            _menhir_goto_simple_instr _menhir_env _menhir_stack _menhir_s _v) : 'freshtv358)) : 'freshtv360)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv361 * _menhir_state)) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv362)) : 'freshtv364)
    | MenhirState86 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv373 * _menhir_state)) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | AND ->
            _menhir_run41 _menhir_env (Obj.magic _menhir_stack)
        | DIV ->
            _menhir_run59 _menhir_env (Obj.magic _menhir_stack)
        | EQ ->
            _menhir_run55 _menhir_env (Obj.magic _menhir_stack)
        | FOIS ->
            _menhir_run57 _menhir_env (Obj.magic _menhir_stack)
        | GE ->
            _menhir_run53 _menhir_env (Obj.magic _menhir_stack)
        | GT ->
            _menhir_run51 _menhir_env (Obj.magic _menhir_stack)
        | LE ->
            _menhir_run49 _menhir_env (Obj.magic _menhir_stack)
        | LT ->
            _menhir_run47 _menhir_env (Obj.magic _menhir_stack)
        | MOD ->
            _menhir_run45 _menhir_env (Obj.magic _menhir_stack)
        | MOINS ->
            _menhir_run61 _menhir_env (Obj.magic _menhir_stack)
        | NE ->
            _menhir_run43 _menhir_env (Obj.magic _menhir_stack)
        | OR ->
            _menhir_run39 _menhir_env (Obj.magic _menhir_stack)
        | PLUS ->
            _menhir_run37 _menhir_env (Obj.magic _menhir_stack)
        | RPAR ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv369 * _menhir_state)) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | LACC ->
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : ((('freshtv365 * _menhir_state)) * _menhir_state * 'tv_expr)) = Obj.magic _menhir_stack in
                ((let _menhir_env = _menhir_discard _menhir_env in
                let _tok = _menhir_env._menhir_token in
                match _tok with
                | FOR ->
                    _menhir_run101 _menhir_env (Obj.magic _menhir_stack) MenhirState89
                | IDENT _v ->
                    _menhir_run90 _menhir_env (Obj.magic _menhir_stack) MenhirState89 _v
                | IF ->
                    _menhir_run85 _menhir_env (Obj.magic _menhir_stack) MenhirState89
                | PUTCHAR ->
                    _menhir_run81 _menhir_env (Obj.magic _menhir_stack) MenhirState89
                | RETURN ->
                    _menhir_run79 _menhir_env (Obj.magic _menhir_stack) MenhirState89
                | WHILE ->
                    _menhir_run24 _menhir_env (Obj.magic _menhir_stack) MenhirState89
                | RACC ->
                    _menhir_reduce30 _menhir_env (Obj.magic _menhir_stack) MenhirState89
                | _ ->
                    assert (not _menhir_env._menhir_error);
                    _menhir_env._menhir_error <- true;
                    _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState89) : 'freshtv366)
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : ((('freshtv367 * _menhir_state)) * _menhir_state * 'tv_expr)) = Obj.magic _menhir_stack in
                ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv368)) : 'freshtv370)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv371 * _menhir_state)) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv372)) : 'freshtv374)
    | MenhirState94 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv383 * _menhir_state * (
# 10 "minicparser.mly"
       (string)
# 2247 "minicparser.ml"
        ))) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | AND ->
            _menhir_run41 _menhir_env (Obj.magic _menhir_stack)
        | DIV ->
            _menhir_run59 _menhir_env (Obj.magic _menhir_stack)
        | EQ ->
            _menhir_run55 _menhir_env (Obj.magic _menhir_stack)
        | FOIS ->
            _menhir_run57 _menhir_env (Obj.magic _menhir_stack)
        | GE ->
            _menhir_run53 _menhir_env (Obj.magic _menhir_stack)
        | GT ->
            _menhir_run51 _menhir_env (Obj.magic _menhir_stack)
        | LE ->
            _menhir_run49 _menhir_env (Obj.magic _menhir_stack)
        | LT ->
            _menhir_run47 _menhir_env (Obj.magic _menhir_stack)
        | MOD ->
            _menhir_run45 _menhir_env (Obj.magic _menhir_stack)
        | MOINS ->
            _menhir_run61 _menhir_env (Obj.magic _menhir_stack)
        | NE ->
            _menhir_run43 _menhir_env (Obj.magic _menhir_stack)
        | OR ->
            _menhir_run39 _menhir_env (Obj.magic _menhir_stack)
        | PLUS ->
            _menhir_run37 _menhir_env (Obj.magic _menhir_stack)
        | RHOOK ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv379 * _menhir_state * (
# 10 "minicparser.mly"
       (string)
# 2283 "minicparser.ml"
            ))) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | EGAL ->
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : ((('freshtv375 * _menhir_state * (
# 10 "minicparser.mly"
       (string)
# 2293 "minicparser.ml"
                ))) * _menhir_state * 'tv_expr)) = Obj.magic _menhir_stack in
                ((let _menhir_env = _menhir_discard _menhir_env in
                let _tok = _menhir_env._menhir_token in
                match _tok with
                | CST _v ->
                    _menhir_run32 _menhir_env (Obj.magic _menhir_stack) MenhirState97 _v
                | CST_B _v ->
                    _menhir_run31 _menhir_env (Obj.magic _menhir_stack) MenhirState97 _v
                | IDENT _v ->
                    _menhir_run29 _menhir_env (Obj.magic _menhir_stack) MenhirState97 _v
                | LHOOK ->
                    _menhir_run28 _menhir_env (Obj.magic _menhir_stack) MenhirState97
                | LPAR ->
                    _menhir_run27 _menhir_env (Obj.magic _menhir_stack) MenhirState97
                | NOT ->
                    _menhir_run26 _menhir_env (Obj.magic _menhir_stack) MenhirState97
                | _ ->
                    assert (not _menhir_env._menhir_error);
                    _menhir_env._menhir_error <- true;
                    _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState97) : 'freshtv376)
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : ((('freshtv377 * _menhir_state * (
# 10 "minicparser.mly"
       (string)
# 2321 "minicparser.ml"
                ))) * _menhir_state * 'tv_expr)) = Obj.magic _menhir_stack in
                ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv378)) : 'freshtv380)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv381 * _menhir_state * (
# 10 "minicparser.mly"
       (string)
# 2332 "minicparser.ml"
            ))) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv382)) : 'freshtv384)
    | MenhirState97 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((((('freshtv389 * _menhir_state * (
# 10 "minicparser.mly"
       (string)
# 2341 "minicparser.ml"
        ))) * _menhir_state * 'tv_expr))) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | AND ->
            _menhir_run41 _menhir_env (Obj.magic _menhir_stack)
        | DIV ->
            _menhir_run59 _menhir_env (Obj.magic _menhir_stack)
        | EQ ->
            _menhir_run55 _menhir_env (Obj.magic _menhir_stack)
        | FOIS ->
            _menhir_run57 _menhir_env (Obj.magic _menhir_stack)
        | GE ->
            _menhir_run53 _menhir_env (Obj.magic _menhir_stack)
        | GT ->
            _menhir_run51 _menhir_env (Obj.magic _menhir_stack)
        | LE ->
            _menhir_run49 _menhir_env (Obj.magic _menhir_stack)
        | LT ->
            _menhir_run47 _menhir_env (Obj.magic _menhir_stack)
        | MOD ->
            _menhir_run45 _menhir_env (Obj.magic _menhir_stack)
        | MOINS ->
            _menhir_run61 _menhir_env (Obj.magic _menhir_stack)
        | NE ->
            _menhir_run43 _menhir_env (Obj.magic _menhir_stack)
        | OR ->
            _menhir_run39 _menhir_env (Obj.magic _menhir_stack)
        | PLUS ->
            _menhir_run37 _menhir_env (Obj.magic _menhir_stack)
        | RPAR | SEMI ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ((((('freshtv385 * _menhir_state * (
# 10 "minicparser.mly"
       (string)
# 2377 "minicparser.ml"
            ))) * _menhir_state * 'tv_expr))) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
            ((let (((_menhir_stack, _menhir_s, (x : (
# 10 "minicparser.mly"
       (string)
# 2382 "minicparser.ml"
            ))), _, (e1 : 'tv_expr)), _, (e2 : 'tv_expr)) = _menhir_stack in
            let _5 = () in
            let _4 = () in
            let _2 = () in
            let _v : (
# 24 "minicparser.mly"
      (Minic.instr)
# 2390 "minicparser.ml"
            ) = 
# 66 "minicparser.mly"
                                           (SetT(x, e1, e2))
# 2394 "minicparser.ml"
             in
            _menhir_goto_simple_instr _menhir_env _menhir_stack _menhir_s _v) : 'freshtv386)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ((((('freshtv387 * _menhir_state * (
# 10 "minicparser.mly"
       (string)
# 2404 "minicparser.ml"
            ))) * _menhir_state * 'tv_expr))) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv388)) : 'freshtv390)
    | MenhirState99 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv395 * _menhir_state * (
# 10 "minicparser.mly"
       (string)
# 2413 "minicparser.ml"
        ))) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | AND ->
            _menhir_run41 _menhir_env (Obj.magic _menhir_stack)
        | DIV ->
            _menhir_run59 _menhir_env (Obj.magic _menhir_stack)
        | EQ ->
            _menhir_run55 _menhir_env (Obj.magic _menhir_stack)
        | FOIS ->
            _menhir_run57 _menhir_env (Obj.magic _menhir_stack)
        | GE ->
            _menhir_run53 _menhir_env (Obj.magic _menhir_stack)
        | GT ->
            _menhir_run51 _menhir_env (Obj.magic _menhir_stack)
        | LE ->
            _menhir_run49 _menhir_env (Obj.magic _menhir_stack)
        | LT ->
            _menhir_run47 _menhir_env (Obj.magic _menhir_stack)
        | MOD ->
            _menhir_run45 _menhir_env (Obj.magic _menhir_stack)
        | MOINS ->
            _menhir_run61 _menhir_env (Obj.magic _menhir_stack)
        | NE ->
            _menhir_run43 _menhir_env (Obj.magic _menhir_stack)
        | OR ->
            _menhir_run39 _menhir_env (Obj.magic _menhir_stack)
        | PLUS ->
            _menhir_run37 _menhir_env (Obj.magic _menhir_stack)
        | RPAR | SEMI ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv391 * _menhir_state * (
# 10 "minicparser.mly"
       (string)
# 2449 "minicparser.ml"
            ))) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
            ((let ((_menhir_stack, _menhir_s, (x : (
# 10 "minicparser.mly"
       (string)
# 2454 "minicparser.ml"
            ))), _, (e : 'tv_expr)) = _menhir_stack in
            let _2 = () in
            let _v : (
# 24 "minicparser.mly"
      (Minic.instr)
# 2460 "minicparser.ml"
            ) = 
# 65 "minicparser.mly"
                      (Set(x,e))
# 2464 "minicparser.ml"
             in
            _menhir_goto_simple_instr _menhir_env _menhir_stack _menhir_s _v) : 'freshtv392)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv393 * _menhir_state * (
# 10 "minicparser.mly"
       (string)
# 2474 "minicparser.ml"
            ))) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv394)) : 'freshtv396)
    | MenhirState104 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (((('freshtv401 * _menhir_state)) * _menhir_state * (
# 26 "minicparser.mly"
      (string * Minic.typ * Minic.expr option)
# 2483 "minicparser.ml"
        ))) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | AND ->
            _menhir_run41 _menhir_env (Obj.magic _menhir_stack)
        | DIV ->
            _menhir_run59 _menhir_env (Obj.magic _menhir_stack)
        | EQ ->
            _menhir_run55 _menhir_env (Obj.magic _menhir_stack)
        | FOIS ->
            _menhir_run57 _menhir_env (Obj.magic _menhir_stack)
        | GE ->
            _menhir_run53 _menhir_env (Obj.magic _menhir_stack)
        | GT ->
            _menhir_run51 _menhir_env (Obj.magic _menhir_stack)
        | LE ->
            _menhir_run49 _menhir_env (Obj.magic _menhir_stack)
        | LT ->
            _menhir_run47 _menhir_env (Obj.magic _menhir_stack)
        | MOD ->
            _menhir_run45 _menhir_env (Obj.magic _menhir_stack)
        | MOINS ->
            _menhir_run61 _menhir_env (Obj.magic _menhir_stack)
        | NE ->
            _menhir_run43 _menhir_env (Obj.magic _menhir_stack)
        | OR ->
            _menhir_run39 _menhir_env (Obj.magic _menhir_stack)
        | PLUS ->
            _menhir_run37 _menhir_env (Obj.magic _menhir_stack)
        | SEMI ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (((('freshtv397 * _menhir_state)) * _menhir_state * (
# 26 "minicparser.mly"
      (string * Minic.typ * Minic.expr option)
# 2519 "minicparser.ml"
            ))) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | IDENT _v ->
                _menhir_run90 _menhir_env (Obj.magic _menhir_stack) MenhirState106 _v
            | PUTCHAR ->
                _menhir_run81 _menhir_env (Obj.magic _menhir_stack) MenhirState106
            | RETURN ->
                _menhir_run79 _menhir_env (Obj.magic _menhir_stack) MenhirState106
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState106) : 'freshtv398)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (((('freshtv399 * _menhir_state)) * _menhir_state * (
# 26 "minicparser.mly"
      (string * Minic.typ * Minic.expr option)
# 2541 "minicparser.ml"
            ))) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv400)) : 'freshtv402)
    | MenhirState118 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((('freshtv407 * _menhir_state * (
# 23 "minicparser.mly"
      (Minic.typ)
# 2550 "minicparser.ml"
        )) * (
# 10 "minicparser.mly"
       (string)
# 2554 "minicparser.ml"
        ))) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | AND ->
            _menhir_run41 _menhir_env (Obj.magic _menhir_stack)
        | DIV ->
            _menhir_run59 _menhir_env (Obj.magic _menhir_stack)
        | EQ ->
            _menhir_run55 _menhir_env (Obj.magic _menhir_stack)
        | FOIS ->
            _menhir_run57 _menhir_env (Obj.magic _menhir_stack)
        | GE ->
            _menhir_run53 _menhir_env (Obj.magic _menhir_stack)
        | GT ->
            _menhir_run51 _menhir_env (Obj.magic _menhir_stack)
        | LE ->
            _menhir_run49 _menhir_env (Obj.magic _menhir_stack)
        | LT ->
            _menhir_run47 _menhir_env (Obj.magic _menhir_stack)
        | MOD ->
            _menhir_run45 _menhir_env (Obj.magic _menhir_stack)
        | MOINS ->
            _menhir_run61 _menhir_env (Obj.magic _menhir_stack)
        | NE ->
            _menhir_run43 _menhir_env (Obj.magic _menhir_stack)
        | OR ->
            _menhir_run39 _menhir_env (Obj.magic _menhir_stack)
        | PLUS ->
            _menhir_run37 _menhir_env (Obj.magic _menhir_stack)
        | SEMI ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ((('freshtv403 * _menhir_state * (
# 23 "minicparser.mly"
      (Minic.typ)
# 2590 "minicparser.ml"
            )) * (
# 10 "minicparser.mly"
       (string)
# 2594 "minicparser.ml"
            ))) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
            ((let (((_menhir_stack, _menhir_s, (t : (
# 23 "minicparser.mly"
      (Minic.typ)
# 2599 "minicparser.ml"
            ))), (x : (
# 10 "minicparser.mly"
       (string)
# 2603 "minicparser.ml"
            ))), _, (n : 'tv_expr)) = _menhir_stack in
            let _3 = () in
            let _v : (
# 26 "minicparser.mly"
      (string * Minic.typ * Minic.expr option)
# 2609 "minicparser.ml"
            ) = 
# 41 "minicparser.mly"
                            ((x,t,Some n))
# 2613 "minicparser.ml"
             in
            _menhir_goto_var_decl _menhir_env _menhir_stack _menhir_s _v) : 'freshtv404)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ((('freshtv405 * _menhir_state * (
# 23 "minicparser.mly"
      (Minic.typ)
# 2623 "minicparser.ml"
            )) * (
# 10 "minicparser.mly"
       (string)
# 2627 "minicparser.ml"
            ))) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv406)) : 'freshtv408)
    | _ ->
        _menhir_fail ()

and _menhir_goto_params : _menhir_env -> 'ttv_tail -> _menhir_state -> 'tv_params -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv225 * _menhir_state * 'tv_params) = Obj.magic _menhir_stack in
    ((assert (not _menhir_env._menhir_error);
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | COMMA ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv219 * _menhir_state * 'tv_params) = Obj.magic _menhir_stack in
        ((let _menhir_env = _menhir_discard _menhir_env in
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | BOOL ->
            _menhir_run14 _menhir_env (Obj.magic _menhir_stack) MenhirState18
        | INT ->
            _menhir_run12 _menhir_env (Obj.magic _menhir_stack) MenhirState18
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState18) : 'freshtv220)
    | RPAR ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv221 * _menhir_state * 'tv_params) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, (x : 'tv_params)) = _menhir_stack in
        let _v : 'tv_separated_nonempty_list_COMMA_params_ = 
# 215 "/usr/share/menhir/standard.mly"
    ( [ x ] )
# 2663 "minicparser.ml"
         in
        _menhir_goto_separated_nonempty_list_COMMA_params_ _menhir_env _menhir_stack _menhir_s _v) : 'freshtv222)
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv223 * _menhir_state * 'tv_params) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv224)) : 'freshtv226)

and _menhir_reduce30 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _v : 'tv_list_instr_ = 
# 185 "/usr/share/menhir/standard.mly"
    ( [] )
# 2679 "minicparser.ml"
     in
    _menhir_goto_list_instr_ _menhir_env _menhir_stack _menhir_s _v

and _menhir_run24 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | LPAR ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv215 * _menhir_state) = Obj.magic _menhir_stack in
        ((let _menhir_env = _menhir_discard _menhir_env in
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | CST _v ->
            _menhir_run32 _menhir_env (Obj.magic _menhir_stack) MenhirState25 _v
        | CST_B _v ->
            _menhir_run31 _menhir_env (Obj.magic _menhir_stack) MenhirState25 _v
        | IDENT _v ->
            _menhir_run29 _menhir_env (Obj.magic _menhir_stack) MenhirState25 _v
        | LHOOK ->
            _menhir_run28 _menhir_env (Obj.magic _menhir_stack) MenhirState25
        | LPAR ->
            _menhir_run27 _menhir_env (Obj.magic _menhir_stack) MenhirState25
        | NOT ->
            _menhir_run26 _menhir_env (Obj.magic _menhir_stack) MenhirState25
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState25) : 'freshtv216)
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv217 * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv218)

and _menhir_run79 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | CST _v ->
        _menhir_run32 _menhir_env (Obj.magic _menhir_stack) MenhirState79 _v
    | CST_B _v ->
        _menhir_run31 _menhir_env (Obj.magic _menhir_stack) MenhirState79 _v
    | IDENT _v ->
        _menhir_run29 _menhir_env (Obj.magic _menhir_stack) MenhirState79 _v
    | LHOOK ->
        _menhir_run28 _menhir_env (Obj.magic _menhir_stack) MenhirState79
    | LPAR ->
        _menhir_run27 _menhir_env (Obj.magic _menhir_stack) MenhirState79
    | NOT ->
        _menhir_run26 _menhir_env (Obj.magic _menhir_stack) MenhirState79
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState79

and _menhir_run81 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | LPAR ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv211 * _menhir_state) = Obj.magic _menhir_stack in
        ((let _menhir_env = _menhir_discard _menhir_env in
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | CST _v ->
            _menhir_run32 _menhir_env (Obj.magic _menhir_stack) MenhirState82 _v
        | CST_B _v ->
            _menhir_run31 _menhir_env (Obj.magic _menhir_stack) MenhirState82 _v
        | IDENT _v ->
            _menhir_run29 _menhir_env (Obj.magic _menhir_stack) MenhirState82 _v
        | LHOOK ->
            _menhir_run28 _menhir_env (Obj.magic _menhir_stack) MenhirState82
        | LPAR ->
            _menhir_run27 _menhir_env (Obj.magic _menhir_stack) MenhirState82
        | NOT ->
            _menhir_run26 _menhir_env (Obj.magic _menhir_stack) MenhirState82
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState82) : 'freshtv212)
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv213 * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv214)

and _menhir_run85 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | LPAR ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv207 * _menhir_state) = Obj.magic _menhir_stack in
        ((let _menhir_env = _menhir_discard _menhir_env in
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | CST _v ->
            _menhir_run32 _menhir_env (Obj.magic _menhir_stack) MenhirState86 _v
        | CST_B _v ->
            _menhir_run31 _menhir_env (Obj.magic _menhir_stack) MenhirState86 _v
        | IDENT _v ->
            _menhir_run29 _menhir_env (Obj.magic _menhir_stack) MenhirState86 _v
        | LHOOK ->
            _menhir_run28 _menhir_env (Obj.magic _menhir_stack) MenhirState86
        | LPAR ->
            _menhir_run27 _menhir_env (Obj.magic _menhir_stack) MenhirState86
        | NOT ->
            _menhir_run26 _menhir_env (Obj.magic _menhir_stack) MenhirState86
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState86) : 'freshtv208)
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv209 * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv210)

and _menhir_run90 : _menhir_env -> 'ttv_tail -> _menhir_state -> (
# 10 "minicparser.mly"
       (string)
# 2817 "minicparser.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | EGAL ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv199 * _menhir_state * (
# 10 "minicparser.mly"
       (string)
# 2829 "minicparser.ml"
        )) = Obj.magic _menhir_stack in
        ((let _menhir_env = _menhir_discard _menhir_env in
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | CST _v ->
            _menhir_run32 _menhir_env (Obj.magic _menhir_stack) MenhirState99 _v
        | CST_B _v ->
            _menhir_run31 _menhir_env (Obj.magic _menhir_stack) MenhirState99 _v
        | IDENT _v ->
            _menhir_run29 _menhir_env (Obj.magic _menhir_stack) MenhirState99 _v
        | LHOOK ->
            _menhir_run28 _menhir_env (Obj.magic _menhir_stack) MenhirState99
        | LPAR ->
            _menhir_run27 _menhir_env (Obj.magic _menhir_stack) MenhirState99
        | NOT ->
            _menhir_run26 _menhir_env (Obj.magic _menhir_stack) MenhirState99
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState99) : 'freshtv200)
    | LHOOK ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv201 * _menhir_state * (
# 10 "minicparser.mly"
       (string)
# 2855 "minicparser.ml"
        )) = Obj.magic _menhir_stack in
        ((let _menhir_env = _menhir_discard _menhir_env in
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | CST _v ->
            _menhir_run32 _menhir_env (Obj.magic _menhir_stack) MenhirState94 _v
        | CST_B _v ->
            _menhir_run31 _menhir_env (Obj.magic _menhir_stack) MenhirState94 _v
        | IDENT _v ->
            _menhir_run29 _menhir_env (Obj.magic _menhir_stack) MenhirState94 _v
        | LHOOK ->
            _menhir_run28 _menhir_env (Obj.magic _menhir_stack) MenhirState94
        | LPAR ->
            _menhir_run27 _menhir_env (Obj.magic _menhir_stack) MenhirState94
        | NOT ->
            _menhir_run26 _menhir_env (Obj.magic _menhir_stack) MenhirState94
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState94) : 'freshtv202)
    | LPAR ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv203 * _menhir_state * (
# 10 "minicparser.mly"
       (string)
# 2881 "minicparser.ml"
        )) = Obj.magic _menhir_stack in
        ((let _menhir_env = _menhir_discard _menhir_env in
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | CST _v ->
            _menhir_run32 _menhir_env (Obj.magic _menhir_stack) MenhirState91 _v
        | CST_B _v ->
            _menhir_run31 _menhir_env (Obj.magic _menhir_stack) MenhirState91 _v
        | IDENT _v ->
            _menhir_run29 _menhir_env (Obj.magic _menhir_stack) MenhirState91 _v
        | LHOOK ->
            _menhir_run28 _menhir_env (Obj.magic _menhir_stack) MenhirState91
        | LPAR ->
            _menhir_run27 _menhir_env (Obj.magic _menhir_stack) MenhirState91
        | NOT ->
            _menhir_run26 _menhir_env (Obj.magic _menhir_stack) MenhirState91
        | RPAR ->
            _menhir_reduce32 _menhir_env (Obj.magic _menhir_stack) MenhirState91
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState91) : 'freshtv204)
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv205 * _menhir_state * (
# 10 "minicparser.mly"
       (string)
# 2911 "minicparser.ml"
        )) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv206)

and _menhir_run101 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | LPAR ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv195 * _menhir_state) = Obj.magic _menhir_stack in
        ((let _menhir_env = _menhir_discard _menhir_env in
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | BOOL ->
            _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState102
        | INT ->
            _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState102
        | TAB _v ->
            _menhir_run2 _menhir_env (Obj.magic _menhir_stack) MenhirState102 _v
        | VOID ->
            _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState102
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState102) : 'freshtv196)
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv197 * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv198)

and _menhir_goto_fun_def_list : _menhir_env -> 'ttv_tail -> (
# 29 "minicparser.mly"
      (Minic.fun_def list)
# 2951 "minicparser.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack _v ->
    let _menhir_stack = (_menhir_stack, _v) in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : (('freshtv193 * _menhir_state * (
# 27 "minicparser.mly"
      ((string * Minic.typ * Minic.expr option) list)
# 2959 "minicparser.ml"
    ))) * (
# 29 "minicparser.mly"
      (Minic.fun_def list)
# 2963 "minicparser.ml"
    )) = Obj.magic _menhir_stack in
    ((assert (not _menhir_env._menhir_error);
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | BOOL ->
        _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState7
    | EOF ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv191 * _menhir_state * (
# 27 "minicparser.mly"
      ((string * Minic.typ * Minic.expr option) list)
# 2975 "minicparser.ml"
        ))) * (
# 29 "minicparser.mly"
      (Minic.fun_def list)
# 2979 "minicparser.ml"
        )) = Obj.magic _menhir_stack in
        let (_menhir_s : _menhir_state) = MenhirState7 in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv189 * _menhir_state * (
# 27 "minicparser.mly"
      ((string * Minic.typ * Minic.expr option) list)
# 2986 "minicparser.ml"
        ))) * (
# 29 "minicparser.mly"
      (Minic.fun_def list)
# 2990 "minicparser.ml"
        )) = Obj.magic _menhir_stack in
        let (_ : _menhir_state) = _menhir_s in
        ((let ((_menhir_stack, _menhir_s, (global : (
# 27 "minicparser.mly"
      ((string * Minic.typ * Minic.expr option) list)
# 2996 "minicparser.ml"
        ))), (funct : (
# 29 "minicparser.mly"
      (Minic.fun_def list)
# 3000 "minicparser.ml"
        ))) = _menhir_stack in
        let _4 = () in
        let _2 = () in
        let _v : (
# 31 "minicparser.mly"
       (Minic.prog)
# 3007 "minicparser.ml"
        ) = 
# 36 "minicparser.mly"
                                                  ({globals= global; functions= funct})
# 3011 "minicparser.ml"
         in
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv187) = _menhir_stack in
        let (_menhir_s : _menhir_state) = _menhir_s in
        let (_v : (
# 31 "minicparser.mly"
       (Minic.prog)
# 3019 "minicparser.ml"
        )) = _v in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv185) = Obj.magic _menhir_stack in
        let (_menhir_s : _menhir_state) = _menhir_s in
        let (_v : (
# 31 "minicparser.mly"
       (Minic.prog)
# 3027 "minicparser.ml"
        )) = _v in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv183) = Obj.magic _menhir_stack in
        let (_menhir_s : _menhir_state) = _menhir_s in
        let ((_1 : (
# 31 "minicparser.mly"
       (Minic.prog)
# 3035 "minicparser.ml"
        )) : (
# 31 "minicparser.mly"
       (Minic.prog)
# 3039 "minicparser.ml"
        )) = _v in
        (Obj.magic _1 : 'freshtv184)) : 'freshtv186)) : 'freshtv188)) : 'freshtv190)) : 'freshtv192)
    | INT ->
        _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState7
    | TAB _v ->
        _menhir_run2 _menhir_env (Obj.magic _menhir_stack) MenhirState7 _v
    | VOID ->
        _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState7
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState7) : 'freshtv194)

and _menhir_fail : unit -> 'a =
  fun () ->
    Printf.fprintf Pervasives.stderr "Internal failure -- please contact the parser generator's developers.\n%!";
    assert false

and _menhir_goto_var_decl : _menhir_env -> 'ttv_tail -> _menhir_state -> (
# 26 "minicparser.mly"
      (string * Minic.typ * Minic.expr option)
# 3061 "minicparser.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    match _menhir_s with
    | MenhirState102 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv175 * _menhir_state)) * _menhir_state * (
# 26 "minicparser.mly"
      (string * Minic.typ * Minic.expr option)
# 3071 "minicparser.ml"
        )) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | SEMI ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv171 * _menhir_state)) * _menhir_state * (
# 26 "minicparser.mly"
      (string * Minic.typ * Minic.expr option)
# 3081 "minicparser.ml"
            )) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | CST _v ->
                _menhir_run32 _menhir_env (Obj.magic _menhir_stack) MenhirState104 _v
            | CST_B _v ->
                _menhir_run31 _menhir_env (Obj.magic _menhir_stack) MenhirState104 _v
            | IDENT _v ->
                _menhir_run29 _menhir_env (Obj.magic _menhir_stack) MenhirState104 _v
            | LHOOK ->
                _menhir_run28 _menhir_env (Obj.magic _menhir_stack) MenhirState104
            | LPAR ->
                _menhir_run27 _menhir_env (Obj.magic _menhir_stack) MenhirState104
            | NOT ->
                _menhir_run26 _menhir_env (Obj.magic _menhir_stack) MenhirState104
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState104) : 'freshtv172)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv173 * _menhir_state)) * _menhir_state * (
# 26 "minicparser.mly"
      (string * Minic.typ * Minic.expr option)
# 3109 "minicparser.ml"
            )) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv174)) : 'freshtv176)
    | MenhirState0 | MenhirState131 | MenhirState22 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv181 * _menhir_state * (
# 26 "minicparser.mly"
      (string * Minic.typ * Minic.expr option)
# 3118 "minicparser.ml"
        )) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | SEMI ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv177 * _menhir_state * (
# 26 "minicparser.mly"
      (string * Minic.typ * Minic.expr option)
# 3128 "minicparser.ml"
            )) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | BOOL ->
                _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState131
            | INT ->
                _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState131
            | TAB _v ->
                _menhir_run2 _menhir_env (Obj.magic _menhir_stack) MenhirState131 _v
            | VOID ->
                _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState131
            | END | FOR | IDENT _ | IF | PUTCHAR | RACC | RETURN | WHILE ->
                _menhir_reduce54 _menhir_env (Obj.magic _menhir_stack) MenhirState131
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState131) : 'freshtv178)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv179 * _menhir_state * (
# 26 "minicparser.mly"
      (string * Minic.typ * Minic.expr option)
# 3154 "minicparser.ml"
            )) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv180)) : 'freshtv182)
    | _ ->
        _menhir_fail ()

and _menhir_run26 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | CST _v ->
        _menhir_run32 _menhir_env (Obj.magic _menhir_stack) MenhirState26 _v
    | CST_B _v ->
        _menhir_run31 _menhir_env (Obj.magic _menhir_stack) MenhirState26 _v
    | IDENT _v ->
        _menhir_run29 _menhir_env (Obj.magic _menhir_stack) MenhirState26 _v
    | LHOOK ->
        _menhir_run28 _menhir_env (Obj.magic _menhir_stack) MenhirState26
    | LPAR ->
        _menhir_run27 _menhir_env (Obj.magic _menhir_stack) MenhirState26
    | NOT ->
        _menhir_run26 _menhir_env (Obj.magic _menhir_stack) MenhirState26
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState26

and _menhir_run27 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | CST _v ->
        _menhir_run32 _menhir_env (Obj.magic _menhir_stack) MenhirState27 _v
    | CST_B _v ->
        _menhir_run31 _menhir_env (Obj.magic _menhir_stack) MenhirState27 _v
    | IDENT _v ->
        _menhir_run29 _menhir_env (Obj.magic _menhir_stack) MenhirState27 _v
    | LHOOK ->
        _menhir_run28 _menhir_env (Obj.magic _menhir_stack) MenhirState27
    | LPAR ->
        _menhir_run27 _menhir_env (Obj.magic _menhir_stack) MenhirState27
    | NOT ->
        _menhir_run26 _menhir_env (Obj.magic _menhir_stack) MenhirState27
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState27

and _menhir_run28 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | CST _v ->
        _menhir_run32 _menhir_env (Obj.magic _menhir_stack) MenhirState28 _v
    | CST_B _v ->
        _menhir_run31 _menhir_env (Obj.magic _menhir_stack) MenhirState28 _v
    | IDENT _v ->
        _menhir_run29 _menhir_env (Obj.magic _menhir_stack) MenhirState28 _v
    | LHOOK ->
        _menhir_run28 _menhir_env (Obj.magic _menhir_stack) MenhirState28
    | LPAR ->
        _menhir_run27 _menhir_env (Obj.magic _menhir_stack) MenhirState28
    | NOT ->
        _menhir_run26 _menhir_env (Obj.magic _menhir_stack) MenhirState28
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState28

and _menhir_run29 : _menhir_env -> 'ttv_tail -> _menhir_state -> (
# 10 "minicparser.mly"
       (string)
# 3233 "minicparser.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | LHOOK ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv163 * _menhir_state * (
# 10 "minicparser.mly"
       (string)
# 3245 "minicparser.ml"
        )) = Obj.magic _menhir_stack in
        ((let _menhir_env = _menhir_discard _menhir_env in
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | CST _v ->
            _menhir_run32 _menhir_env (Obj.magic _menhir_stack) MenhirState65 _v
        | CST_B _v ->
            _menhir_run31 _menhir_env (Obj.magic _menhir_stack) MenhirState65 _v
        | IDENT _v ->
            _menhir_run29 _menhir_env (Obj.magic _menhir_stack) MenhirState65 _v
        | LHOOK ->
            _menhir_run28 _menhir_env (Obj.magic _menhir_stack) MenhirState65
        | LPAR ->
            _menhir_run27 _menhir_env (Obj.magic _menhir_stack) MenhirState65
        | NOT ->
            _menhir_run26 _menhir_env (Obj.magic _menhir_stack) MenhirState65
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState65) : 'freshtv164)
    | LPAR ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv165 * _menhir_state * (
# 10 "minicparser.mly"
       (string)
# 3271 "minicparser.ml"
        )) = Obj.magic _menhir_stack in
        ((let _menhir_env = _menhir_discard _menhir_env in
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | CST _v ->
            _menhir_run32 _menhir_env (Obj.magic _menhir_stack) MenhirState30 _v
        | CST_B _v ->
            _menhir_run31 _menhir_env (Obj.magic _menhir_stack) MenhirState30 _v
        | IDENT _v ->
            _menhir_run29 _menhir_env (Obj.magic _menhir_stack) MenhirState30 _v
        | LHOOK ->
            _menhir_run28 _menhir_env (Obj.magic _menhir_stack) MenhirState30
        | LPAR ->
            _menhir_run27 _menhir_env (Obj.magic _menhir_stack) MenhirState30
        | NOT ->
            _menhir_run26 _menhir_env (Obj.magic _menhir_stack) MenhirState30
        | RPAR ->
            _menhir_reduce32 _menhir_env (Obj.magic _menhir_stack) MenhirState30
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState30) : 'freshtv166)
    | AND | COMMA | DIV | EQ | FOIS | GE | GT | LE | LT | MOD | MOINS | NE | OR | PLUS | RACC | RHOOK | RPAR | SEMI ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv167 * _menhir_state * (
# 10 "minicparser.mly"
       (string)
# 3299 "minicparser.ml"
        )) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, (x : (
# 10 "minicparser.mly"
       (string)
# 3304 "minicparser.ml"
        ))) = _menhir_stack in
        let _v : 'tv_expr = 
# 89 "minicparser.mly"
          ( Get(x) )
# 3309 "minicparser.ml"
         in
        _menhir_goto_expr _menhir_env _menhir_stack _menhir_s _v) : 'freshtv168)
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv169 * _menhir_state * (
# 10 "minicparser.mly"
       (string)
# 3319 "minicparser.ml"
        )) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv170)

and _menhir_run31 : _menhir_env -> 'ttv_tail -> _menhir_state -> (
# 8 "minicparser.mly"
       (bool)
# 3327 "minicparser.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_env = _menhir_discard _menhir_env in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv161) = Obj.magic _menhir_stack in
    let (_menhir_s : _menhir_state) = _menhir_s in
    let ((b : (
# 8 "minicparser.mly"
       (bool)
# 3337 "minicparser.ml"
    )) : (
# 8 "minicparser.mly"
       (bool)
# 3341 "minicparser.ml"
    )) = _v in
    ((let _v : 'tv_expr = 
# 88 "minicparser.mly"
          ( Cst_b(b) )
# 3346 "minicparser.ml"
     in
    _menhir_goto_expr _menhir_env _menhir_stack _menhir_s _v) : 'freshtv162)

and _menhir_run32 : _menhir_env -> 'ttv_tail -> _menhir_state -> (
# 7 "minicparser.mly"
       (int)
# 3353 "minicparser.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_env = _menhir_discard _menhir_env in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv159) = Obj.magic _menhir_stack in
    let (_menhir_s : _menhir_state) = _menhir_s in
    let ((n : (
# 7 "minicparser.mly"
       (int)
# 3363 "minicparser.ml"
    )) : (
# 7 "minicparser.mly"
       (int)
# 3367 "minicparser.ml"
    )) = _v in
    ((let _v : 'tv_expr = 
# 87 "minicparser.mly"
        ( Cst(n) )
# 3372 "minicparser.ml"
     in
    _menhir_goto_expr _menhir_env _menhir_stack _menhir_s _v) : 'freshtv160)

and _menhir_goto_loption_separated_nonempty_list_COMMA_params__ : _menhir_env -> 'ttv_tail -> _menhir_state -> 'tv_loption_separated_nonempty_list_COMMA_params__ -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : ((('freshtv157 * _menhir_state * (
# 23 "minicparser.mly"
      (Minic.typ)
# 3383 "minicparser.ml"
    )) * (
# 10 "minicparser.mly"
       (string)
# 3387 "minicparser.ml"
    ))) * _menhir_state * 'tv_loption_separated_nonempty_list_COMMA_params__) = Obj.magic _menhir_stack in
    ((assert (not _menhir_env._menhir_error);
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | RPAR ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((('freshtv153 * _menhir_state * (
# 23 "minicparser.mly"
      (Minic.typ)
# 3397 "minicparser.ml"
        )) * (
# 10 "minicparser.mly"
       (string)
# 3401 "minicparser.ml"
        ))) * _menhir_state * 'tv_loption_separated_nonempty_list_COMMA_params__) = Obj.magic _menhir_stack in
        ((let _menhir_env = _menhir_discard _menhir_env in
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | LACC ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (((('freshtv149 * _menhir_state * (
# 23 "minicparser.mly"
      (Minic.typ)
# 3411 "minicparser.ml"
            )) * (
# 10 "minicparser.mly"
       (string)
# 3415 "minicparser.ml"
            ))) * _menhir_state * 'tv_loption_separated_nonempty_list_COMMA_params__)) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | BOOL ->
                _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState22
            | INT ->
                _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState22
            | TAB _v ->
                _menhir_run2 _menhir_env (Obj.magic _menhir_stack) MenhirState22 _v
            | VOID ->
                _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState22
            | FOR | IDENT _ | IF | PUTCHAR | RACC | RETURN | WHILE ->
                _menhir_reduce54 _menhir_env (Obj.magic _menhir_stack) MenhirState22
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState22) : 'freshtv150)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (((('freshtv151 * _menhir_state * (
# 23 "minicparser.mly"
      (Minic.typ)
# 3441 "minicparser.ml"
            )) * (
# 10 "minicparser.mly"
       (string)
# 3445 "minicparser.ml"
            ))) * _menhir_state * 'tv_loption_separated_nonempty_list_COMMA_params__)) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv152)) : 'freshtv154)
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((('freshtv155 * _menhir_state * (
# 23 "minicparser.mly"
      (Minic.typ)
# 3456 "minicparser.ml"
        )) * (
# 10 "minicparser.mly"
       (string)
# 3460 "minicparser.ml"
        ))) * _menhir_state * 'tv_loption_separated_nonempty_list_COMMA_params__) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv156)) : 'freshtv158)

and _menhir_run12 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | IDENT _v ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv145 * _menhir_state) = Obj.magic _menhir_stack in
        let (_v : (
# 10 "minicparser.mly"
       (string)
# 3477 "minicparser.ml"
        )) = _v in
        ((let _menhir_env = _menhir_discard _menhir_env in
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv143 * _menhir_state) = Obj.magic _menhir_stack in
        let ((x : (
# 10 "minicparser.mly"
       (string)
# 3485 "minicparser.ml"
        )) : (
# 10 "minicparser.mly"
       (string)
# 3489 "minicparser.ml"
        )) = _v in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        let _1 = () in
        let _v : 'tv_params = 
# 59 "minicparser.mly"
               ((x,Int))
# 3496 "minicparser.ml"
         in
        _menhir_goto_params _menhir_env _menhir_stack _menhir_s _v) : 'freshtv144)) : 'freshtv146)
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv147 * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv148)

and _menhir_run14 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | IDENT _v ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv139 * _menhir_state) = Obj.magic _menhir_stack in
        let (_v : (
# 10 "minicparser.mly"
       (string)
# 3519 "minicparser.ml"
        )) = _v in
        ((let _menhir_env = _menhir_discard _menhir_env in
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv137 * _menhir_state) = Obj.magic _menhir_stack in
        let ((x : (
# 10 "minicparser.mly"
       (string)
# 3527 "minicparser.ml"
        )) : (
# 10 "minicparser.mly"
       (string)
# 3531 "minicparser.ml"
        )) = _v in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        let _1 = () in
        let _v : 'tv_params = 
# 60 "minicparser.mly"
                ((x,Bool))
# 3538 "minicparser.ml"
         in
        _menhir_goto_params _menhir_env _menhir_stack _menhir_s _v) : 'freshtv138)) : 'freshtv140)
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv141 * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv142)

and _menhir_goto_var_decl_list : _menhir_env -> 'ttv_tail -> _menhir_state -> (
# 27 "minicparser.mly"
      ((string * Minic.typ * Minic.expr option) list)
# 3552 "minicparser.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    match _menhir_s with
    | MenhirState0 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv129 * _menhir_state * (
# 27 "minicparser.mly"
      ((string * Minic.typ * Minic.expr option) list)
# 3562 "minicparser.ml"
        )) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | END ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv125 * _menhir_state * (
# 27 "minicparser.mly"
      ((string * Minic.typ * Minic.expr option) list)
# 3572 "minicparser.ml"
            )) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv123) = Obj.magic _menhir_stack in
            ((let _v : (
# 29 "minicparser.mly"
      (Minic.fun_def list)
# 3580 "minicparser.ml"
            ) = 
# 54 "minicparser.mly"
  ([])
# 3584 "minicparser.ml"
             in
            _menhir_goto_fun_def_list _menhir_env _menhir_stack _v) : 'freshtv124)) : 'freshtv126)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv127 * _menhir_state * (
# 27 "minicparser.mly"
      ((string * Minic.typ * Minic.expr option) list)
# 3594 "minicparser.ml"
            )) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv128)) : 'freshtv130)
    | MenhirState22 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (((((('freshtv131 * _menhir_state * (
# 23 "minicparser.mly"
      (Minic.typ)
# 3603 "minicparser.ml"
        )) * (
# 10 "minicparser.mly"
       (string)
# 3607 "minicparser.ml"
        ))) * _menhir_state * 'tv_loption_separated_nonempty_list_COMMA_params__))) * _menhir_state * (
# 27 "minicparser.mly"
      ((string * Minic.typ * Minic.expr option) list)
# 3611 "minicparser.ml"
        )) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | FOR ->
            _menhir_run101 _menhir_env (Obj.magic _menhir_stack) MenhirState23
        | IDENT _v ->
            _menhir_run90 _menhir_env (Obj.magic _menhir_stack) MenhirState23 _v
        | IF ->
            _menhir_run85 _menhir_env (Obj.magic _menhir_stack) MenhirState23
        | PUTCHAR ->
            _menhir_run81 _menhir_env (Obj.magic _menhir_stack) MenhirState23
        | RETURN ->
            _menhir_run79 _menhir_env (Obj.magic _menhir_stack) MenhirState23
        | WHILE ->
            _menhir_run24 _menhir_env (Obj.magic _menhir_stack) MenhirState23
        | RACC ->
            _menhir_reduce30 _menhir_env (Obj.magic _menhir_stack) MenhirState23
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState23) : 'freshtv132)
    | MenhirState131 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv135 * _menhir_state * (
# 26 "minicparser.mly"
      (string * Minic.typ * Minic.expr option)
# 3639 "minicparser.ml"
        ))) * _menhir_state * (
# 27 "minicparser.mly"
      ((string * Minic.typ * Minic.expr option) list)
# 3643 "minicparser.ml"
        )) = Obj.magic _menhir_stack in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv133 * _menhir_state * (
# 26 "minicparser.mly"
      (string * Minic.typ * Minic.expr option)
# 3649 "minicparser.ml"
        ))) * _menhir_state * (
# 27 "minicparser.mly"
      ((string * Minic.typ * Minic.expr option) list)
# 3653 "minicparser.ml"
        )) = Obj.magic _menhir_stack in
        ((let ((_menhir_stack, _menhir_s, (v : (
# 26 "minicparser.mly"
      (string * Minic.typ * Minic.expr option)
# 3658 "minicparser.ml"
        ))), _, (l : (
# 27 "minicparser.mly"
      ((string * Minic.typ * Minic.expr option) list)
# 3662 "minicparser.ml"
        ))) = _menhir_stack in
        let _2 = () in
        let _v : (
# 27 "minicparser.mly"
      ((string * Minic.typ * Minic.expr option) list)
# 3668 "minicparser.ml"
        ) = 
# 46 "minicparser.mly"
                                   (v::l)
# 3672 "minicparser.ml"
         in
        _menhir_goto_var_decl_list _menhir_env _menhir_stack _menhir_s _v) : 'freshtv134)) : 'freshtv136)
    | _ ->
        _menhir_fail ()

and _menhir_goto_typ : _menhir_env -> 'ttv_tail -> _menhir_state -> (
# 23 "minicparser.mly"
      (Minic.typ)
# 3681 "minicparser.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    match _menhir_s with
    | MenhirState7 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv109 * _menhir_state * (
# 23 "minicparser.mly"
      (Minic.typ)
# 3691 "minicparser.ml"
        )) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | IDENT _v ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv105 * _menhir_state * (
# 23 "minicparser.mly"
      (Minic.typ)
# 3701 "minicparser.ml"
            )) = Obj.magic _menhir_stack in
            let (_v : (
# 10 "minicparser.mly"
       (string)
# 3706 "minicparser.ml"
            )) = _v in
            ((let _menhir_stack = (_menhir_stack, _v) in
            let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | LPAR ->
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : ('freshtv101 * _menhir_state * (
# 23 "minicparser.mly"
      (Minic.typ)
# 3717 "minicparser.ml"
                )) * (
# 10 "minicparser.mly"
       (string)
# 3721 "minicparser.ml"
                )) = Obj.magic _menhir_stack in
                ((let _menhir_env = _menhir_discard _menhir_env in
                let _tok = _menhir_env._menhir_token in
                match _tok with
                | BOOL ->
                    _menhir_run14 _menhir_env (Obj.magic _menhir_stack) MenhirState11
                | INT ->
                    _menhir_run12 _menhir_env (Obj.magic _menhir_stack) MenhirState11
                | RPAR ->
                    let (_menhir_env : _menhir_env) = _menhir_env in
                    let (_menhir_stack : 'freshtv99) = Obj.magic _menhir_stack in
                    let (_menhir_s : _menhir_state) = MenhirState11 in
                    ((let _v : 'tv_loption_separated_nonempty_list_COMMA_params__ = 
# 128 "/usr/share/menhir/standard.mly"
    ( [] )
# 3737 "minicparser.ml"
                     in
                    _menhir_goto_loption_separated_nonempty_list_COMMA_params__ _menhir_env _menhir_stack _menhir_s _v) : 'freshtv100)
                | _ ->
                    assert (not _menhir_env._menhir_error);
                    _menhir_env._menhir_error <- true;
                    _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState11) : 'freshtv102)
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : ('freshtv103 * _menhir_state * (
# 23 "minicparser.mly"
      (Minic.typ)
# 3751 "minicparser.ml"
                )) * (
# 10 "minicparser.mly"
       (string)
# 3755 "minicparser.ml"
                )) = Obj.magic _menhir_stack in
                ((let ((_menhir_stack, _menhir_s, _), _) = _menhir_stack in
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv104)) : 'freshtv106)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv107 * _menhir_state * (
# 23 "minicparser.mly"
      (Minic.typ)
# 3766 "minicparser.ml"
            )) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv108)) : 'freshtv110)
    | MenhirState0 | MenhirState22 | MenhirState131 | MenhirState102 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv121 * _menhir_state * (
# 23 "minicparser.mly"
      (Minic.typ)
# 3775 "minicparser.ml"
        )) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | IDENT _v ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv117 * _menhir_state * (
# 23 "minicparser.mly"
      (Minic.typ)
# 3785 "minicparser.ml"
            )) = Obj.magic _menhir_stack in
            let (_v : (
# 10 "minicparser.mly"
       (string)
# 3790 "minicparser.ml"
            )) = _v in
            ((let _menhir_stack = (_menhir_stack, _v) in
            let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | EGAL ->
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : ('freshtv111 * _menhir_state * (
# 23 "minicparser.mly"
      (Minic.typ)
# 3801 "minicparser.ml"
                )) * (
# 10 "minicparser.mly"
       (string)
# 3805 "minicparser.ml"
                )) = Obj.magic _menhir_stack in
                ((let _menhir_env = _menhir_discard _menhir_env in
                let _tok = _menhir_env._menhir_token in
                match _tok with
                | CST _v ->
                    _menhir_run32 _menhir_env (Obj.magic _menhir_stack) MenhirState118 _v
                | CST_B _v ->
                    _menhir_run31 _menhir_env (Obj.magic _menhir_stack) MenhirState118 _v
                | IDENT _v ->
                    _menhir_run29 _menhir_env (Obj.magic _menhir_stack) MenhirState118 _v
                | LHOOK ->
                    _menhir_run28 _menhir_env (Obj.magic _menhir_stack) MenhirState118
                | LPAR ->
                    _menhir_run27 _menhir_env (Obj.magic _menhir_stack) MenhirState118
                | NOT ->
                    _menhir_run26 _menhir_env (Obj.magic _menhir_stack) MenhirState118
                | _ ->
                    assert (not _menhir_env._menhir_error);
                    _menhir_env._menhir_error <- true;
                    _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState118) : 'freshtv112)
            | SEMI ->
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : ('freshtv113 * _menhir_state * (
# 23 "minicparser.mly"
      (Minic.typ)
# 3831 "minicparser.ml"
                )) * (
# 10 "minicparser.mly"
       (string)
# 3835 "minicparser.ml"
                )) = Obj.magic _menhir_stack in
                ((let ((_menhir_stack, _menhir_s, (t : (
# 23 "minicparser.mly"
      (Minic.typ)
# 3840 "minicparser.ml"
                ))), (x : (
# 10 "minicparser.mly"
       (string)
# 3844 "minicparser.ml"
                ))) = _menhir_stack in
                let _v : (
# 26 "minicparser.mly"
      (string * Minic.typ * Minic.expr option)
# 3849 "minicparser.ml"
                ) = 
# 40 "minicparser.mly"
                ((x,t,None))
# 3853 "minicparser.ml"
                 in
                _menhir_goto_var_decl _menhir_env _menhir_stack _menhir_s _v) : 'freshtv114)
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : ('freshtv115 * _menhir_state * (
# 23 "minicparser.mly"
      (Minic.typ)
# 3863 "minicparser.ml"
                )) * (
# 10 "minicparser.mly"
       (string)
# 3867 "minicparser.ml"
                )) = Obj.magic _menhir_stack in
                ((let ((_menhir_stack, _menhir_s, _), _) = _menhir_stack in
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv116)) : 'freshtv118)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv119 * _menhir_state * (
# 23 "minicparser.mly"
      (Minic.typ)
# 3878 "minicparser.ml"
            )) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv120)) : 'freshtv122)
    | _ ->
        _menhir_fail ()

and _menhir_errorcase : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    match _menhir_s with
    | MenhirState131 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv11 * _menhir_state * (
# 26 "minicparser.mly"
      (string * Minic.typ * Minic.expr option)
# 3893 "minicparser.ml"
        ))) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv12)
    | MenhirState123 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (((((((('freshtv13 * _menhir_state)) * _menhir_state * 'tv_expr))) * _menhir_state * 'tv_list_instr_)))) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv14)
    | MenhirState118 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv15 * _menhir_state * (
# 23 "minicparser.mly"
      (Minic.typ)
# 3907 "minicparser.ml"
        )) * (
# 10 "minicparser.mly"
       (string)
# 3911 "minicparser.ml"
        ))) = Obj.magic _menhir_stack in
        ((let ((_menhir_stack, _menhir_s, _), _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv16)
    | MenhirState114 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv17 * _menhir_state * (
# 25 "minicparser.mly"
      (Minic.instr)
# 3920 "minicparser.ml"
        )) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv18)
    | MenhirState109 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (((((((('freshtv19 * _menhir_state)) * _menhir_state * (
# 26 "minicparser.mly"
      (string * Minic.typ * Minic.expr option)
# 3929 "minicparser.ml"
        ))) * _menhir_state * 'tv_expr)) * _menhir_state * (
# 24 "minicparser.mly"
      (Minic.instr)
# 3933 "minicparser.ml"
        )))) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv20)
    | MenhirState106 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((((('freshtv21 * _menhir_state)) * _menhir_state * (
# 26 "minicparser.mly"
      (string * Minic.typ * Minic.expr option)
# 3942 "minicparser.ml"
        ))) * _menhir_state * 'tv_expr)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv22)
    | MenhirState104 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((('freshtv23 * _menhir_state)) * _menhir_state * (
# 26 "minicparser.mly"
      (string * Minic.typ * Minic.expr option)
# 3951 "minicparser.ml"
        ))) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv24)
    | MenhirState102 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv25 * _menhir_state)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv26)
    | MenhirState99 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv27 * _menhir_state * (
# 10 "minicparser.mly"
       (string)
# 3965 "minicparser.ml"
        ))) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv28)
    | MenhirState97 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (((('freshtv29 * _menhir_state * (
# 10 "minicparser.mly"
       (string)
# 3974 "minicparser.ml"
        ))) * _menhir_state * 'tv_expr))) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv30)
    | MenhirState94 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv31 * _menhir_state * (
# 10 "minicparser.mly"
       (string)
# 3983 "minicparser.ml"
        ))) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv32)
    | MenhirState91 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv33 * _menhir_state * (
# 10 "minicparser.mly"
       (string)
# 3992 "minicparser.ml"
        ))) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv34)
    | MenhirState89 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (((('freshtv35 * _menhir_state)) * _menhir_state * 'tv_expr))) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv36)
    | MenhirState86 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv37 * _menhir_state)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv38)
    | MenhirState82 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv39 * _menhir_state)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv40)
    | MenhirState79 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv41 * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv42)
    | MenhirState78 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (((('freshtv43 * _menhir_state)) * _menhir_state * 'tv_expr))) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv44)
    | MenhirState70 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((('freshtv45 * _menhir_state) * _menhir_state * 'tv_expr))) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv46)
    | MenhirState65 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv47 * _menhir_state * (
# 10 "minicparser.mly"
       (string)
# 4031 "minicparser.ml"
        ))) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv48)
    | MenhirState63 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv49 * _menhir_state * 'tv_expr)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv50)
    | MenhirState61 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv51 * _menhir_state * 'tv_expr)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv52)
    | MenhirState59 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv53 * _menhir_state * 'tv_expr)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv54)
    | MenhirState57 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv55 * _menhir_state * 'tv_expr)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv56)
    | MenhirState55 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv57 * _menhir_state * 'tv_expr)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv58)
    | MenhirState53 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv59 * _menhir_state * 'tv_expr)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv60)
    | MenhirState51 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv61 * _menhir_state * 'tv_expr)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv62)
    | MenhirState49 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv63 * _menhir_state * 'tv_expr)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv64)
    | MenhirState47 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv65 * _menhir_state * 'tv_expr)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv66)
    | MenhirState45 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv67 * _menhir_state * 'tv_expr)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv68)
    | MenhirState43 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv69 * _menhir_state * 'tv_expr)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv70)
    | MenhirState41 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv71 * _menhir_state * 'tv_expr)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv72)
    | MenhirState39 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv73 * _menhir_state * 'tv_expr)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv74)
    | MenhirState37 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv75 * _menhir_state * 'tv_expr)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv76)
    | MenhirState30 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv77 * _menhir_state * (
# 10 "minicparser.mly"
       (string)
# 4110 "minicparser.ml"
        ))) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv78)
    | MenhirState28 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv79 * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv80)
    | MenhirState27 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv81 * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv82)
    | MenhirState26 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv83 * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv84)
    | MenhirState25 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv85 * _menhir_state)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv86)
    | MenhirState23 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (((((('freshtv87 * _menhir_state * (
# 23 "minicparser.mly"
      (Minic.typ)
# 4139 "minicparser.ml"
        )) * (
# 10 "minicparser.mly"
       (string)
# 4143 "minicparser.ml"
        ))) * _menhir_state * 'tv_loption_separated_nonempty_list_COMMA_params__))) * _menhir_state * (
# 27 "minicparser.mly"
      ((string * Minic.typ * Minic.expr option) list)
# 4147 "minicparser.ml"
        )) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv88)
    | MenhirState22 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((((('freshtv89 * _menhir_state * (
# 23 "minicparser.mly"
      (Minic.typ)
# 4156 "minicparser.ml"
        )) * (
# 10 "minicparser.mly"
       (string)
# 4160 "minicparser.ml"
        ))) * _menhir_state * 'tv_loption_separated_nonempty_list_COMMA_params__))) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv90)
    | MenhirState18 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv91 * _menhir_state * 'tv_params)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv92)
    | MenhirState11 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv93 * _menhir_state * (
# 23 "minicparser.mly"
      (Minic.typ)
# 4174 "minicparser.ml"
        )) * (
# 10 "minicparser.mly"
       (string)
# 4178 "minicparser.ml"
        ))) = Obj.magic _menhir_stack in
        ((let ((_menhir_stack, _menhir_s, _), _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv94)
    | MenhirState7 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv95 * _menhir_state * (
# 27 "minicparser.mly"
      ((string * Minic.typ * Minic.expr option) list)
# 4187 "minicparser.ml"
        ))) * (
# 29 "minicparser.mly"
      (Minic.fun_def list)
# 4191 "minicparser.ml"
        )) = Obj.magic _menhir_stack in
        ((let ((_menhir_stack, _menhir_s, _), _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv96)
    | MenhirState0 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv97) = Obj.magic _menhir_stack in
        (raise _eRR : 'freshtv98)

and _menhir_reduce54 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _v : (
# 27 "minicparser.mly"
      ((string * Minic.typ * Minic.expr option) list)
# 4205 "minicparser.ml"
    ) = 
# 45 "minicparser.mly"
              ([])
# 4209 "minicparser.ml"
     in
    _menhir_goto_var_decl_list _menhir_env _menhir_stack _menhir_s _v

and _menhir_run1 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_env = _menhir_discard _menhir_env in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv9) = Obj.magic _menhir_stack in
    let (_menhir_s : _menhir_state) = _menhir_s in
    ((let _1 = () in
    let _v : (
# 23 "minicparser.mly"
      (Minic.typ)
# 4223 "minicparser.ml"
    ) = 
# 113 "minicparser.mly"
       (Void)
# 4227 "minicparser.ml"
     in
    _menhir_goto_typ _menhir_env _menhir_stack _menhir_s _v) : 'freshtv10)

and _menhir_run2 : _menhir_env -> 'ttv_tail -> _menhir_state -> (
# 9 "minicparser.mly"
       (Minic.typ)
# 4234 "minicparser.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_env = _menhir_discard _menhir_env in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv7) = Obj.magic _menhir_stack in
    let (_menhir_s : _menhir_state) = _menhir_s in
    let ((t : (
# 9 "minicparser.mly"
       (Minic.typ)
# 4244 "minicparser.ml"
    )) : (
# 9 "minicparser.mly"
       (Minic.typ)
# 4248 "minicparser.ml"
    )) = _v in
    ((let _v : (
# 23 "minicparser.mly"
      (Minic.typ)
# 4253 "minicparser.ml"
    ) = 
# 114 "minicparser.mly"
        (T(t))
# 4257 "minicparser.ml"
     in
    _menhir_goto_typ _menhir_env _menhir_stack _menhir_s _v) : 'freshtv8)

and _menhir_run3 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_env = _menhir_discard _menhir_env in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv5) = Obj.magic _menhir_stack in
    let (_menhir_s : _menhir_state) = _menhir_s in
    ((let _1 = () in
    let _v : (
# 23 "minicparser.mly"
      (Minic.typ)
# 4271 "minicparser.ml"
    ) = 
# 111 "minicparser.mly"
      (Int)
# 4275 "minicparser.ml"
     in
    _menhir_goto_typ _menhir_env _menhir_stack _menhir_s _v) : 'freshtv6)

and _menhir_run4 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_env = _menhir_discard _menhir_env in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv3) = Obj.magic _menhir_stack in
    let (_menhir_s : _menhir_state) = _menhir_s in
    ((let _1 = () in
    let _v : (
# 23 "minicparser.mly"
      (Minic.typ)
# 4289 "minicparser.ml"
    ) = 
# 112 "minicparser.mly"
       (Bool)
# 4293 "minicparser.ml"
     in
    _menhir_goto_typ _menhir_env _menhir_stack _menhir_s _v) : 'freshtv4)

and _menhir_discard : _menhir_env -> _menhir_env =
  fun _menhir_env ->
    let lexer = _menhir_env._menhir_lexer in
    let lexbuf = _menhir_env._menhir_lexbuf in
    let _tok = lexer lexbuf in
    {
      _menhir_lexer = lexer;
      _menhir_lexbuf = lexbuf;
      _menhir_token = _tok;
      _menhir_error = false;
    }

and prog : (Lexing.lexbuf -> token) -> Lexing.lexbuf -> (
# 31 "minicparser.mly"
       (Minic.prog)
# 4312 "minicparser.ml"
) =
  fun lexer lexbuf ->
    let _menhir_env =
      let (lexer : Lexing.lexbuf -> token) = lexer in
      let (lexbuf : Lexing.lexbuf) = lexbuf in
      ((let _tok = Obj.magic () in
      {
        _menhir_lexer = lexer;
        _menhir_lexbuf = lexbuf;
        _menhir_token = _tok;
        _menhir_error = false;
      }) : _menhir_env)
    in
    Obj.magic (let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv1) = ((), _menhir_env._menhir_lexbuf.Lexing.lex_curr_p) in
    ((let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | BOOL ->
        _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState0
    | INT ->
        _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState0
    | TAB _v ->
        _menhir_run2 _menhir_env (Obj.magic _menhir_stack) MenhirState0 _v
    | VOID ->
        _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState0
    | END ->
        _menhir_reduce54 _menhir_env (Obj.magic _menhir_stack) MenhirState0
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState0) : 'freshtv2))

# 115 "minicparser.mly"
  

# 4349 "minicparser.ml"

# 219 "/usr/share/menhir/standard.mly"
  


# 4355 "minicparser.ml"
