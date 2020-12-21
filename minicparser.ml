
module MenhirBasics = struct
  
  exception Error
  
  type token = 
    | WHILE
    | VOID
    | TAB
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
# 9 "minicparser.mly"
       (string)
# 33 "minicparser.ml"
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
# 48 "minicparser.ml"
  )
    | CST of (
# 7 "minicparser.mly"
       (int)
# 53 "minicparser.ml"
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
  | MenhirState117
  | MenhirState115
  | MenhirState107
  | MenhirState102
  | MenhirState97
  | MenhirState92
  | MenhirState89
  | MenhirState87
  | MenhirState85
  | MenhirState82
  | MenhirState79
  | MenhirState77
  | MenhirState74
  | MenhirState70
  | MenhirState67
  | MenhirState66
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
  | MenhirState35
  | MenhirState33
  | MenhirState26
  | MenhirState24
  | MenhirState23
  | MenhirState22
  | MenhirState20
  | MenhirState19
  | MenhirState15
  | MenhirState8
  | MenhirState5
  | MenhirState0

# 1 "minicparser.mly"
  
  open Minic;;

# 119 "minicparser.ml"

let rec _menhir_goto_fun_def_list : _menhir_env -> 'ttv_tail -> _menhir_state -> (
# 28 "minicparser.mly"
      (Minic.fun_def list)
# 124 "minicparser.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : (('freshtv475 * _menhir_state * (
# 26 "minicparser.mly"
      ((string * Minic.typ * Minic.expr option) list)
# 132 "minicparser.ml"
    ))) * _menhir_state * (
# 28 "minicparser.mly"
      (Minic.fun_def list)
# 136 "minicparser.ml"
    )) = Obj.magic _menhir_stack in
    ((assert (not _menhir_env._menhir_error);
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | BOOL ->
        _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState117
    | EOF ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv473 * _menhir_state * (
# 26 "minicparser.mly"
      ((string * Minic.typ * Minic.expr option) list)
# 148 "minicparser.ml"
        ))) * _menhir_state * (
# 28 "minicparser.mly"
      (Minic.fun_def list)
# 152 "minicparser.ml"
        )) = Obj.magic _menhir_stack in
        let (_menhir_s : _menhir_state) = MenhirState117 in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv471 * _menhir_state * (
# 26 "minicparser.mly"
      ((string * Minic.typ * Minic.expr option) list)
# 159 "minicparser.ml"
        ))) * _menhir_state * (
# 28 "minicparser.mly"
      (Minic.fun_def list)
# 163 "minicparser.ml"
        )) = Obj.magic _menhir_stack in
        let (_ : _menhir_state) = _menhir_s in
        ((let ((_menhir_stack, _menhir_s, (global : (
# 26 "minicparser.mly"
      ((string * Minic.typ * Minic.expr option) list)
# 169 "minicparser.ml"
        ))), _, (funct : (
# 28 "minicparser.mly"
      (Minic.fun_def list)
# 173 "minicparser.ml"
        ))) = _menhir_stack in
        let _4 = () in
        let _2 = () in
        let _v : (
# 30 "minicparser.mly"
       (Minic.prog)
# 180 "minicparser.ml"
        ) = 
# 35 "minicparser.mly"
                                                  ({globals= global; functions= funct})
# 184 "minicparser.ml"
         in
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv469) = _menhir_stack in
        let (_menhir_s : _menhir_state) = _menhir_s in
        let (_v : (
# 30 "minicparser.mly"
       (Minic.prog)
# 192 "minicparser.ml"
        )) = _v in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv467) = Obj.magic _menhir_stack in
        let (_menhir_s : _menhir_state) = _menhir_s in
        let (_v : (
# 30 "minicparser.mly"
       (Minic.prog)
# 200 "minicparser.ml"
        )) = _v in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv465) = Obj.magic _menhir_stack in
        let (_menhir_s : _menhir_state) = _menhir_s in
        let ((_1 : (
# 30 "minicparser.mly"
       (Minic.prog)
# 208 "minicparser.ml"
        )) : (
# 30 "minicparser.mly"
       (Minic.prog)
# 212 "minicparser.ml"
        )) = _v in
        (Obj.magic _1 : 'freshtv466)) : 'freshtv468)) : 'freshtv470)) : 'freshtv472)) : 'freshtv474)
    | INT ->
        _menhir_run2 _menhir_env (Obj.magic _menhir_stack) MenhirState117
    | VOID ->
        _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState117
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState117) : 'freshtv476)

and _menhir_goto_instr : _menhir_env -> 'ttv_tail -> _menhir_state -> (
# 24 "minicparser.mly"
      (Minic.instr)
# 227 "minicparser.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv463 * _menhir_state * (
# 24 "minicparser.mly"
      (Minic.instr)
# 235 "minicparser.ml"
    )) = Obj.magic _menhir_stack in
    ((assert (not _menhir_env._menhir_error);
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | FOR ->
        _menhir_run84 _menhir_env (Obj.magic _menhir_stack) MenhirState97
    | IDENT _v ->
        _menhir_run78 _menhir_env (Obj.magic _menhir_stack) MenhirState97 _v
    | IF ->
        _menhir_run73 _menhir_env (Obj.magic _menhir_stack) MenhirState97
    | PUTCHAR ->
        _menhir_run69 _menhir_env (Obj.magic _menhir_stack) MenhirState97
    | RETURN ->
        _menhir_run67 _menhir_env (Obj.magic _menhir_stack) MenhirState97
    | WHILE ->
        _menhir_run21 _menhir_env (Obj.magic _menhir_stack) MenhirState97
    | RACC ->
        _menhir_reduce28 _menhir_env (Obj.magic _menhir_stack) MenhirState97
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState97) : 'freshtv464)

and _menhir_goto_loption_separated_nonempty_list_COMMA_expr__ : _menhir_env -> 'ttv_tail -> _menhir_state -> 'tv_loption_separated_nonempty_list_COMMA_expr__ -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    match _menhir_s with
    | MenhirState26 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv453 * _menhir_state * (
# 9 "minicparser.mly"
       (string)
# 268 "minicparser.ml"
        ))) * _menhir_state * 'tv_loption_separated_nonempty_list_COMMA_expr__) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | RPAR ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv449 * _menhir_state * (
# 9 "minicparser.mly"
       (string)
# 278 "minicparser.ml"
            ))) * _menhir_state * 'tv_loption_separated_nonempty_list_COMMA_expr__) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv447 * _menhir_state * (
# 9 "minicparser.mly"
       (string)
# 285 "minicparser.ml"
            ))) * _menhir_state * 'tv_loption_separated_nonempty_list_COMMA_expr__) = Obj.magic _menhir_stack in
            ((let ((_menhir_stack, _menhir_s, (f : (
# 9 "minicparser.mly"
       (string)
# 290 "minicparser.ml"
            ))), _, (xs : 'tv_loption_separated_nonempty_list_COMMA_expr__)) = _menhir_stack in
            let _4 = () in
            let _2 = () in
            let _v : 'tv_expr = let s = 
# 232 "<standard.mly>"
    ( xs )
# 297 "minicparser.ml"
             in
            
# 104 "minicparser.mly"
                                                 ( Call(f,s) )
# 302 "minicparser.ml"
             in
            _menhir_goto_expr _menhir_env _menhir_stack _menhir_s _v) : 'freshtv448)) : 'freshtv450)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv451 * _menhir_state * (
# 9 "minicparser.mly"
       (string)
# 312 "minicparser.ml"
            ))) * _menhir_state * 'tv_loption_separated_nonempty_list_COMMA_expr__) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv452)) : 'freshtv454)
    | MenhirState79 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv461 * _menhir_state * (
# 9 "minicparser.mly"
       (string)
# 321 "minicparser.ml"
        ))) * _menhir_state * 'tv_loption_separated_nonempty_list_COMMA_expr__) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | RPAR ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv457 * _menhir_state * (
# 9 "minicparser.mly"
       (string)
# 331 "minicparser.ml"
            ))) * _menhir_state * 'tv_loption_separated_nonempty_list_COMMA_expr__) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv455 * _menhir_state * (
# 9 "minicparser.mly"
       (string)
# 338 "minicparser.ml"
            ))) * _menhir_state * 'tv_loption_separated_nonempty_list_COMMA_expr__) = Obj.magic _menhir_stack in
            ((let ((_menhir_stack, _menhir_s, (f : (
# 9 "minicparser.mly"
       (string)
# 343 "minicparser.ml"
            ))), _, (xs : 'tv_loption_separated_nonempty_list_COMMA_expr__)) = _menhir_stack in
            let _4 = () in
            let _2 = () in
            let _v : (
# 23 "minicparser.mly"
      (Minic.instr)
# 350 "minicparser.ml"
            ) = let s = 
# 232 "<standard.mly>"
    ( xs )
# 354 "minicparser.ml"
             in
            
# 67 "minicparser.mly"
                                                 (Expr(Call(f,s)))
# 359 "minicparser.ml"
             in
            _menhir_goto_simple_instr _menhir_env _menhir_stack _menhir_s _v) : 'freshtv456)) : 'freshtv458)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv459 * _menhir_state * (
# 9 "minicparser.mly"
       (string)
# 369 "minicparser.ml"
            ))) * _menhir_state * 'tv_loption_separated_nonempty_list_COMMA_expr__) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv460)) : 'freshtv462)
    | _ ->
        _menhir_fail ()

and _menhir_goto_simple_instr : _menhir_env -> 'ttv_tail -> _menhir_state -> (
# 23 "minicparser.mly"
      (Minic.instr)
# 379 "minicparser.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    match _menhir_s with
    | MenhirState89 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (((((('freshtv437 * _menhir_state)) * _menhir_state * (
# 25 "minicparser.mly"
      (string * Minic.typ * Minic.expr option)
# 389 "minicparser.ml"
        ))) * _menhir_state * 'tv_expr)) * _menhir_state * (
# 23 "minicparser.mly"
      (Minic.instr)
# 393 "minicparser.ml"
        )) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | RPAR ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (((((('freshtv433 * _menhir_state)) * _menhir_state * (
# 25 "minicparser.mly"
      (string * Minic.typ * Minic.expr option)
# 403 "minicparser.ml"
            ))) * _menhir_state * 'tv_expr)) * _menhir_state * (
# 23 "minicparser.mly"
      (Minic.instr)
# 407 "minicparser.ml"
            )) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | LACC ->
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : ((((((('freshtv429 * _menhir_state)) * _menhir_state * (
# 25 "minicparser.mly"
      (string * Minic.typ * Minic.expr option)
# 417 "minicparser.ml"
                ))) * _menhir_state * 'tv_expr)) * _menhir_state * (
# 23 "minicparser.mly"
      (Minic.instr)
# 421 "minicparser.ml"
                ))) = Obj.magic _menhir_stack in
                ((let _menhir_env = _menhir_discard _menhir_env in
                let _tok = _menhir_env._menhir_token in
                match _tok with
                | FOR ->
                    _menhir_run84 _menhir_env (Obj.magic _menhir_stack) MenhirState92
                | IDENT _v ->
                    _menhir_run78 _menhir_env (Obj.magic _menhir_stack) MenhirState92 _v
                | IF ->
                    _menhir_run73 _menhir_env (Obj.magic _menhir_stack) MenhirState92
                | PUTCHAR ->
                    _menhir_run69 _menhir_env (Obj.magic _menhir_stack) MenhirState92
                | RETURN ->
                    _menhir_run67 _menhir_env (Obj.magic _menhir_stack) MenhirState92
                | WHILE ->
                    _menhir_run21 _menhir_env (Obj.magic _menhir_stack) MenhirState92
                | RACC ->
                    _menhir_reduce28 _menhir_env (Obj.magic _menhir_stack) MenhirState92
                | _ ->
                    assert (not _menhir_env._menhir_error);
                    _menhir_env._menhir_error <- true;
                    _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState92) : 'freshtv430)
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : ((((((('freshtv431 * _menhir_state)) * _menhir_state * (
# 25 "minicparser.mly"
      (string * Minic.typ * Minic.expr option)
# 451 "minicparser.ml"
                ))) * _menhir_state * 'tv_expr)) * _menhir_state * (
# 23 "minicparser.mly"
      (Minic.instr)
# 455 "minicparser.ml"
                ))) = Obj.magic _menhir_stack in
                ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv432)) : 'freshtv434)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (((((('freshtv435 * _menhir_state)) * _menhir_state * (
# 25 "minicparser.mly"
      (string * Minic.typ * Minic.expr option)
# 466 "minicparser.ml"
            ))) * _menhir_state * 'tv_expr)) * _menhir_state * (
# 23 "minicparser.mly"
      (Minic.instr)
# 470 "minicparser.ml"
            )) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv436)) : 'freshtv438)
    | MenhirState20 | MenhirState66 | MenhirState107 | MenhirState77 | MenhirState97 | MenhirState92 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv445 * _menhir_state * (
# 23 "minicparser.mly"
      (Minic.instr)
# 479 "minicparser.ml"
        )) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | SEMI ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv441 * _menhir_state * (
# 23 "minicparser.mly"
      (Minic.instr)
# 489 "minicparser.ml"
            )) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv439 * _menhir_state * (
# 23 "minicparser.mly"
      (Minic.instr)
# 496 "minicparser.ml"
            )) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, (i : (
# 23 "minicparser.mly"
      (Minic.instr)
# 501 "minicparser.ml"
            ))) = _menhir_stack in
            let _2 = () in
            let _v : (
# 24 "minicparser.mly"
      (Minic.instr)
# 507 "minicparser.ml"
            ) = 
# 72 "minicparser.mly"
                      (i)
# 511 "minicparser.ml"
             in
            _menhir_goto_instr _menhir_env _menhir_stack _menhir_s _v) : 'freshtv440)) : 'freshtv442)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv443 * _menhir_state * (
# 23 "minicparser.mly"
      (Minic.instr)
# 521 "minicparser.ml"
            )) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv444)) : 'freshtv446)
    | _ ->
        _menhir_fail ()

and _menhir_goto_separated_nonempty_list_COMMA_expr_ : _menhir_env -> 'ttv_tail -> _menhir_state -> 'tv_separated_nonempty_list_COMMA_expr_ -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    match _menhir_s with
    | MenhirState79 | MenhirState26 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv423) = Obj.magic _menhir_stack in
        let (_menhir_s : _menhir_state) = _menhir_s in
        let (_v : 'tv_separated_nonempty_list_COMMA_expr_) = _v in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv421) = Obj.magic _menhir_stack in
        let (_menhir_s : _menhir_state) = _menhir_s in
        let ((x : 'tv_separated_nonempty_list_COMMA_expr_) : 'tv_separated_nonempty_list_COMMA_expr_) = _v in
        ((let _v : 'tv_loption_separated_nonempty_list_COMMA_expr__ = 
# 144 "<standard.mly>"
    ( x )
# 543 "minicparser.ml"
         in
        _menhir_goto_loption_separated_nonempty_list_COMMA_expr__ _menhir_env _menhir_stack _menhir_s _v) : 'freshtv422)) : 'freshtv424)
    | MenhirState59 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv427 * _menhir_state * 'tv_expr)) = Obj.magic _menhir_stack in
        let (_menhir_s : _menhir_state) = _menhir_s in
        let (_v : 'tv_separated_nonempty_list_COMMA_expr_) = _v in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv425 * _menhir_state * 'tv_expr)) = Obj.magic _menhir_stack in
        let (_ : _menhir_state) = _menhir_s in
        let ((xs : 'tv_separated_nonempty_list_COMMA_expr_) : 'tv_separated_nonempty_list_COMMA_expr_) = _v in
        ((let (_menhir_stack, _menhir_s, (x : 'tv_expr)) = _menhir_stack in
        let _2 = () in
        let _v : 'tv_separated_nonempty_list_COMMA_expr_ = 
# 243 "<standard.mly>"
    ( x :: xs )
# 560 "minicparser.ml"
         in
        _menhir_goto_separated_nonempty_list_COMMA_expr_ _menhir_env _menhir_stack _menhir_s _v) : 'freshtv426)) : 'freshtv428)
    | _ ->
        _menhir_fail ()

and _menhir_run33 : _menhir_env -> 'ttv_tail * _menhir_state * 'tv_expr -> 'ttv_return =
  fun _menhir_env _menhir_stack ->
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | CST _v ->
        _menhir_run28 _menhir_env (Obj.magic _menhir_stack) MenhirState33 _v
    | CST_B _v ->
        _menhir_run27 _menhir_env (Obj.magic _menhir_stack) MenhirState33 _v
    | IDENT _v ->
        _menhir_run25 _menhir_env (Obj.magic _menhir_stack) MenhirState33 _v
    | LPAR ->
        _menhir_run24 _menhir_env (Obj.magic _menhir_stack) MenhirState33
    | NOT ->
        _menhir_run23 _menhir_env (Obj.magic _menhir_stack) MenhirState33
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState33

and _menhir_run35 : _menhir_env -> 'ttv_tail * _menhir_state * 'tv_expr -> 'ttv_return =
  fun _menhir_env _menhir_stack ->
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | CST _v ->
        _menhir_run28 _menhir_env (Obj.magic _menhir_stack) MenhirState35 _v
    | CST_B _v ->
        _menhir_run27 _menhir_env (Obj.magic _menhir_stack) MenhirState35 _v
    | IDENT _v ->
        _menhir_run25 _menhir_env (Obj.magic _menhir_stack) MenhirState35 _v
    | LPAR ->
        _menhir_run24 _menhir_env (Obj.magic _menhir_stack) MenhirState35
    | NOT ->
        _menhir_run23 _menhir_env (Obj.magic _menhir_stack) MenhirState35
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState35

and _menhir_run39 : _menhir_env -> 'ttv_tail * _menhir_state * 'tv_expr -> 'ttv_return =
  fun _menhir_env _menhir_stack ->
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | CST _v ->
        _menhir_run28 _menhir_env (Obj.magic _menhir_stack) MenhirState39 _v
    | CST_B _v ->
        _menhir_run27 _menhir_env (Obj.magic _menhir_stack) MenhirState39 _v
    | IDENT _v ->
        _menhir_run25 _menhir_env (Obj.magic _menhir_stack) MenhirState39 _v
    | LPAR ->
        _menhir_run24 _menhir_env (Obj.magic _menhir_stack) MenhirState39
    | NOT ->
        _menhir_run23 _menhir_env (Obj.magic _menhir_stack) MenhirState39
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState39

and _menhir_run57 : _menhir_env -> 'ttv_tail * _menhir_state * 'tv_expr -> 'ttv_return =
  fun _menhir_env _menhir_stack ->
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | CST _v ->
        _menhir_run28 _menhir_env (Obj.magic _menhir_stack) MenhirState57 _v
    | CST_B _v ->
        _menhir_run27 _menhir_env (Obj.magic _menhir_stack) MenhirState57 _v
    | IDENT _v ->
        _menhir_run25 _menhir_env (Obj.magic _menhir_stack) MenhirState57 _v
    | LPAR ->
        _menhir_run24 _menhir_env (Obj.magic _menhir_stack) MenhirState57
    | NOT ->
        _menhir_run23 _menhir_env (Obj.magic _menhir_stack) MenhirState57
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState57

and _menhir_run41 : _menhir_env -> 'ttv_tail * _menhir_state * 'tv_expr -> 'ttv_return =
  fun _menhir_env _menhir_stack ->
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | CST _v ->
        _menhir_run28 _menhir_env (Obj.magic _menhir_stack) MenhirState41 _v
    | CST_B _v ->
        _menhir_run27 _menhir_env (Obj.magic _menhir_stack) MenhirState41 _v
    | IDENT _v ->
        _menhir_run25 _menhir_env (Obj.magic _menhir_stack) MenhirState41 _v
    | LPAR ->
        _menhir_run24 _menhir_env (Obj.magic _menhir_stack) MenhirState41
    | NOT ->
        _menhir_run23 _menhir_env (Obj.magic _menhir_stack) MenhirState41
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState41

and _menhir_run43 : _menhir_env -> 'ttv_tail * _menhir_state * 'tv_expr -> 'ttv_return =
  fun _menhir_env _menhir_stack ->
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | CST _v ->
        _menhir_run28 _menhir_env (Obj.magic _menhir_stack) MenhirState43 _v
    | CST_B _v ->
        _menhir_run27 _menhir_env (Obj.magic _menhir_stack) MenhirState43 _v
    | IDENT _v ->
        _menhir_run25 _menhir_env (Obj.magic _menhir_stack) MenhirState43 _v
    | LPAR ->
        _menhir_run24 _menhir_env (Obj.magic _menhir_stack) MenhirState43
    | NOT ->
        _menhir_run23 _menhir_env (Obj.magic _menhir_stack) MenhirState43
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState43

and _menhir_run45 : _menhir_env -> 'ttv_tail * _menhir_state * 'tv_expr -> 'ttv_return =
  fun _menhir_env _menhir_stack ->
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | CST _v ->
        _menhir_run28 _menhir_env (Obj.magic _menhir_stack) MenhirState45 _v
    | CST_B _v ->
        _menhir_run27 _menhir_env (Obj.magic _menhir_stack) MenhirState45 _v
    | IDENT _v ->
        _menhir_run25 _menhir_env (Obj.magic _menhir_stack) MenhirState45 _v
    | LPAR ->
        _menhir_run24 _menhir_env (Obj.magic _menhir_stack) MenhirState45
    | NOT ->
        _menhir_run23 _menhir_env (Obj.magic _menhir_stack) MenhirState45
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
        _menhir_run28 _menhir_env (Obj.magic _menhir_stack) MenhirState47 _v
    | CST_B _v ->
        _menhir_run27 _menhir_env (Obj.magic _menhir_stack) MenhirState47 _v
    | IDENT _v ->
        _menhir_run25 _menhir_env (Obj.magic _menhir_stack) MenhirState47 _v
    | LPAR ->
        _menhir_run24 _menhir_env (Obj.magic _menhir_stack) MenhirState47
    | NOT ->
        _menhir_run23 _menhir_env (Obj.magic _menhir_stack) MenhirState47
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
        _menhir_run28 _menhir_env (Obj.magic _menhir_stack) MenhirState49 _v
    | CST_B _v ->
        _menhir_run27 _menhir_env (Obj.magic _menhir_stack) MenhirState49 _v
    | IDENT _v ->
        _menhir_run25 _menhir_env (Obj.magic _menhir_stack) MenhirState49 _v
    | LPAR ->
        _menhir_run24 _menhir_env (Obj.magic _menhir_stack) MenhirState49
    | NOT ->
        _menhir_run23 _menhir_env (Obj.magic _menhir_stack) MenhirState49
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState49

and _menhir_run53 : _menhir_env -> 'ttv_tail * _menhir_state * 'tv_expr -> 'ttv_return =
  fun _menhir_env _menhir_stack ->
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | CST _v ->
        _menhir_run28 _menhir_env (Obj.magic _menhir_stack) MenhirState53 _v
    | CST_B _v ->
        _menhir_run27 _menhir_env (Obj.magic _menhir_stack) MenhirState53 _v
    | IDENT _v ->
        _menhir_run25 _menhir_env (Obj.magic _menhir_stack) MenhirState53 _v
    | LPAR ->
        _menhir_run24 _menhir_env (Obj.magic _menhir_stack) MenhirState53
    | NOT ->
        _menhir_run23 _menhir_env (Obj.magic _menhir_stack) MenhirState53
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState53

and _menhir_run51 : _menhir_env -> 'ttv_tail * _menhir_state * 'tv_expr -> 'ttv_return =
  fun _menhir_env _menhir_stack ->
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | CST _v ->
        _menhir_run28 _menhir_env (Obj.magic _menhir_stack) MenhirState51 _v
    | CST_B _v ->
        _menhir_run27 _menhir_env (Obj.magic _menhir_stack) MenhirState51 _v
    | IDENT _v ->
        _menhir_run25 _menhir_env (Obj.magic _menhir_stack) MenhirState51 _v
    | LPAR ->
        _menhir_run24 _menhir_env (Obj.magic _menhir_stack) MenhirState51
    | NOT ->
        _menhir_run23 _menhir_env (Obj.magic _menhir_stack) MenhirState51
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState51

and _menhir_run55 : _menhir_env -> 'ttv_tail * _menhir_state * 'tv_expr -> 'ttv_return =
  fun _menhir_env _menhir_stack ->
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | CST _v ->
        _menhir_run28 _menhir_env (Obj.magic _menhir_stack) MenhirState55 _v
    | CST_B _v ->
        _menhir_run27 _menhir_env (Obj.magic _menhir_stack) MenhirState55 _v
    | IDENT _v ->
        _menhir_run25 _menhir_env (Obj.magic _menhir_stack) MenhirState55 _v
    | LPAR ->
        _menhir_run24 _menhir_env (Obj.magic _menhir_stack) MenhirState55
    | NOT ->
        _menhir_run23 _menhir_env (Obj.magic _menhir_stack) MenhirState55
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState55

and _menhir_run37 : _menhir_env -> 'ttv_tail * _menhir_state * 'tv_expr -> 'ttv_return =
  fun _menhir_env _menhir_stack ->
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | CST _v ->
        _menhir_run28 _menhir_env (Obj.magic _menhir_stack) MenhirState37 _v
    | CST_B _v ->
        _menhir_run27 _menhir_env (Obj.magic _menhir_stack) MenhirState37 _v
    | IDENT _v ->
        _menhir_run25 _menhir_env (Obj.magic _menhir_stack) MenhirState37 _v
    | LPAR ->
        _menhir_run24 _menhir_env (Obj.magic _menhir_stack) MenhirState37
    | NOT ->
        _menhir_run23 _menhir_env (Obj.magic _menhir_stack) MenhirState37
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState37

and _menhir_goto_separated_nonempty_list_COMMA_params_ : _menhir_env -> 'ttv_tail -> _menhir_state -> 'tv_separated_nonempty_list_COMMA_params_ -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    match _menhir_s with
    | MenhirState8 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv415) = Obj.magic _menhir_stack in
        let (_menhir_s : _menhir_state) = _menhir_s in
        let (_v : 'tv_separated_nonempty_list_COMMA_params_) = _v in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv413) = Obj.magic _menhir_stack in
        let (_menhir_s : _menhir_state) = _menhir_s in
        let ((x : 'tv_separated_nonempty_list_COMMA_params_) : 'tv_separated_nonempty_list_COMMA_params_) = _v in
        ((let _v : 'tv_loption_separated_nonempty_list_COMMA_params__ = 
# 144 "<standard.mly>"
    ( x )
# 841 "minicparser.ml"
         in
        _menhir_goto_loption_separated_nonempty_list_COMMA_params__ _menhir_env _menhir_stack _menhir_s _v) : 'freshtv414)) : 'freshtv416)
    | MenhirState15 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv419 * _menhir_state * 'tv_params)) = Obj.magic _menhir_stack in
        let (_menhir_s : _menhir_state) = _menhir_s in
        let (_v : 'tv_separated_nonempty_list_COMMA_params_) = _v in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv417 * _menhir_state * 'tv_params)) = Obj.magic _menhir_stack in
        let (_ : _menhir_state) = _menhir_s in
        let ((xs : 'tv_separated_nonempty_list_COMMA_params_) : 'tv_separated_nonempty_list_COMMA_params_) = _v in
        ((let (_menhir_stack, _menhir_s, (x : 'tv_params)) = _menhir_stack in
        let _2 = () in
        let _v : 'tv_separated_nonempty_list_COMMA_params_ = 
# 243 "<standard.mly>"
    ( x :: xs )
# 858 "minicparser.ml"
         in
        _menhir_goto_separated_nonempty_list_COMMA_params_ _menhir_env _menhir_stack _menhir_s _v) : 'freshtv418)) : 'freshtv420)
    | _ ->
        _menhir_fail ()

and _menhir_goto_list_instr_ : _menhir_env -> 'ttv_tail -> _menhir_state -> 'tv_list_instr_ -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    match _menhir_s with
    | MenhirState92 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((((((((('freshtv357 * _menhir_state)) * _menhir_state * (
# 25 "minicparser.mly"
      (string * Minic.typ * Minic.expr option)
# 873 "minicparser.ml"
        ))) * _menhir_state * 'tv_expr)) * _menhir_state * (
# 23 "minicparser.mly"
      (Minic.instr)
# 877 "minicparser.ml"
        )))) * _menhir_state * 'tv_list_instr_) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | RACC ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ((((((((('freshtv353 * _menhir_state)) * _menhir_state * (
# 25 "minicparser.mly"
      (string * Minic.typ * Minic.expr option)
# 887 "minicparser.ml"
            ))) * _menhir_state * 'tv_expr)) * _menhir_state * (
# 23 "minicparser.mly"
      (Minic.instr)
# 891 "minicparser.ml"
            )))) * _menhir_state * 'tv_list_instr_) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ((((((((('freshtv351 * _menhir_state)) * _menhir_state * (
# 25 "minicparser.mly"
      (string * Minic.typ * Minic.expr option)
# 898 "minicparser.ml"
            ))) * _menhir_state * 'tv_expr)) * _menhir_state * (
# 23 "minicparser.mly"
      (Minic.instr)
# 902 "minicparser.ml"
            )))) * _menhir_state * 'tv_list_instr_) = Obj.magic _menhir_stack in
            ((let (((((_menhir_stack, _menhir_s), _, (d : (
# 25 "minicparser.mly"
      (string * Minic.typ * Minic.expr option)
# 907 "minicparser.ml"
            ))), _, (e : 'tv_expr)), _, (i : (
# 23 "minicparser.mly"
      (Minic.instr)
# 911 "minicparser.ml"
            ))), _, (l : 'tv_list_instr_)) = _menhir_stack in
            let _11 = () in
            let _9 = () in
            let _8 = () in
            let _6 = () in
            let _4 = () in
            let _2 = () in
            let _1 = () in
            let _v : (
# 24 "minicparser.mly"
      (Minic.instr)
# 923 "minicparser.ml"
            ) = 
# 75 "minicparser.mly"
 (	
		 let s ,t, o = d in 
		 if o = None then failwith("La variable de la boucle for doit être initialisée") else For(t, s, Option.get o, e, i, l)
	)
# 930 "minicparser.ml"
             in
            _menhir_goto_instr _menhir_env _menhir_stack _menhir_s _v) : 'freshtv352)) : 'freshtv354)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ((((((((('freshtv355 * _menhir_state)) * _menhir_state * (
# 25 "minicparser.mly"
      (string * Minic.typ * Minic.expr option)
# 940 "minicparser.ml"
            ))) * _menhir_state * 'tv_expr)) * _menhir_state * (
# 23 "minicparser.mly"
      (Minic.instr)
# 944 "minicparser.ml"
            )))) * _menhir_state * 'tv_list_instr_) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv356)) : 'freshtv358)
    | MenhirState97 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv361 * _menhir_state * (
# 24 "minicparser.mly"
      (Minic.instr)
# 953 "minicparser.ml"
        )) * _menhir_state * 'tv_list_instr_) = Obj.magic _menhir_stack in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv359 * _menhir_state * (
# 24 "minicparser.mly"
      (Minic.instr)
# 959 "minicparser.ml"
        )) * _menhir_state * 'tv_list_instr_) = Obj.magic _menhir_stack in
        ((let ((_menhir_stack, _menhir_s, (x : (
# 24 "minicparser.mly"
      (Minic.instr)
# 964 "minicparser.ml"
        ))), _, (xs : 'tv_list_instr_)) = _menhir_stack in
        let _v : 'tv_list_instr_ = 
# 213 "<standard.mly>"
    ( x :: xs )
# 969 "minicparser.ml"
         in
        _menhir_goto_list_instr_ _menhir_env _menhir_stack _menhir_s _v) : 'freshtv360)) : 'freshtv362)
    | MenhirState77 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((((('freshtv377 * _menhir_state)) * _menhir_state * 'tv_expr))) * _menhir_state * 'tv_list_instr_) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | RACC ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ((((('freshtv373 * _menhir_state)) * _menhir_state * 'tv_expr))) * _menhir_state * 'tv_list_instr_) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | ELSE ->
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : (((((('freshtv367 * _menhir_state)) * _menhir_state * 'tv_expr))) * _menhir_state * 'tv_list_instr_)) = Obj.magic _menhir_stack in
                ((let _menhir_env = _menhir_discard _menhir_env in
                let _tok = _menhir_env._menhir_token in
                match _tok with
                | LACC ->
                    let (_menhir_env : _menhir_env) = _menhir_env in
                    let (_menhir_stack : ((((((('freshtv363 * _menhir_state)) * _menhir_state * 'tv_expr))) * _menhir_state * 'tv_list_instr_))) = Obj.magic _menhir_stack in
                    ((let _menhir_env = _menhir_discard _menhir_env in
                    let _tok = _menhir_env._menhir_token in
                    match _tok with
                    | FOR ->
                        _menhir_run84 _menhir_env (Obj.magic _menhir_stack) MenhirState107
                    | IDENT _v ->
                        _menhir_run78 _menhir_env (Obj.magic _menhir_stack) MenhirState107 _v
                    | IF ->
                        _menhir_run73 _menhir_env (Obj.magic _menhir_stack) MenhirState107
                    | PUTCHAR ->
                        _menhir_run69 _menhir_env (Obj.magic _menhir_stack) MenhirState107
                    | RETURN ->
                        _menhir_run67 _menhir_env (Obj.magic _menhir_stack) MenhirState107
                    | WHILE ->
                        _menhir_run21 _menhir_env (Obj.magic _menhir_stack) MenhirState107
                    | RACC ->
                        _menhir_reduce28 _menhir_env (Obj.magic _menhir_stack) MenhirState107
                    | _ ->
                        assert (not _menhir_env._menhir_error);
                        _menhir_env._menhir_error <- true;
                        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState107) : 'freshtv364)
                | _ ->
                    assert (not _menhir_env._menhir_error);
                    _menhir_env._menhir_error <- true;
                    let (_menhir_env : _menhir_env) = _menhir_env in
                    let (_menhir_stack : ((((((('freshtv365 * _menhir_state)) * _menhir_state * 'tv_expr))) * _menhir_state * 'tv_list_instr_))) = Obj.magic _menhir_stack in
                    ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
                    _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv366)) : 'freshtv368)
            | FOR | IDENT _ | IF | PUTCHAR | RACC | RETURN | WHILE ->
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : (((((('freshtv369 * _menhir_state)) * _menhir_state * 'tv_expr))) * _menhir_state * 'tv_list_instr_)) = Obj.magic _menhir_stack in
                ((let (((_menhir_stack, _menhir_s), _, (e : 'tv_expr)), _, (s1 : 'tv_list_instr_)) = _menhir_stack in
                let _7 = () in
                let _5 = () in
                let _4 = () in
                let _2 = () in
                let _1 = () in
                let _v : (
# 24 "minicparser.mly"
      (Minic.instr)
# 1033 "minicparser.ml"
                ) = 
# 81 "minicparser.mly"
                                               (If(e,s1,[]))
# 1037 "minicparser.ml"
                 in
                _menhir_goto_instr _menhir_env _menhir_stack _menhir_s _v) : 'freshtv370)
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : (((((('freshtv371 * _menhir_state)) * _menhir_state * 'tv_expr))) * _menhir_state * 'tv_list_instr_)) = Obj.magic _menhir_stack in
                ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv372)) : 'freshtv374)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ((((('freshtv375 * _menhir_state)) * _menhir_state * 'tv_expr))) * _menhir_state * 'tv_list_instr_) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv376)) : 'freshtv378)
    | MenhirState107 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((((((((('freshtv385 * _menhir_state)) * _menhir_state * 'tv_expr))) * _menhir_state * 'tv_list_instr_)))) * _menhir_state * 'tv_list_instr_) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | RACC ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ((((((((('freshtv381 * _menhir_state)) * _menhir_state * 'tv_expr))) * _menhir_state * 'tv_list_instr_)))) * _menhir_state * 'tv_list_instr_) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ((((((((('freshtv379 * _menhir_state)) * _menhir_state * 'tv_expr))) * _menhir_state * 'tv_list_instr_)))) * _menhir_state * 'tv_list_instr_) = Obj.magic _menhir_stack in
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
# 24 "minicparser.mly"
      (Minic.instr)
# 1078 "minicparser.ml"
            ) = 
# 80 "minicparser.mly"
                                                                             (If(e,s1,s2))
# 1082 "minicparser.ml"
             in
            _menhir_goto_instr _menhir_env _menhir_stack _menhir_s _v) : 'freshtv380)) : 'freshtv382)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ((((((((('freshtv383 * _menhir_state)) * _menhir_state * 'tv_expr))) * _menhir_state * 'tv_list_instr_)))) * _menhir_state * 'tv_list_instr_) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv384)) : 'freshtv386)
    | MenhirState66 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((((('freshtv393 * _menhir_state)) * _menhir_state * 'tv_expr))) * _menhir_state * 'tv_list_instr_) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | RACC ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ((((('freshtv389 * _menhir_state)) * _menhir_state * 'tv_expr))) * _menhir_state * 'tv_list_instr_) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ((((('freshtv387 * _menhir_state)) * _menhir_state * 'tv_expr))) * _menhir_state * 'tv_list_instr_) = Obj.magic _menhir_stack in
            ((let (((_menhir_stack, _menhir_s), _, (e : 'tv_expr)), _, (l : 'tv_list_instr_)) = _menhir_stack in
            let _7 = () in
            let _5 = () in
            let _4 = () in
            let _2 = () in
            let _1 = () in
            let _v : (
# 24 "minicparser.mly"
      (Minic.instr)
# 1113 "minicparser.ml"
            ) = 
# 73 "minicparser.mly"
                                                 (While(e,l))
# 1117 "minicparser.ml"
             in
            _menhir_goto_instr _menhir_env _menhir_stack _menhir_s _v) : 'freshtv388)) : 'freshtv390)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ((((('freshtv391 * _menhir_state)) * _menhir_state * 'tv_expr))) * _menhir_state * 'tv_list_instr_) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv392)) : 'freshtv394)
    | MenhirState20 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((((((('freshtv411 * _menhir_state * (
# 22 "minicparser.mly"
      (Minic.typ)
# 1132 "minicparser.ml"
        )) * (
# 9 "minicparser.mly"
       (string)
# 1136 "minicparser.ml"
        ))) * _menhir_state * 'tv_loption_separated_nonempty_list_COMMA_params__))) * _menhir_state * (
# 26 "minicparser.mly"
      ((string * Minic.typ * Minic.expr option) list)
# 1140 "minicparser.ml"
        )) * _menhir_state * 'tv_list_instr_) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | RACC ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ((((((('freshtv407 * _menhir_state * (
# 22 "minicparser.mly"
      (Minic.typ)
# 1150 "minicparser.ml"
            )) * (
# 9 "minicparser.mly"
       (string)
# 1154 "minicparser.ml"
            ))) * _menhir_state * 'tv_loption_separated_nonempty_list_COMMA_params__))) * _menhir_state * (
# 26 "minicparser.mly"
      ((string * Minic.typ * Minic.expr option) list)
# 1158 "minicparser.ml"
            )) * _menhir_state * 'tv_list_instr_) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ((((((('freshtv405 * _menhir_state * (
# 22 "minicparser.mly"
      (Minic.typ)
# 1165 "minicparser.ml"
            )) * (
# 9 "minicparser.mly"
       (string)
# 1169 "minicparser.ml"
            ))) * _menhir_state * 'tv_loption_separated_nonempty_list_COMMA_params__))) * _menhir_state * (
# 26 "minicparser.mly"
      ((string * Minic.typ * Minic.expr option) list)
# 1173 "minicparser.ml"
            )) * _menhir_state * 'tv_list_instr_) = Obj.magic _menhir_stack in
            ((let (((((_menhir_stack, _menhir_s, (t : (
# 22 "minicparser.mly"
      (Minic.typ)
# 1178 "minicparser.ml"
            ))), (f : (
# 9 "minicparser.mly"
       (string)
# 1182 "minicparser.ml"
            ))), _, (xs : 'tv_loption_separated_nonempty_list_COMMA_params__)), _, (local : (
# 26 "minicparser.mly"
      ((string * Minic.typ * Minic.expr option) list)
# 1186 "minicparser.ml"
            ))), _, (l : 'tv_list_instr_)) = _menhir_stack in
            let _9 = () in
            let _6 = () in
            let _5 = () in
            let _3 = () in
            let _v : (
# 27 "minicparser.mly"
      (Minic.fun_def)
# 1195 "minicparser.ml"
            ) = let p = 
# 232 "<standard.mly>"
    ( xs )
# 1199 "minicparser.ml"
             in
            
# 50 "minicparser.mly"
                                                                                                     ( {name= f; params= p; return= t; locals= local; code= l} )
# 1204 "minicparser.ml"
             in
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv403) = _menhir_stack in
            let (_menhir_s : _menhir_state) = _menhir_s in
            let (_v : (
# 27 "minicparser.mly"
      (Minic.fun_def)
# 1212 "minicparser.ml"
            )) = _v in
            ((match _menhir_s with
            | MenhirState117 ->
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : 'freshtv397 * _menhir_state * (
# 28 "minicparser.mly"
      (Minic.fun_def list)
# 1220 "minicparser.ml"
                )) = Obj.magic _menhir_stack in
                let (_menhir_s : _menhir_state) = _menhir_s in
                let (_v : (
# 27 "minicparser.mly"
      (Minic.fun_def)
# 1226 "minicparser.ml"
                )) = _v in
                ((let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : 'freshtv395 * _menhir_state * (
# 28 "minicparser.mly"
      (Minic.fun_def list)
# 1232 "minicparser.ml"
                )) = Obj.magic _menhir_stack in
                let (_ : _menhir_state) = _menhir_s in
                let ((f : (
# 27 "minicparser.mly"
      (Minic.fun_def)
# 1238 "minicparser.ml"
                )) : (
# 27 "minicparser.mly"
      (Minic.fun_def)
# 1242 "minicparser.ml"
                )) = _v in
                ((let (_menhir_stack, _menhir_s, (l : (
# 28 "minicparser.mly"
      (Minic.fun_def list)
# 1247 "minicparser.ml"
                ))) = _menhir_stack in
                let _v : (
# 28 "minicparser.mly"
      (Minic.fun_def list)
# 1252 "minicparser.ml"
                ) = 
# 55 "minicparser.mly"
                           ( f::l )
# 1256 "minicparser.ml"
                 in
                _menhir_goto_fun_def_list _menhir_env _menhir_stack _menhir_s _v) : 'freshtv396)) : 'freshtv398)
            | MenhirState5 ->
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : 'freshtv401) = Obj.magic _menhir_stack in
                let (_menhir_s : _menhir_state) = _menhir_s in
                let (_v : (
# 27 "minicparser.mly"
      (Minic.fun_def)
# 1266 "minicparser.ml"
                )) = _v in
                ((let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : 'freshtv399) = Obj.magic _menhir_stack in
                let (_menhir_s : _menhir_state) = _menhir_s in
                let ((f : (
# 27 "minicparser.mly"
      (Minic.fun_def)
# 1274 "minicparser.ml"
                )) : (
# 27 "minicparser.mly"
      (Minic.fun_def)
# 1278 "minicparser.ml"
                )) = _v in
                ((let _v : (
# 28 "minicparser.mly"
      (Minic.fun_def list)
# 1283 "minicparser.ml"
                ) = 
# 54 "minicparser.mly"
            ([f])
# 1287 "minicparser.ml"
                 in
                _menhir_goto_fun_def_list _menhir_env _menhir_stack _menhir_s _v) : 'freshtv400)) : 'freshtv402)
            | _ ->
                _menhir_fail ()) : 'freshtv404)) : 'freshtv406)) : 'freshtv408)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ((((((('freshtv409 * _menhir_state * (
# 22 "minicparser.mly"
      (Minic.typ)
# 1299 "minicparser.ml"
            )) * (
# 9 "minicparser.mly"
       (string)
# 1303 "minicparser.ml"
            ))) * _menhir_state * 'tv_loption_separated_nonempty_list_COMMA_params__))) * _menhir_state * (
# 26 "minicparser.mly"
      ((string * Minic.typ * Minic.expr option) list)
# 1307 "minicparser.ml"
            )) * _menhir_state * 'tv_list_instr_) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv410)) : 'freshtv412)
    | _ ->
        _menhir_fail ()

and _menhir_reduce30 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _v : 'tv_loption_separated_nonempty_list_COMMA_expr__ = 
# 142 "<standard.mly>"
    ( [] )
# 1319 "minicparser.ml"
     in
    _menhir_goto_loption_separated_nonempty_list_COMMA_expr__ _menhir_env _menhir_stack _menhir_s _v

and _menhir_goto_expr : _menhir_env -> 'ttv_tail -> _menhir_state -> 'tv_expr -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    match _menhir_s with
    | MenhirState79 | MenhirState59 | MenhirState26 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv209 * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | AND ->
            _menhir_run37 _menhir_env (Obj.magic _menhir_stack)
        | COMMA ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv203 * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | CST _v ->
                _menhir_run28 _menhir_env (Obj.magic _menhir_stack) MenhirState59 _v
            | CST_B _v ->
                _menhir_run27 _menhir_env (Obj.magic _menhir_stack) MenhirState59 _v
            | IDENT _v ->
                _menhir_run25 _menhir_env (Obj.magic _menhir_stack) MenhirState59 _v
            | LPAR ->
                _menhir_run24 _menhir_env (Obj.magic _menhir_stack) MenhirState59
            | NOT ->
                _menhir_run23 _menhir_env (Obj.magic _menhir_stack) MenhirState59
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState59) : 'freshtv204)
        | DIV ->
            _menhir_run55 _menhir_env (Obj.magic _menhir_stack)
        | EQ ->
            _menhir_run51 _menhir_env (Obj.magic _menhir_stack)
        | FOIS ->
            _menhir_run53 _menhir_env (Obj.magic _menhir_stack)
        | GE ->
            _menhir_run49 _menhir_env (Obj.magic _menhir_stack)
        | GT ->
            _menhir_run47 _menhir_env (Obj.magic _menhir_stack)
        | LE ->
            _menhir_run45 _menhir_env (Obj.magic _menhir_stack)
        | LT ->
            _menhir_run43 _menhir_env (Obj.magic _menhir_stack)
        | MOD ->
            _menhir_run41 _menhir_env (Obj.magic _menhir_stack)
        | MOINS ->
            _menhir_run57 _menhir_env (Obj.magic _menhir_stack)
        | NE ->
            _menhir_run39 _menhir_env (Obj.magic _menhir_stack)
        | OR ->
            _menhir_run35 _menhir_env (Obj.magic _menhir_stack)
        | PLUS ->
            _menhir_run33 _menhir_env (Obj.magic _menhir_stack)
        | RPAR ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv205 * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, (x : 'tv_expr)) = _menhir_stack in
            let _v : 'tv_separated_nonempty_list_COMMA_expr_ = 
# 241 "<standard.mly>"
    ( [ x ] )
# 1386 "minicparser.ml"
             in
            _menhir_goto_separated_nonempty_list_COMMA_expr_ _menhir_env _menhir_stack _menhir_s _v) : 'freshtv206)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv207 * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv208)) : 'freshtv210)
    | MenhirState33 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv215 * _menhir_state * 'tv_expr)) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | AND ->
            _menhir_run37 _menhir_env (Obj.magic _menhir_stack)
        | DIV ->
            _menhir_run55 _menhir_env (Obj.magic _menhir_stack)
        | EQ ->
            _menhir_run51 _menhir_env (Obj.magic _menhir_stack)
        | FOIS ->
            _menhir_run53 _menhir_env (Obj.magic _menhir_stack)
        | GE ->
            _menhir_run49 _menhir_env (Obj.magic _menhir_stack)
        | GT ->
            _menhir_run47 _menhir_env (Obj.magic _menhir_stack)
        | LE ->
            _menhir_run45 _menhir_env (Obj.magic _menhir_stack)
        | LT ->
            _menhir_run43 _menhir_env (Obj.magic _menhir_stack)
        | MOD ->
            _menhir_run41 _menhir_env (Obj.magic _menhir_stack)
        | NE ->
            _menhir_run39 _menhir_env (Obj.magic _menhir_stack)
        | OR ->
            _menhir_run35 _menhir_env (Obj.magic _menhir_stack)
        | COMMA | MOINS | PLUS | RPAR | SEMI ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv211 * _menhir_state * 'tv_expr)) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
            ((let ((_menhir_stack, _menhir_s, (e : 'tv_expr)), _, (f : 'tv_expr)) = _menhir_stack in
            let _2 = () in
            let _v : 'tv_expr = 
# 89 "minicparser.mly"
                     ( Add(e,f) )
# 1432 "minicparser.ml"
             in
            _menhir_goto_expr _menhir_env _menhir_stack _menhir_s _v) : 'freshtv212)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv213 * _menhir_state * 'tv_expr)) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv214)) : 'freshtv216)
    | MenhirState35 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv221 * _menhir_state * 'tv_expr)) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | AND ->
            _menhir_run37 _menhir_env (Obj.magic _menhir_stack)
        | COMMA | DIV | EQ | FOIS | GE | GT | LE | LT | MOD | MOINS | NE | OR | PLUS | RPAR | SEMI ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv217 * _menhir_state * 'tv_expr)) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
            ((let ((_menhir_stack, _menhir_s, (e : 'tv_expr)), _, (f : 'tv_expr)) = _menhir_stack in
            let _2 = () in
            let _v : 'tv_expr = 
# 101 "minicparser.mly"
                   ( Or(e,f) )
# 1458 "minicparser.ml"
             in
            _menhir_goto_expr _menhir_env _menhir_stack _menhir_s _v) : 'freshtv218)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv219 * _menhir_state * 'tv_expr)) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv220)) : 'freshtv222)
    | MenhirState37 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv225 * _menhir_state * 'tv_expr)) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv223 * _menhir_state * 'tv_expr)) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
        ((let ((_menhir_stack, _menhir_s, (e : 'tv_expr)), _, (f : 'tv_expr)) = _menhir_stack in
        let _2 = () in
        let _v : 'tv_expr = 
# 100 "minicparser.mly"
                    ( And(e,f) )
# 1478 "minicparser.ml"
         in
        _menhir_goto_expr _menhir_env _menhir_stack _menhir_s _v) : 'freshtv224)) : 'freshtv226)
    | MenhirState39 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv231 * _menhir_state * 'tv_expr)) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | AND ->
            _menhir_run37 _menhir_env (Obj.magic _menhir_stack)
        | OR ->
            _menhir_run35 _menhir_env (Obj.magic _menhir_stack)
        | COMMA | DIV | FOIS | MOD | MOINS | PLUS | RPAR | SEMI ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv227 * _menhir_state * 'tv_expr)) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
            ((let ((_menhir_stack, _menhir_s, (e : 'tv_expr)), _, (f : 'tv_expr)) = _menhir_stack in
            let _2 = () in
            let _v : 'tv_expr = 
# 99 "minicparser.mly"
                   ( Ne(e,f) )
# 1499 "minicparser.ml"
             in
            _menhir_goto_expr _menhir_env _menhir_stack _menhir_s _v) : 'freshtv228)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv229 * _menhir_state * 'tv_expr)) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv230)) : 'freshtv232)
    | MenhirState41 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv237 * _menhir_state * 'tv_expr)) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | AND ->
            _menhir_run37 _menhir_env (Obj.magic _menhir_stack)
        | EQ ->
            _menhir_run51 _menhir_env (Obj.magic _menhir_stack)
        | GE ->
            _menhir_run49 _menhir_env (Obj.magic _menhir_stack)
        | GT ->
            _menhir_run47 _menhir_env (Obj.magic _menhir_stack)
        | LE ->
            _menhir_run45 _menhir_env (Obj.magic _menhir_stack)
        | LT ->
            _menhir_run43 _menhir_env (Obj.magic _menhir_stack)
        | NE ->
            _menhir_run39 _menhir_env (Obj.magic _menhir_stack)
        | OR ->
            _menhir_run35 _menhir_env (Obj.magic _menhir_stack)
        | COMMA | DIV | FOIS | MOINS | PLUS | RPAR | SEMI ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv233 * _menhir_state * 'tv_expr)) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
            ((let ((_menhir_stack, _menhir_s, (e : 'tv_expr)), _, (f : 'tv_expr)) = _menhir_stack in
            let _2 = () in
            let _v : 'tv_expr = 
# 93 "minicparser.mly"
                    ( Mod(e,f) )
# 1539 "minicparser.ml"
             in
            _menhir_goto_expr _menhir_env _menhir_stack _menhir_s _v) : 'freshtv234)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv235 * _menhir_state * 'tv_expr)) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv236)) : 'freshtv238)
    | MenhirState43 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv243 * _menhir_state * 'tv_expr)) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | AND ->
            _menhir_run37 _menhir_env (Obj.magic _menhir_stack)
        | OR ->
            _menhir_run35 _menhir_env (Obj.magic _menhir_stack)
        | COMMA | DIV | FOIS | MOD | MOINS | PLUS | RPAR | SEMI ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv239 * _menhir_state * 'tv_expr)) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
            ((let ((_menhir_stack, _menhir_s, (e : 'tv_expr)), _, (f : 'tv_expr)) = _menhir_stack in
            let _2 = () in
            let _v : 'tv_expr = 
# 94 "minicparser.mly"
                   ( Lt(e,f) )
# 1567 "minicparser.ml"
             in
            _menhir_goto_expr _menhir_env _menhir_stack _menhir_s _v) : 'freshtv240)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv241 * _menhir_state * 'tv_expr)) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv242)) : 'freshtv244)
    | MenhirState45 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv249 * _menhir_state * 'tv_expr)) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | AND ->
            _menhir_run37 _menhir_env (Obj.magic _menhir_stack)
        | OR ->
            _menhir_run35 _menhir_env (Obj.magic _menhir_stack)
        | COMMA | DIV | FOIS | MOD | MOINS | PLUS | RPAR | SEMI ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv245 * _menhir_state * 'tv_expr)) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
            ((let ((_menhir_stack, _menhir_s, (e : 'tv_expr)), _, (f : 'tv_expr)) = _menhir_stack in
            let _2 = () in
            let _v : 'tv_expr = 
# 95 "minicparser.mly"
                   ( Le(e,f) )
# 1595 "minicparser.ml"
             in
            _menhir_goto_expr _menhir_env _menhir_stack _menhir_s _v) : 'freshtv246)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv247 * _menhir_state * 'tv_expr)) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv248)) : 'freshtv250)
    | MenhirState47 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv255 * _menhir_state * 'tv_expr)) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | AND ->
            _menhir_run37 _menhir_env (Obj.magic _menhir_stack)
        | OR ->
            _menhir_run35 _menhir_env (Obj.magic _menhir_stack)
        | COMMA | DIV | FOIS | MOD | MOINS | PLUS | RPAR | SEMI ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv251 * _menhir_state * 'tv_expr)) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
            ((let ((_menhir_stack, _menhir_s, (e : 'tv_expr)), _, (f : 'tv_expr)) = _menhir_stack in
            let _2 = () in
            let _v : 'tv_expr = 
# 96 "minicparser.mly"
                   ( Gt(e,f) )
# 1623 "minicparser.ml"
             in
            _menhir_goto_expr _menhir_env _menhir_stack _menhir_s _v) : 'freshtv252)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv253 * _menhir_state * 'tv_expr)) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv254)) : 'freshtv256)
    | MenhirState49 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv261 * _menhir_state * 'tv_expr)) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | AND ->
            _menhir_run37 _menhir_env (Obj.magic _menhir_stack)
        | OR ->
            _menhir_run35 _menhir_env (Obj.magic _menhir_stack)
        | COMMA | DIV | FOIS | MOD | MOINS | PLUS | RPAR | SEMI ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv257 * _menhir_state * 'tv_expr)) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
            ((let ((_menhir_stack, _menhir_s, (e : 'tv_expr)), _, (f : 'tv_expr)) = _menhir_stack in
            let _2 = () in
            let _v : 'tv_expr = 
# 97 "minicparser.mly"
                   ( Ge(e,f) )
# 1651 "minicparser.ml"
             in
            _menhir_goto_expr _menhir_env _menhir_stack _menhir_s _v) : 'freshtv258)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv259 * _menhir_state * 'tv_expr)) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv260)) : 'freshtv262)
    | MenhirState51 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv267 * _menhir_state * 'tv_expr)) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | AND ->
            _menhir_run37 _menhir_env (Obj.magic _menhir_stack)
        | OR ->
            _menhir_run35 _menhir_env (Obj.magic _menhir_stack)
        | COMMA | DIV | FOIS | MOD | MOINS | PLUS | RPAR | SEMI ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv263 * _menhir_state * 'tv_expr)) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
            ((let ((_menhir_stack, _menhir_s, (e : 'tv_expr)), _, (f : 'tv_expr)) = _menhir_stack in
            let _2 = () in
            let _v : 'tv_expr = 
# 98 "minicparser.mly"
                   ( Eq(e,f) )
# 1679 "minicparser.ml"
             in
            _menhir_goto_expr _menhir_env _menhir_stack _menhir_s _v) : 'freshtv264)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv265 * _menhir_state * 'tv_expr)) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv266)) : 'freshtv268)
    | MenhirState53 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv273 * _menhir_state * 'tv_expr)) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | AND ->
            _menhir_run37 _menhir_env (Obj.magic _menhir_stack)
        | EQ ->
            _menhir_run51 _menhir_env (Obj.magic _menhir_stack)
        | GE ->
            _menhir_run49 _menhir_env (Obj.magic _menhir_stack)
        | GT ->
            _menhir_run47 _menhir_env (Obj.magic _menhir_stack)
        | LE ->
            _menhir_run45 _menhir_env (Obj.magic _menhir_stack)
        | LT ->
            _menhir_run43 _menhir_env (Obj.magic _menhir_stack)
        | MOD ->
            _menhir_run41 _menhir_env (Obj.magic _menhir_stack)
        | NE ->
            _menhir_run39 _menhir_env (Obj.magic _menhir_stack)
        | OR ->
            _menhir_run35 _menhir_env (Obj.magic _menhir_stack)
        | COMMA | DIV | FOIS | MOINS | PLUS | RPAR | SEMI ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv269 * _menhir_state * 'tv_expr)) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
            ((let ((_menhir_stack, _menhir_s, (e : 'tv_expr)), _, (f : 'tv_expr)) = _menhir_stack in
            let _2 = () in
            let _v : 'tv_expr = 
# 91 "minicparser.mly"
                     ( Mul(e,f) )
# 1721 "minicparser.ml"
             in
            _menhir_goto_expr _menhir_env _menhir_stack _menhir_s _v) : 'freshtv270)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv271 * _menhir_state * 'tv_expr)) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv272)) : 'freshtv274)
    | MenhirState55 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv279 * _menhir_state * 'tv_expr)) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | AND ->
            _menhir_run37 _menhir_env (Obj.magic _menhir_stack)
        | EQ ->
            _menhir_run51 _menhir_env (Obj.magic _menhir_stack)
        | GE ->
            _menhir_run49 _menhir_env (Obj.magic _menhir_stack)
        | GT ->
            _menhir_run47 _menhir_env (Obj.magic _menhir_stack)
        | LE ->
            _menhir_run45 _menhir_env (Obj.magic _menhir_stack)
        | LT ->
            _menhir_run43 _menhir_env (Obj.magic _menhir_stack)
        | MOD ->
            _menhir_run41 _menhir_env (Obj.magic _menhir_stack)
        | NE ->
            _menhir_run39 _menhir_env (Obj.magic _menhir_stack)
        | OR ->
            _menhir_run35 _menhir_env (Obj.magic _menhir_stack)
        | COMMA | DIV | FOIS | MOINS | PLUS | RPAR | SEMI ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv275 * _menhir_state * 'tv_expr)) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
            ((let ((_menhir_stack, _menhir_s, (e : 'tv_expr)), _, (f : 'tv_expr)) = _menhir_stack in
            let _2 = () in
            let _v : 'tv_expr = 
# 92 "minicparser.mly"
                    ( Div(e,f) )
# 1763 "minicparser.ml"
             in
            _menhir_goto_expr _menhir_env _menhir_stack _menhir_s _v) : 'freshtv276)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv277 * _menhir_state * 'tv_expr)) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv278)) : 'freshtv280)
    | MenhirState57 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv285 * _menhir_state * 'tv_expr)) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | AND ->
            _menhir_run37 _menhir_env (Obj.magic _menhir_stack)
        | EQ ->
            _menhir_run51 _menhir_env (Obj.magic _menhir_stack)
        | GE ->
            _menhir_run49 _menhir_env (Obj.magic _menhir_stack)
        | GT ->
            _menhir_run47 _menhir_env (Obj.magic _menhir_stack)
        | LE ->
            _menhir_run45 _menhir_env (Obj.magic _menhir_stack)
        | LT ->
            _menhir_run43 _menhir_env (Obj.magic _menhir_stack)
        | MOD ->
            _menhir_run41 _menhir_env (Obj.magic _menhir_stack)
        | NE ->
            _menhir_run39 _menhir_env (Obj.magic _menhir_stack)
        | OR ->
            _menhir_run35 _menhir_env (Obj.magic _menhir_stack)
        | COMMA | DIV | FOIS | MOINS | PLUS | RPAR | SEMI ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv281 * _menhir_state * 'tv_expr)) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
            ((let ((_menhir_stack, _menhir_s, (e : 'tv_expr)), _, (f : 'tv_expr)) = _menhir_stack in
            let _2 = () in
            let _v : 'tv_expr = 
# 90 "minicparser.mly"
                                         ( Sub(e,f) )
# 1805 "minicparser.ml"
             in
            _menhir_goto_expr _menhir_env _menhir_stack _menhir_s _v) : 'freshtv282)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv283 * _menhir_state * 'tv_expr)) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv284)) : 'freshtv286)
    | MenhirState24 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv293 * _menhir_state) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | AND ->
            _menhir_run37 _menhir_env (Obj.magic _menhir_stack)
        | DIV ->
            _menhir_run55 _menhir_env (Obj.magic _menhir_stack)
        | EQ ->
            _menhir_run51 _menhir_env (Obj.magic _menhir_stack)
        | FOIS ->
            _menhir_run53 _menhir_env (Obj.magic _menhir_stack)
        | GE ->
            _menhir_run49 _menhir_env (Obj.magic _menhir_stack)
        | GT ->
            _menhir_run47 _menhir_env (Obj.magic _menhir_stack)
        | LE ->
            _menhir_run45 _menhir_env (Obj.magic _menhir_stack)
        | LT ->
            _menhir_run43 _menhir_env (Obj.magic _menhir_stack)
        | MOD ->
            _menhir_run41 _menhir_env (Obj.magic _menhir_stack)
        | MOINS ->
            _menhir_run57 _menhir_env (Obj.magic _menhir_stack)
        | NE ->
            _menhir_run39 _menhir_env (Obj.magic _menhir_stack)
        | OR ->
            _menhir_run35 _menhir_env (Obj.magic _menhir_stack)
        | PLUS ->
            _menhir_run33 _menhir_env (Obj.magic _menhir_stack)
        | RPAR ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv289 * _menhir_state) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv287 * _menhir_state) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
            ((let ((_menhir_stack, _menhir_s), _, (e : 'tv_expr)) = _menhir_stack in
            let _3 = () in
            let _1 = () in
            let _v : 'tv_expr = 
# 103 "minicparser.mly"
                   ( e )
# 1859 "minicparser.ml"
             in
            _menhir_goto_expr _menhir_env _menhir_stack _menhir_s _v) : 'freshtv288)) : 'freshtv290)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv291 * _menhir_state) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv292)) : 'freshtv294)
    | MenhirState23 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv297 * _menhir_state) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv295 * _menhir_state) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
        ((let ((_menhir_stack, _menhir_s), _, (e : 'tv_expr)) = _menhir_stack in
        let _1 = () in
        let _v : 'tv_expr = 
# 102 "minicparser.mly"
             (Not(e))
# 1879 "minicparser.ml"
         in
        _menhir_goto_expr _menhir_env _menhir_stack _menhir_s _v) : 'freshtv296)) : 'freshtv298)
    | MenhirState22 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv307 * _menhir_state)) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | AND ->
            _menhir_run37 _menhir_env (Obj.magic _menhir_stack)
        | DIV ->
            _menhir_run55 _menhir_env (Obj.magic _menhir_stack)
        | EQ ->
            _menhir_run51 _menhir_env (Obj.magic _menhir_stack)
        | FOIS ->
            _menhir_run53 _menhir_env (Obj.magic _menhir_stack)
        | GE ->
            _menhir_run49 _menhir_env (Obj.magic _menhir_stack)
        | GT ->
            _menhir_run47 _menhir_env (Obj.magic _menhir_stack)
        | LE ->
            _menhir_run45 _menhir_env (Obj.magic _menhir_stack)
        | LT ->
            _menhir_run43 _menhir_env (Obj.magic _menhir_stack)
        | MOD ->
            _menhir_run41 _menhir_env (Obj.magic _menhir_stack)
        | MOINS ->
            _menhir_run57 _menhir_env (Obj.magic _menhir_stack)
        | NE ->
            _menhir_run39 _menhir_env (Obj.magic _menhir_stack)
        | OR ->
            _menhir_run35 _menhir_env (Obj.magic _menhir_stack)
        | PLUS ->
            _menhir_run33 _menhir_env (Obj.magic _menhir_stack)
        | RPAR ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv303 * _menhir_state)) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | LACC ->
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : ((('freshtv299 * _menhir_state)) * _menhir_state * 'tv_expr)) = Obj.magic _menhir_stack in
                ((let _menhir_env = _menhir_discard _menhir_env in
                let _tok = _menhir_env._menhir_token in
                match _tok with
                | FOR ->
                    _menhir_run84 _menhir_env (Obj.magic _menhir_stack) MenhirState66
                | IDENT _v ->
                    _menhir_run78 _menhir_env (Obj.magic _menhir_stack) MenhirState66 _v
                | IF ->
                    _menhir_run73 _menhir_env (Obj.magic _menhir_stack) MenhirState66
                | PUTCHAR ->
                    _menhir_run69 _menhir_env (Obj.magic _menhir_stack) MenhirState66
                | RETURN ->
                    _menhir_run67 _menhir_env (Obj.magic _menhir_stack) MenhirState66
                | WHILE ->
                    _menhir_run21 _menhir_env (Obj.magic _menhir_stack) MenhirState66
                | RACC ->
                    _menhir_reduce28 _menhir_env (Obj.magic _menhir_stack) MenhirState66
                | _ ->
                    assert (not _menhir_env._menhir_error);
                    _menhir_env._menhir_error <- true;
                    _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState66) : 'freshtv300)
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : ((('freshtv301 * _menhir_state)) * _menhir_state * 'tv_expr)) = Obj.magic _menhir_stack in
                ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv302)) : 'freshtv304)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv305 * _menhir_state)) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv306)) : 'freshtv308)
    | MenhirState67 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv313 * _menhir_state) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | AND ->
            _menhir_run37 _menhir_env (Obj.magic _menhir_stack)
        | DIV ->
            _menhir_run55 _menhir_env (Obj.magic _menhir_stack)
        | EQ ->
            _menhir_run51 _menhir_env (Obj.magic _menhir_stack)
        | FOIS ->
            _menhir_run53 _menhir_env (Obj.magic _menhir_stack)
        | GE ->
            _menhir_run49 _menhir_env (Obj.magic _menhir_stack)
        | GT ->
            _menhir_run47 _menhir_env (Obj.magic _menhir_stack)
        | LE ->
            _menhir_run45 _menhir_env (Obj.magic _menhir_stack)
        | LT ->
            _menhir_run43 _menhir_env (Obj.magic _menhir_stack)
        | MOD ->
            _menhir_run41 _menhir_env (Obj.magic _menhir_stack)
        | MOINS ->
            _menhir_run57 _menhir_env (Obj.magic _menhir_stack)
        | NE ->
            _menhir_run39 _menhir_env (Obj.magic _menhir_stack)
        | OR ->
            _menhir_run35 _menhir_env (Obj.magic _menhir_stack)
        | PLUS ->
            _menhir_run33 _menhir_env (Obj.magic _menhir_stack)
        | RPAR | SEMI ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv309 * _menhir_state) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
            ((let ((_menhir_stack, _menhir_s), _, (e : 'tv_expr)) = _menhir_stack in
            let _1 = () in
            let _v : (
# 23 "minicparser.mly"
      (Minic.instr)
# 1998 "minicparser.ml"
            ) = 
# 66 "minicparser.mly"
                 (Return(e))
# 2002 "minicparser.ml"
             in
            _menhir_goto_simple_instr _menhir_env _menhir_stack _menhir_s _v) : 'freshtv310)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv311 * _menhir_state) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv312)) : 'freshtv314)
    | MenhirState70 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv321 * _menhir_state)) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | AND ->
            _menhir_run37 _menhir_env (Obj.magic _menhir_stack)
        | DIV ->
            _menhir_run55 _menhir_env (Obj.magic _menhir_stack)
        | EQ ->
            _menhir_run51 _menhir_env (Obj.magic _menhir_stack)
        | FOIS ->
            _menhir_run53 _menhir_env (Obj.magic _menhir_stack)
        | GE ->
            _menhir_run49 _menhir_env (Obj.magic _menhir_stack)
        | GT ->
            _menhir_run47 _menhir_env (Obj.magic _menhir_stack)
        | LE ->
            _menhir_run45 _menhir_env (Obj.magic _menhir_stack)
        | LT ->
            _menhir_run43 _menhir_env (Obj.magic _menhir_stack)
        | MOD ->
            _menhir_run41 _menhir_env (Obj.magic _menhir_stack)
        | MOINS ->
            _menhir_run57 _menhir_env (Obj.magic _menhir_stack)
        | NE ->
            _menhir_run39 _menhir_env (Obj.magic _menhir_stack)
        | OR ->
            _menhir_run35 _menhir_env (Obj.magic _menhir_stack)
        | PLUS ->
            _menhir_run33 _menhir_env (Obj.magic _menhir_stack)
        | RPAR ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv317 * _menhir_state)) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv315 * _menhir_state)) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
            ((let ((_menhir_stack, _menhir_s), _, (e : 'tv_expr)) = _menhir_stack in
            let _4 = () in
            let _2 = () in
            let _1 = () in
            let _v : (
# 23 "minicparser.mly"
      (Minic.instr)
# 2057 "minicparser.ml"
            ) = 
# 64 "minicparser.mly"
                           (Putchar(e))
# 2061 "minicparser.ml"
             in
            _menhir_goto_simple_instr _menhir_env _menhir_stack _menhir_s _v) : 'freshtv316)) : 'freshtv318)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv319 * _menhir_state)) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv320)) : 'freshtv322)
    | MenhirState74 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv331 * _menhir_state)) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | AND ->
            _menhir_run37 _menhir_env (Obj.magic _menhir_stack)
        | DIV ->
            _menhir_run55 _menhir_env (Obj.magic _menhir_stack)
        | EQ ->
            _menhir_run51 _menhir_env (Obj.magic _menhir_stack)
        | FOIS ->
            _menhir_run53 _menhir_env (Obj.magic _menhir_stack)
        | GE ->
            _menhir_run49 _menhir_env (Obj.magic _menhir_stack)
        | GT ->
            _menhir_run47 _menhir_env (Obj.magic _menhir_stack)
        | LE ->
            _menhir_run45 _menhir_env (Obj.magic _menhir_stack)
        | LT ->
            _menhir_run43 _menhir_env (Obj.magic _menhir_stack)
        | MOD ->
            _menhir_run41 _menhir_env (Obj.magic _menhir_stack)
        | MOINS ->
            _menhir_run57 _menhir_env (Obj.magic _menhir_stack)
        | NE ->
            _menhir_run39 _menhir_env (Obj.magic _menhir_stack)
        | OR ->
            _menhir_run35 _menhir_env (Obj.magic _menhir_stack)
        | PLUS ->
            _menhir_run33 _menhir_env (Obj.magic _menhir_stack)
        | RPAR ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv327 * _menhir_state)) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | LACC ->
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : ((('freshtv323 * _menhir_state)) * _menhir_state * 'tv_expr)) = Obj.magic _menhir_stack in
                ((let _menhir_env = _menhir_discard _menhir_env in
                let _tok = _menhir_env._menhir_token in
                match _tok with
                | FOR ->
                    _menhir_run84 _menhir_env (Obj.magic _menhir_stack) MenhirState77
                | IDENT _v ->
                    _menhir_run78 _menhir_env (Obj.magic _menhir_stack) MenhirState77 _v
                | IF ->
                    _menhir_run73 _menhir_env (Obj.magic _menhir_stack) MenhirState77
                | PUTCHAR ->
                    _menhir_run69 _menhir_env (Obj.magic _menhir_stack) MenhirState77
                | RETURN ->
                    _menhir_run67 _menhir_env (Obj.magic _menhir_stack) MenhirState77
                | WHILE ->
                    _menhir_run21 _menhir_env (Obj.magic _menhir_stack) MenhirState77
                | RACC ->
                    _menhir_reduce28 _menhir_env (Obj.magic _menhir_stack) MenhirState77
                | _ ->
                    assert (not _menhir_env._menhir_error);
                    _menhir_env._menhir_error <- true;
                    _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState77) : 'freshtv324)
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : ((('freshtv325 * _menhir_state)) * _menhir_state * 'tv_expr)) = Obj.magic _menhir_stack in
                ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv326)) : 'freshtv328)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv329 * _menhir_state)) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv330)) : 'freshtv332)
    | MenhirState82 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv337 * _menhir_state * (
# 9 "minicparser.mly"
       (string)
# 2152 "minicparser.ml"
        ))) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | AND ->
            _menhir_run37 _menhir_env (Obj.magic _menhir_stack)
        | DIV ->
            _menhir_run55 _menhir_env (Obj.magic _menhir_stack)
        | EQ ->
            _menhir_run51 _menhir_env (Obj.magic _menhir_stack)
        | FOIS ->
            _menhir_run53 _menhir_env (Obj.magic _menhir_stack)
        | GE ->
            _menhir_run49 _menhir_env (Obj.magic _menhir_stack)
        | GT ->
            _menhir_run47 _menhir_env (Obj.magic _menhir_stack)
        | LE ->
            _menhir_run45 _menhir_env (Obj.magic _menhir_stack)
        | LT ->
            _menhir_run43 _menhir_env (Obj.magic _menhir_stack)
        | MOD ->
            _menhir_run41 _menhir_env (Obj.magic _menhir_stack)
        | MOINS ->
            _menhir_run57 _menhir_env (Obj.magic _menhir_stack)
        | NE ->
            _menhir_run39 _menhir_env (Obj.magic _menhir_stack)
        | OR ->
            _menhir_run35 _menhir_env (Obj.magic _menhir_stack)
        | PLUS ->
            _menhir_run33 _menhir_env (Obj.magic _menhir_stack)
        | RPAR | SEMI ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv333 * _menhir_state * (
# 9 "minicparser.mly"
       (string)
# 2188 "minicparser.ml"
            ))) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
            ((let ((_menhir_stack, _menhir_s, (x : (
# 9 "minicparser.mly"
       (string)
# 2193 "minicparser.ml"
            ))), _, (e : 'tv_expr)) = _menhir_stack in
            let _2 = () in
            let _v : (
# 23 "minicparser.mly"
      (Minic.instr)
# 2199 "minicparser.ml"
            ) = 
# 65 "minicparser.mly"
                      (Set(x,e))
# 2203 "minicparser.ml"
             in
            _menhir_goto_simple_instr _menhir_env _menhir_stack _menhir_s _v) : 'freshtv334)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv335 * _menhir_state * (
# 9 "minicparser.mly"
       (string)
# 2213 "minicparser.ml"
            ))) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv336)) : 'freshtv338)
    | MenhirState87 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (((('freshtv343 * _menhir_state)) * _menhir_state * (
# 25 "minicparser.mly"
      (string * Minic.typ * Minic.expr option)
# 2222 "minicparser.ml"
        ))) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | AND ->
            _menhir_run37 _menhir_env (Obj.magic _menhir_stack)
        | DIV ->
            _menhir_run55 _menhir_env (Obj.magic _menhir_stack)
        | EQ ->
            _menhir_run51 _menhir_env (Obj.magic _menhir_stack)
        | FOIS ->
            _menhir_run53 _menhir_env (Obj.magic _menhir_stack)
        | GE ->
            _menhir_run49 _menhir_env (Obj.magic _menhir_stack)
        | GT ->
            _menhir_run47 _menhir_env (Obj.magic _menhir_stack)
        | LE ->
            _menhir_run45 _menhir_env (Obj.magic _menhir_stack)
        | LT ->
            _menhir_run43 _menhir_env (Obj.magic _menhir_stack)
        | MOD ->
            _menhir_run41 _menhir_env (Obj.magic _menhir_stack)
        | MOINS ->
            _menhir_run57 _menhir_env (Obj.magic _menhir_stack)
        | NE ->
            _menhir_run39 _menhir_env (Obj.magic _menhir_stack)
        | OR ->
            _menhir_run35 _menhir_env (Obj.magic _menhir_stack)
        | PLUS ->
            _menhir_run33 _menhir_env (Obj.magic _menhir_stack)
        | SEMI ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (((('freshtv339 * _menhir_state)) * _menhir_state * (
# 25 "minicparser.mly"
      (string * Minic.typ * Minic.expr option)
# 2258 "minicparser.ml"
            ))) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | IDENT _v ->
                _menhir_run78 _menhir_env (Obj.magic _menhir_stack) MenhirState89 _v
            | PUTCHAR ->
                _menhir_run69 _menhir_env (Obj.magic _menhir_stack) MenhirState89
            | RETURN ->
                _menhir_run67 _menhir_env (Obj.magic _menhir_stack) MenhirState89
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState89) : 'freshtv340)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (((('freshtv341 * _menhir_state)) * _menhir_state * (
# 25 "minicparser.mly"
      (string * Minic.typ * Minic.expr option)
# 2280 "minicparser.ml"
            ))) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv342)) : 'freshtv344)
    | MenhirState102 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((('freshtv349 * _menhir_state * (
# 22 "minicparser.mly"
      (Minic.typ)
# 2289 "minicparser.ml"
        )) * (
# 9 "minicparser.mly"
       (string)
# 2293 "minicparser.ml"
        ))) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | AND ->
            _menhir_run37 _menhir_env (Obj.magic _menhir_stack)
        | DIV ->
            _menhir_run55 _menhir_env (Obj.magic _menhir_stack)
        | EQ ->
            _menhir_run51 _menhir_env (Obj.magic _menhir_stack)
        | FOIS ->
            _menhir_run53 _menhir_env (Obj.magic _menhir_stack)
        | GE ->
            _menhir_run49 _menhir_env (Obj.magic _menhir_stack)
        | GT ->
            _menhir_run47 _menhir_env (Obj.magic _menhir_stack)
        | LE ->
            _menhir_run45 _menhir_env (Obj.magic _menhir_stack)
        | LT ->
            _menhir_run43 _menhir_env (Obj.magic _menhir_stack)
        | MOD ->
            _menhir_run41 _menhir_env (Obj.magic _menhir_stack)
        | MOINS ->
            _menhir_run57 _menhir_env (Obj.magic _menhir_stack)
        | NE ->
            _menhir_run39 _menhir_env (Obj.magic _menhir_stack)
        | OR ->
            _menhir_run35 _menhir_env (Obj.magic _menhir_stack)
        | PLUS ->
            _menhir_run33 _menhir_env (Obj.magic _menhir_stack)
        | SEMI ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ((('freshtv345 * _menhir_state * (
# 22 "minicparser.mly"
      (Minic.typ)
# 2329 "minicparser.ml"
            )) * (
# 9 "minicparser.mly"
       (string)
# 2333 "minicparser.ml"
            ))) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
            ((let (((_menhir_stack, _menhir_s, (t : (
# 22 "minicparser.mly"
      (Minic.typ)
# 2338 "minicparser.ml"
            ))), (x : (
# 9 "minicparser.mly"
       (string)
# 2342 "minicparser.ml"
            ))), _, (n : 'tv_expr)) = _menhir_stack in
            let _3 = () in
            let _v : (
# 25 "minicparser.mly"
      (string * Minic.typ * Minic.expr option)
# 2348 "minicparser.ml"
            ) = 
# 41 "minicparser.mly"
                            ((x,t,Some n))
# 2352 "minicparser.ml"
             in
            _menhir_goto_var_decl _menhir_env _menhir_stack _menhir_s _v) : 'freshtv346)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ((('freshtv347 * _menhir_state * (
# 22 "minicparser.mly"
      (Minic.typ)
# 2362 "minicparser.ml"
            )) * (
# 9 "minicparser.mly"
       (string)
# 2366 "minicparser.ml"
            ))) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv348)) : 'freshtv350)
    | _ ->
        _menhir_fail ()

and _menhir_goto_params : _menhir_env -> 'ttv_tail -> _menhir_state -> 'tv_params -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv201 * _menhir_state * 'tv_params) = Obj.magic _menhir_stack in
    ((assert (not _menhir_env._menhir_error);
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | COMMA ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv195 * _menhir_state * 'tv_params) = Obj.magic _menhir_stack in
        ((let _menhir_env = _menhir_discard _menhir_env in
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | BOOL ->
            _menhir_run11 _menhir_env (Obj.magic _menhir_stack) MenhirState15
        | INT ->
            _menhir_run9 _menhir_env (Obj.magic _menhir_stack) MenhirState15
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState15) : 'freshtv196)
    | RPAR ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv197 * _menhir_state * 'tv_params) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, (x : 'tv_params)) = _menhir_stack in
        let _v : 'tv_separated_nonempty_list_COMMA_params_ = 
# 241 "<standard.mly>"
    ( [ x ] )
# 2402 "minicparser.ml"
         in
        _menhir_goto_separated_nonempty_list_COMMA_params_ _menhir_env _menhir_stack _menhir_s _v) : 'freshtv198)
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv199 * _menhir_state * 'tv_params) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv200)) : 'freshtv202)

and _menhir_reduce28 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _v : 'tv_list_instr_ = 
# 211 "<standard.mly>"
    ( [] )
# 2418 "minicparser.ml"
     in
    _menhir_goto_list_instr_ _menhir_env _menhir_stack _menhir_s _v

and _menhir_run21 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | LPAR ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv191 * _menhir_state) = Obj.magic _menhir_stack in
        ((let _menhir_env = _menhir_discard _menhir_env in
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | CST _v ->
            _menhir_run28 _menhir_env (Obj.magic _menhir_stack) MenhirState22 _v
        | CST_B _v ->
            _menhir_run27 _menhir_env (Obj.magic _menhir_stack) MenhirState22 _v
        | IDENT _v ->
            _menhir_run25 _menhir_env (Obj.magic _menhir_stack) MenhirState22 _v
        | LPAR ->
            _menhir_run24 _menhir_env (Obj.magic _menhir_stack) MenhirState22
        | NOT ->
            _menhir_run23 _menhir_env (Obj.magic _menhir_stack) MenhirState22
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState22) : 'freshtv192)
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv193 * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv194)

and _menhir_run67 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | CST _v ->
        _menhir_run28 _menhir_env (Obj.magic _menhir_stack) MenhirState67 _v
    | CST_B _v ->
        _menhir_run27 _menhir_env (Obj.magic _menhir_stack) MenhirState67 _v
    | IDENT _v ->
        _menhir_run25 _menhir_env (Obj.magic _menhir_stack) MenhirState67 _v
    | LPAR ->
        _menhir_run24 _menhir_env (Obj.magic _menhir_stack) MenhirState67
    | NOT ->
        _menhir_run23 _menhir_env (Obj.magic _menhir_stack) MenhirState67
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState67

and _menhir_run69 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | LPAR ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv187 * _menhir_state) = Obj.magic _menhir_stack in
        ((let _menhir_env = _menhir_discard _menhir_env in
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | CST _v ->
            _menhir_run28 _menhir_env (Obj.magic _menhir_stack) MenhirState70 _v
        | CST_B _v ->
            _menhir_run27 _menhir_env (Obj.magic _menhir_stack) MenhirState70 _v
        | IDENT _v ->
            _menhir_run25 _menhir_env (Obj.magic _menhir_stack) MenhirState70 _v
        | LPAR ->
            _menhir_run24 _menhir_env (Obj.magic _menhir_stack) MenhirState70
        | NOT ->
            _menhir_run23 _menhir_env (Obj.magic _menhir_stack) MenhirState70
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState70) : 'freshtv188)
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv189 * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv190)

and _menhir_run73 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | LPAR ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv183 * _menhir_state) = Obj.magic _menhir_stack in
        ((let _menhir_env = _menhir_discard _menhir_env in
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | CST _v ->
            _menhir_run28 _menhir_env (Obj.magic _menhir_stack) MenhirState74 _v
        | CST_B _v ->
            _menhir_run27 _menhir_env (Obj.magic _menhir_stack) MenhirState74 _v
        | IDENT _v ->
            _menhir_run25 _menhir_env (Obj.magic _menhir_stack) MenhirState74 _v
        | LPAR ->
            _menhir_run24 _menhir_env (Obj.magic _menhir_stack) MenhirState74
        | NOT ->
            _menhir_run23 _menhir_env (Obj.magic _menhir_stack) MenhirState74
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState74) : 'freshtv184)
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv185 * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv186)

and _menhir_run78 : _menhir_env -> 'ttv_tail -> _menhir_state -> (
# 9 "minicparser.mly"
       (string)
# 2548 "minicparser.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | EGAL ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv177 * _menhir_state * (
# 9 "minicparser.mly"
       (string)
# 2560 "minicparser.ml"
        )) = Obj.magic _menhir_stack in
        ((let _menhir_env = _menhir_discard _menhir_env in
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | CST _v ->
            _menhir_run28 _menhir_env (Obj.magic _menhir_stack) MenhirState82 _v
        | CST_B _v ->
            _menhir_run27 _menhir_env (Obj.magic _menhir_stack) MenhirState82 _v
        | IDENT _v ->
            _menhir_run25 _menhir_env (Obj.magic _menhir_stack) MenhirState82 _v
        | LPAR ->
            _menhir_run24 _menhir_env (Obj.magic _menhir_stack) MenhirState82
        | NOT ->
            _menhir_run23 _menhir_env (Obj.magic _menhir_stack) MenhirState82
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState82) : 'freshtv178)
    | LPAR ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv179 * _menhir_state * (
# 9 "minicparser.mly"
       (string)
# 2584 "minicparser.ml"
        )) = Obj.magic _menhir_stack in
        ((let _menhir_env = _menhir_discard _menhir_env in
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | CST _v ->
            _menhir_run28 _menhir_env (Obj.magic _menhir_stack) MenhirState79 _v
        | CST_B _v ->
            _menhir_run27 _menhir_env (Obj.magic _menhir_stack) MenhirState79 _v
        | IDENT _v ->
            _menhir_run25 _menhir_env (Obj.magic _menhir_stack) MenhirState79 _v
        | LPAR ->
            _menhir_run24 _menhir_env (Obj.magic _menhir_stack) MenhirState79
        | NOT ->
            _menhir_run23 _menhir_env (Obj.magic _menhir_stack) MenhirState79
        | RPAR ->
            _menhir_reduce30 _menhir_env (Obj.magic _menhir_stack) MenhirState79
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState79) : 'freshtv180)
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv181 * _menhir_state * (
# 9 "minicparser.mly"
       (string)
# 2612 "minicparser.ml"
        )) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv182)

and _menhir_run84 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | LPAR ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv173 * _menhir_state) = Obj.magic _menhir_stack in
        ((let _menhir_env = _menhir_discard _menhir_env in
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | BOOL ->
            _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState85
        | INT ->
            _menhir_run2 _menhir_env (Obj.magic _menhir_stack) MenhirState85
        | VOID ->
            _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState85
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState85) : 'freshtv174)
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv175 * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv176)

and _menhir_fail : unit -> 'a =
  fun () ->
    Printf.fprintf stderr "Internal failure -- please contact the parser generator's developers.\n%!";
    assert false

and _menhir_goto_var_decl : _menhir_env -> 'ttv_tail -> _menhir_state -> (
# 25 "minicparser.mly"
      (string * Minic.typ * Minic.expr option)
# 2655 "minicparser.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    match _menhir_s with
    | MenhirState85 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv165 * _menhir_state)) * _menhir_state * (
# 25 "minicparser.mly"
      (string * Minic.typ * Minic.expr option)
# 2665 "minicparser.ml"
        )) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | SEMI ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv161 * _menhir_state)) * _menhir_state * (
# 25 "minicparser.mly"
      (string * Minic.typ * Minic.expr option)
# 2675 "minicparser.ml"
            )) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | CST _v ->
                _menhir_run28 _menhir_env (Obj.magic _menhir_stack) MenhirState87 _v
            | CST_B _v ->
                _menhir_run27 _menhir_env (Obj.magic _menhir_stack) MenhirState87 _v
            | IDENT _v ->
                _menhir_run25 _menhir_env (Obj.magic _menhir_stack) MenhirState87 _v
            | LPAR ->
                _menhir_run24 _menhir_env (Obj.magic _menhir_stack) MenhirState87
            | NOT ->
                _menhir_run23 _menhir_env (Obj.magic _menhir_stack) MenhirState87
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState87) : 'freshtv162)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv163 * _menhir_state)) * _menhir_state * (
# 25 "minicparser.mly"
      (string * Minic.typ * Minic.expr option)
# 2701 "minicparser.ml"
            )) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv164)) : 'freshtv166)
    | MenhirState0 | MenhirState115 | MenhirState19 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv171 * _menhir_state * (
# 25 "minicparser.mly"
      (string * Minic.typ * Minic.expr option)
# 2710 "minicparser.ml"
        )) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | SEMI ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv167 * _menhir_state * (
# 25 "minicparser.mly"
      (string * Minic.typ * Minic.expr option)
# 2720 "minicparser.ml"
            )) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | BOOL ->
                _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState115
            | INT ->
                _menhir_run2 _menhir_env (Obj.magic _menhir_stack) MenhirState115
            | VOID ->
                _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState115
            | END | FOR | IDENT _ | IF | PUTCHAR | RACC | RETURN | WHILE ->
                _menhir_reduce51 _menhir_env (Obj.magic _menhir_stack) MenhirState115
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState115) : 'freshtv168)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv169 * _menhir_state * (
# 25 "minicparser.mly"
      (string * Minic.typ * Minic.expr option)
# 2744 "minicparser.ml"
            )) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv170)) : 'freshtv172)
    | _ ->
        _menhir_fail ()

and _menhir_run23 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | CST _v ->
        _menhir_run28 _menhir_env (Obj.magic _menhir_stack) MenhirState23 _v
    | CST_B _v ->
        _menhir_run27 _menhir_env (Obj.magic _menhir_stack) MenhirState23 _v
    | IDENT _v ->
        _menhir_run25 _menhir_env (Obj.magic _menhir_stack) MenhirState23 _v
    | LPAR ->
        _menhir_run24 _menhir_env (Obj.magic _menhir_stack) MenhirState23
    | NOT ->
        _menhir_run23 _menhir_env (Obj.magic _menhir_stack) MenhirState23
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState23

and _menhir_run24 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | CST _v ->
        _menhir_run28 _menhir_env (Obj.magic _menhir_stack) MenhirState24 _v
    | CST_B _v ->
        _menhir_run27 _menhir_env (Obj.magic _menhir_stack) MenhirState24 _v
    | IDENT _v ->
        _menhir_run25 _menhir_env (Obj.magic _menhir_stack) MenhirState24 _v
    | LPAR ->
        _menhir_run24 _menhir_env (Obj.magic _menhir_stack) MenhirState24
    | NOT ->
        _menhir_run23 _menhir_env (Obj.magic _menhir_stack) MenhirState24
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState24

and _menhir_run25 : _menhir_env -> 'ttv_tail -> _menhir_state -> (
# 9 "minicparser.mly"
       (string)
# 2796 "minicparser.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | LPAR ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv155 * _menhir_state * (
# 9 "minicparser.mly"
       (string)
# 2808 "minicparser.ml"
        )) = Obj.magic _menhir_stack in
        ((let _menhir_env = _menhir_discard _menhir_env in
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | CST _v ->
            _menhir_run28 _menhir_env (Obj.magic _menhir_stack) MenhirState26 _v
        | CST_B _v ->
            _menhir_run27 _menhir_env (Obj.magic _menhir_stack) MenhirState26 _v
        | IDENT _v ->
            _menhir_run25 _menhir_env (Obj.magic _menhir_stack) MenhirState26 _v
        | LPAR ->
            _menhir_run24 _menhir_env (Obj.magic _menhir_stack) MenhirState26
        | NOT ->
            _menhir_run23 _menhir_env (Obj.magic _menhir_stack) MenhirState26
        | RPAR ->
            _menhir_reduce30 _menhir_env (Obj.magic _menhir_stack) MenhirState26
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState26) : 'freshtv156)
    | AND | COMMA | DIV | EQ | FOIS | GE | GT | LE | LT | MOD | MOINS | NE | OR | PLUS | RPAR | SEMI ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv157 * _menhir_state * (
# 9 "minicparser.mly"
       (string)
# 2834 "minicparser.ml"
        )) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, (x : (
# 9 "minicparser.mly"
       (string)
# 2839 "minicparser.ml"
        ))) = _menhir_stack in
        let _v : 'tv_expr = 
# 88 "minicparser.mly"
          ( Get(x) )
# 2844 "minicparser.ml"
         in
        _menhir_goto_expr _menhir_env _menhir_stack _menhir_s _v) : 'freshtv158)
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv159 * _menhir_state * (
# 9 "minicparser.mly"
       (string)
# 2854 "minicparser.ml"
        )) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv160)

and _menhir_run27 : _menhir_env -> 'ttv_tail -> _menhir_state -> (
# 8 "minicparser.mly"
       (bool)
# 2862 "minicparser.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_env = _menhir_discard _menhir_env in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv153) = Obj.magic _menhir_stack in
    let (_menhir_s : _menhir_state) = _menhir_s in
    let ((b : (
# 8 "minicparser.mly"
       (bool)
# 2872 "minicparser.ml"
    )) : (
# 8 "minicparser.mly"
       (bool)
# 2876 "minicparser.ml"
    )) = _v in
    ((let _v : 'tv_expr = 
# 87 "minicparser.mly"
          ( Cst_b(b) )
# 2881 "minicparser.ml"
     in
    _menhir_goto_expr _menhir_env _menhir_stack _menhir_s _v) : 'freshtv154)

and _menhir_run28 : _menhir_env -> 'ttv_tail -> _menhir_state -> (
# 7 "minicparser.mly"
       (int)
# 2888 "minicparser.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_env = _menhir_discard _menhir_env in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv151) = Obj.magic _menhir_stack in
    let (_menhir_s : _menhir_state) = _menhir_s in
    let ((n : (
# 7 "minicparser.mly"
       (int)
# 2898 "minicparser.ml"
    )) : (
# 7 "minicparser.mly"
       (int)
# 2902 "minicparser.ml"
    )) = _v in
    ((let _v : 'tv_expr = 
# 86 "minicparser.mly"
        ( Cst(n) )
# 2907 "minicparser.ml"
     in
    _menhir_goto_expr _menhir_env _menhir_stack _menhir_s _v) : 'freshtv152)

and _menhir_goto_loption_separated_nonempty_list_COMMA_params__ : _menhir_env -> 'ttv_tail -> _menhir_state -> 'tv_loption_separated_nonempty_list_COMMA_params__ -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : ((('freshtv149 * _menhir_state * (
# 22 "minicparser.mly"
      (Minic.typ)
# 2918 "minicparser.ml"
    )) * (
# 9 "minicparser.mly"
       (string)
# 2922 "minicparser.ml"
    ))) * _menhir_state * 'tv_loption_separated_nonempty_list_COMMA_params__) = Obj.magic _menhir_stack in
    ((assert (not _menhir_env._menhir_error);
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | RPAR ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((('freshtv145 * _menhir_state * (
# 22 "minicparser.mly"
      (Minic.typ)
# 2932 "minicparser.ml"
        )) * (
# 9 "minicparser.mly"
       (string)
# 2936 "minicparser.ml"
        ))) * _menhir_state * 'tv_loption_separated_nonempty_list_COMMA_params__) = Obj.magic _menhir_stack in
        ((let _menhir_env = _menhir_discard _menhir_env in
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | LACC ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (((('freshtv141 * _menhir_state * (
# 22 "minicparser.mly"
      (Minic.typ)
# 2946 "minicparser.ml"
            )) * (
# 9 "minicparser.mly"
       (string)
# 2950 "minicparser.ml"
            ))) * _menhir_state * 'tv_loption_separated_nonempty_list_COMMA_params__)) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | BOOL ->
                _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState19
            | INT ->
                _menhir_run2 _menhir_env (Obj.magic _menhir_stack) MenhirState19
            | VOID ->
                _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState19
            | FOR | IDENT _ | IF | PUTCHAR | RACC | RETURN | WHILE ->
                _menhir_reduce51 _menhir_env (Obj.magic _menhir_stack) MenhirState19
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState19) : 'freshtv142)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (((('freshtv143 * _menhir_state * (
# 22 "minicparser.mly"
      (Minic.typ)
# 2974 "minicparser.ml"
            )) * (
# 9 "minicparser.mly"
       (string)
# 2978 "minicparser.ml"
            ))) * _menhir_state * 'tv_loption_separated_nonempty_list_COMMA_params__)) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv144)) : 'freshtv146)
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((('freshtv147 * _menhir_state * (
# 22 "minicparser.mly"
      (Minic.typ)
# 2989 "minicparser.ml"
        )) * (
# 9 "minicparser.mly"
       (string)
# 2993 "minicparser.ml"
        ))) * _menhir_state * 'tv_loption_separated_nonempty_list_COMMA_params__) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv148)) : 'freshtv150)

and _menhir_run9 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | IDENT _v ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv137 * _menhir_state) = Obj.magic _menhir_stack in
        let (_v : (
# 9 "minicparser.mly"
       (string)
# 3010 "minicparser.ml"
        )) = _v in
        ((let _menhir_env = _menhir_discard _menhir_env in
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv135 * _menhir_state) = Obj.magic _menhir_stack in
        let ((x : (
# 9 "minicparser.mly"
       (string)
# 3018 "minicparser.ml"
        )) : (
# 9 "minicparser.mly"
       (string)
# 3022 "minicparser.ml"
        )) = _v in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        let _1 = () in
        let _v : 'tv_params = 
# 59 "minicparser.mly"
               ((x,Int))
# 3029 "minicparser.ml"
         in
        _menhir_goto_params _menhir_env _menhir_stack _menhir_s _v) : 'freshtv136)) : 'freshtv138)
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv139 * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv140)

and _menhir_run11 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | IDENT _v ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv131 * _menhir_state) = Obj.magic _menhir_stack in
        let (_v : (
# 9 "minicparser.mly"
       (string)
# 3052 "minicparser.ml"
        )) = _v in
        ((let _menhir_env = _menhir_discard _menhir_env in
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv129 * _menhir_state) = Obj.magic _menhir_stack in
        let ((x : (
# 9 "minicparser.mly"
       (string)
# 3060 "minicparser.ml"
        )) : (
# 9 "minicparser.mly"
       (string)
# 3064 "minicparser.ml"
        )) = _v in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        let _1 = () in
        let _v : 'tv_params = 
# 60 "minicparser.mly"
                ((x,Bool))
# 3071 "minicparser.ml"
         in
        _menhir_goto_params _menhir_env _menhir_stack _menhir_s _v) : 'freshtv130)) : 'freshtv132)
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv133 * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv134)

and _menhir_goto_var_decl_list : _menhir_env -> 'ttv_tail -> _menhir_state -> (
# 26 "minicparser.mly"
      ((string * Minic.typ * Minic.expr option) list)
# 3085 "minicparser.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    match _menhir_s with
    | MenhirState0 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv121 * _menhir_state * (
# 26 "minicparser.mly"
      ((string * Minic.typ * Minic.expr option) list)
# 3095 "minicparser.ml"
        )) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | END ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv117 * _menhir_state * (
# 26 "minicparser.mly"
      ((string * Minic.typ * Minic.expr option) list)
# 3105 "minicparser.ml"
            )) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | BOOL ->
                _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState5
            | INT ->
                _menhir_run2 _menhir_env (Obj.magic _menhir_stack) MenhirState5
            | VOID ->
                _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState5
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState5) : 'freshtv118)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv119 * _menhir_state * (
# 26 "minicparser.mly"
      ((string * Minic.typ * Minic.expr option) list)
# 3127 "minicparser.ml"
            )) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv120)) : 'freshtv122)
    | MenhirState19 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (((((('freshtv123 * _menhir_state * (
# 22 "minicparser.mly"
      (Minic.typ)
# 3136 "minicparser.ml"
        )) * (
# 9 "minicparser.mly"
       (string)
# 3140 "minicparser.ml"
        ))) * _menhir_state * 'tv_loption_separated_nonempty_list_COMMA_params__))) * _menhir_state * (
# 26 "minicparser.mly"
      ((string * Minic.typ * Minic.expr option) list)
# 3144 "minicparser.ml"
        )) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | FOR ->
            _menhir_run84 _menhir_env (Obj.magic _menhir_stack) MenhirState20
        | IDENT _v ->
            _menhir_run78 _menhir_env (Obj.magic _menhir_stack) MenhirState20 _v
        | IF ->
            _menhir_run73 _menhir_env (Obj.magic _menhir_stack) MenhirState20
        | PUTCHAR ->
            _menhir_run69 _menhir_env (Obj.magic _menhir_stack) MenhirState20
        | RETURN ->
            _menhir_run67 _menhir_env (Obj.magic _menhir_stack) MenhirState20
        | WHILE ->
            _menhir_run21 _menhir_env (Obj.magic _menhir_stack) MenhirState20
        | RACC ->
            _menhir_reduce28 _menhir_env (Obj.magic _menhir_stack) MenhirState20
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState20) : 'freshtv124)
    | MenhirState115 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv127 * _menhir_state * (
# 25 "minicparser.mly"
      (string * Minic.typ * Minic.expr option)
# 3172 "minicparser.ml"
        ))) * _menhir_state * (
# 26 "minicparser.mly"
      ((string * Minic.typ * Minic.expr option) list)
# 3176 "minicparser.ml"
        )) = Obj.magic _menhir_stack in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv125 * _menhir_state * (
# 25 "minicparser.mly"
      (string * Minic.typ * Minic.expr option)
# 3182 "minicparser.ml"
        ))) * _menhir_state * (
# 26 "minicparser.mly"
      ((string * Minic.typ * Minic.expr option) list)
# 3186 "minicparser.ml"
        )) = Obj.magic _menhir_stack in
        ((let ((_menhir_stack, _menhir_s, (v : (
# 25 "minicparser.mly"
      (string * Minic.typ * Minic.expr option)
# 3191 "minicparser.ml"
        ))), _, (l : (
# 26 "minicparser.mly"
      ((string * Minic.typ * Minic.expr option) list)
# 3195 "minicparser.ml"
        ))) = _menhir_stack in
        let _2 = () in
        let _v : (
# 26 "minicparser.mly"
      ((string * Minic.typ * Minic.expr option) list)
# 3201 "minicparser.ml"
        ) = 
# 46 "minicparser.mly"
                                   (v::l)
# 3205 "minicparser.ml"
         in
        _menhir_goto_var_decl_list _menhir_env _menhir_stack _menhir_s _v) : 'freshtv126)) : 'freshtv128)
    | _ ->
        _menhir_fail ()

and _menhir_goto_typ : _menhir_env -> 'ttv_tail -> _menhir_state -> (
# 22 "minicparser.mly"
      (Minic.typ)
# 3214 "minicparser.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    match _menhir_s with
    | MenhirState117 | MenhirState5 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv99 * _menhir_state * (
# 22 "minicparser.mly"
      (Minic.typ)
# 3224 "minicparser.ml"
        )) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | IDENT _v ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv95 * _menhir_state * (
# 22 "minicparser.mly"
      (Minic.typ)
# 3234 "minicparser.ml"
            )) = Obj.magic _menhir_stack in
            let (_v : (
# 9 "minicparser.mly"
       (string)
# 3239 "minicparser.ml"
            )) = _v in
            ((let _menhir_stack = (_menhir_stack, _v) in
            let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | LPAR ->
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : ('freshtv91 * _menhir_state * (
# 22 "minicparser.mly"
      (Minic.typ)
# 3250 "minicparser.ml"
                )) * (
# 9 "minicparser.mly"
       (string)
# 3254 "minicparser.ml"
                )) = Obj.magic _menhir_stack in
                ((let _menhir_env = _menhir_discard _menhir_env in
                let _tok = _menhir_env._menhir_token in
                match _tok with
                | BOOL ->
                    _menhir_run11 _menhir_env (Obj.magic _menhir_stack) MenhirState8
                | INT ->
                    _menhir_run9 _menhir_env (Obj.magic _menhir_stack) MenhirState8
                | RPAR ->
                    let (_menhir_env : _menhir_env) = _menhir_env in
                    let (_menhir_stack : 'freshtv89) = Obj.magic _menhir_stack in
                    let (_menhir_s : _menhir_state) = MenhirState8 in
                    ((let _v : 'tv_loption_separated_nonempty_list_COMMA_params__ = 
# 142 "<standard.mly>"
    ( [] )
# 3270 "minicparser.ml"
                     in
                    _menhir_goto_loption_separated_nonempty_list_COMMA_params__ _menhir_env _menhir_stack _menhir_s _v) : 'freshtv90)
                | _ ->
                    assert (not _menhir_env._menhir_error);
                    _menhir_env._menhir_error <- true;
                    _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState8) : 'freshtv92)
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : ('freshtv93 * _menhir_state * (
# 22 "minicparser.mly"
      (Minic.typ)
# 3284 "minicparser.ml"
                )) * (
# 9 "minicparser.mly"
       (string)
# 3288 "minicparser.ml"
                )) = Obj.magic _menhir_stack in
                ((let ((_menhir_stack, _menhir_s, _), _) = _menhir_stack in
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv94)) : 'freshtv96)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv97 * _menhir_state * (
# 22 "minicparser.mly"
      (Minic.typ)
# 3299 "minicparser.ml"
            )) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv98)) : 'freshtv100)
    | MenhirState0 | MenhirState19 | MenhirState115 | MenhirState85 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv115 * _menhir_state * (
# 22 "minicparser.mly"
      (Minic.typ)
# 3308 "minicparser.ml"
        )) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | IDENT _v ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv111 * _menhir_state * (
# 22 "minicparser.mly"
      (Minic.typ)
# 3318 "minicparser.ml"
            )) = Obj.magic _menhir_stack in
            let (_v : (
# 9 "minicparser.mly"
       (string)
# 3323 "minicparser.ml"
            )) = _v in
            ((let _menhir_stack = (_menhir_stack, _v) in
            let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | EGAL ->
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : ('freshtv101 * _menhir_state * (
# 22 "minicparser.mly"
      (Minic.typ)
# 3334 "minicparser.ml"
                )) * (
# 9 "minicparser.mly"
       (string)
# 3338 "minicparser.ml"
                )) = Obj.magic _menhir_stack in
                ((let _menhir_env = _menhir_discard _menhir_env in
                let _tok = _menhir_env._menhir_token in
                match _tok with
                | CST _v ->
                    _menhir_run28 _menhir_env (Obj.magic _menhir_stack) MenhirState102 _v
                | CST_B _v ->
                    _menhir_run27 _menhir_env (Obj.magic _menhir_stack) MenhirState102 _v
                | IDENT _v ->
                    _menhir_run25 _menhir_env (Obj.magic _menhir_stack) MenhirState102 _v
                | LPAR ->
                    _menhir_run24 _menhir_env (Obj.magic _menhir_stack) MenhirState102
                | NOT ->
                    _menhir_run23 _menhir_env (Obj.magic _menhir_stack) MenhirState102
                | _ ->
                    assert (not _menhir_env._menhir_error);
                    _menhir_env._menhir_error <- true;
                    _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState102) : 'freshtv102)
            | TAB ->
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : ('freshtv105 * _menhir_state * (
# 22 "minicparser.mly"
      (Minic.typ)
# 3362 "minicparser.ml"
                )) * (
# 9 "minicparser.mly"
       (string)
# 3366 "minicparser.ml"
                )) = Obj.magic _menhir_stack in
                ((let _menhir_env = _menhir_discard _menhir_env in
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : ('freshtv103 * _menhir_state * (
# 22 "minicparser.mly"
      (Minic.typ)
# 3373 "minicparser.ml"
                )) * (
# 9 "minicparser.mly"
       (string)
# 3377 "minicparser.ml"
                )) = Obj.magic _menhir_stack in
                ((let ((_menhir_stack, _menhir_s, (t : (
# 22 "minicparser.mly"
      (Minic.typ)
# 3382 "minicparser.ml"
                ))), (x : (
# 9 "minicparser.mly"
       (string)
# 3386 "minicparser.ml"
                ))) = _menhir_stack in
                let _3 = () in
                let _v : (
# 25 "minicparser.mly"
      (string * Minic.typ * Minic.expr option)
# 3392 "minicparser.ml"
                ) = 
# 40 "minicparser.mly"
                    ()
# 3396 "minicparser.ml"
                 in
                _menhir_goto_var_decl _menhir_env _menhir_stack _menhir_s _v) : 'freshtv104)) : 'freshtv106)
            | SEMI ->
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : ('freshtv107 * _menhir_state * (
# 22 "minicparser.mly"
      (Minic.typ)
# 3404 "minicparser.ml"
                )) * (
# 9 "minicparser.mly"
       (string)
# 3408 "minicparser.ml"
                )) = Obj.magic _menhir_stack in
                ((let ((_menhir_stack, _menhir_s, (t : (
# 22 "minicparser.mly"
      (Minic.typ)
# 3413 "minicparser.ml"
                ))), (x : (
# 9 "minicparser.mly"
       (string)
# 3417 "minicparser.ml"
                ))) = _menhir_stack in
                let _v : (
# 25 "minicparser.mly"
      (string * Minic.typ * Minic.expr option)
# 3422 "minicparser.ml"
                ) = 
# 39 "minicparser.mly"
                ((x,t,None))
# 3426 "minicparser.ml"
                 in
                _menhir_goto_var_decl _menhir_env _menhir_stack _menhir_s _v) : 'freshtv108)
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : ('freshtv109 * _menhir_state * (
# 22 "minicparser.mly"
      (Minic.typ)
# 3436 "minicparser.ml"
                )) * (
# 9 "minicparser.mly"
       (string)
# 3440 "minicparser.ml"
                )) = Obj.magic _menhir_stack in
                ((let ((_menhir_stack, _menhir_s, _), _) = _menhir_stack in
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv110)) : 'freshtv112)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv113 * _menhir_state * (
# 22 "minicparser.mly"
      (Minic.typ)
# 3451 "minicparser.ml"
            )) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv114)) : 'freshtv116)
    | _ ->
        _menhir_fail ()

and _menhir_errorcase : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    match _menhir_s with
    | MenhirState117 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv9 * _menhir_state * (
# 26 "minicparser.mly"
      ((string * Minic.typ * Minic.expr option) list)
# 3466 "minicparser.ml"
        ))) * _menhir_state * (
# 28 "minicparser.mly"
      (Minic.fun_def list)
# 3470 "minicparser.ml"
        )) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv10)
    | MenhirState115 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv11 * _menhir_state * (
# 25 "minicparser.mly"
      (string * Minic.typ * Minic.expr option)
# 3479 "minicparser.ml"
        ))) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv12)
    | MenhirState107 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (((((((('freshtv13 * _menhir_state)) * _menhir_state * 'tv_expr))) * _menhir_state * 'tv_list_instr_)))) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv14)
    | MenhirState102 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv15 * _menhir_state * (
# 22 "minicparser.mly"
      (Minic.typ)
# 3493 "minicparser.ml"
        )) * (
# 9 "minicparser.mly"
       (string)
# 3497 "minicparser.ml"
        ))) = Obj.magic _menhir_stack in
        ((let ((_menhir_stack, _menhir_s, _), _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv16)
    | MenhirState97 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv17 * _menhir_state * (
# 24 "minicparser.mly"
      (Minic.instr)
# 3506 "minicparser.ml"
        )) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv18)
    | MenhirState92 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (((((((('freshtv19 * _menhir_state)) * _menhir_state * (
# 25 "minicparser.mly"
      (string * Minic.typ * Minic.expr option)
# 3515 "minicparser.ml"
        ))) * _menhir_state * 'tv_expr)) * _menhir_state * (
# 23 "minicparser.mly"
      (Minic.instr)
# 3519 "minicparser.ml"
        )))) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv20)
    | MenhirState89 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((((('freshtv21 * _menhir_state)) * _menhir_state * (
# 25 "minicparser.mly"
      (string * Minic.typ * Minic.expr option)
# 3528 "minicparser.ml"
        ))) * _menhir_state * 'tv_expr)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv22)
    | MenhirState87 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((('freshtv23 * _menhir_state)) * _menhir_state * (
# 25 "minicparser.mly"
      (string * Minic.typ * Minic.expr option)
# 3537 "minicparser.ml"
        ))) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv24)
    | MenhirState85 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv25 * _menhir_state)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv26)
    | MenhirState82 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv27 * _menhir_state * (
# 9 "minicparser.mly"
       (string)
# 3551 "minicparser.ml"
        ))) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv28)
    | MenhirState79 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv29 * _menhir_state * (
# 9 "minicparser.mly"
       (string)
# 3560 "minicparser.ml"
        ))) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv30)
    | MenhirState77 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (((('freshtv31 * _menhir_state)) * _menhir_state * 'tv_expr))) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv32)
    | MenhirState74 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv33 * _menhir_state)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv34)
    | MenhirState70 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv35 * _menhir_state)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv36)
    | MenhirState67 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv37 * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv38)
    | MenhirState66 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (((('freshtv39 * _menhir_state)) * _menhir_state * 'tv_expr))) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv40)
    | MenhirState59 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv41 * _menhir_state * 'tv_expr)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv42)
    | MenhirState57 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv43 * _menhir_state * 'tv_expr)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv44)
    | MenhirState55 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv45 * _menhir_state * 'tv_expr)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv46)
    | MenhirState53 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv47 * _menhir_state * 'tv_expr)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv48)
    | MenhirState51 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv49 * _menhir_state * 'tv_expr)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv50)
    | MenhirState49 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv51 * _menhir_state * 'tv_expr)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv52)
    | MenhirState47 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv53 * _menhir_state * 'tv_expr)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv54)
    | MenhirState45 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv55 * _menhir_state * 'tv_expr)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv56)
    | MenhirState43 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv57 * _menhir_state * 'tv_expr)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv58)
    | MenhirState41 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv59 * _menhir_state * 'tv_expr)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv60)
    | MenhirState39 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv61 * _menhir_state * 'tv_expr)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv62)
    | MenhirState37 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv63 * _menhir_state * 'tv_expr)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv64)
    | MenhirState35 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv65 * _menhir_state * 'tv_expr)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv66)
    | MenhirState33 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv67 * _menhir_state * 'tv_expr)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv68)
    | MenhirState26 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv69 * _menhir_state * (
# 9 "minicparser.mly"
       (string)
# 3664 "minicparser.ml"
        ))) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv70)
    | MenhirState24 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv71 * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv72)
    | MenhirState23 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv73 * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv74)
    | MenhirState22 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv75 * _menhir_state)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv76)
    | MenhirState20 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (((((('freshtv77 * _menhir_state * (
# 22 "minicparser.mly"
      (Minic.typ)
# 3688 "minicparser.ml"
        )) * (
# 9 "minicparser.mly"
       (string)
# 3692 "minicparser.ml"
        ))) * _menhir_state * 'tv_loption_separated_nonempty_list_COMMA_params__))) * _menhir_state * (
# 26 "minicparser.mly"
      ((string * Minic.typ * Minic.expr option) list)
# 3696 "minicparser.ml"
        )) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv78)
    | MenhirState19 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((((('freshtv79 * _menhir_state * (
# 22 "minicparser.mly"
      (Minic.typ)
# 3705 "minicparser.ml"
        )) * (
# 9 "minicparser.mly"
       (string)
# 3709 "minicparser.ml"
        ))) * _menhir_state * 'tv_loption_separated_nonempty_list_COMMA_params__))) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv80)
    | MenhirState15 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv81 * _menhir_state * 'tv_params)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv82)
    | MenhirState8 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv83 * _menhir_state * (
# 22 "minicparser.mly"
      (Minic.typ)
# 3723 "minicparser.ml"
        )) * (
# 9 "minicparser.mly"
       (string)
# 3727 "minicparser.ml"
        ))) = Obj.magic _menhir_stack in
        ((let ((_menhir_stack, _menhir_s, _), _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv84)
    | MenhirState5 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv85 * _menhir_state * (
# 26 "minicparser.mly"
      ((string * Minic.typ * Minic.expr option) list)
# 3736 "minicparser.ml"
        ))) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv86)
    | MenhirState0 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv87) = Obj.magic _menhir_stack in
        (raise _eRR : 'freshtv88)

and _menhir_reduce51 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _v : (
# 26 "minicparser.mly"
      ((string * Minic.typ * Minic.expr option) list)
# 3750 "minicparser.ml"
    ) = 
# 45 "minicparser.mly"
              ([])
# 3754 "minicparser.ml"
     in
    _menhir_goto_var_decl_list _menhir_env _menhir_stack _menhir_s _v

and _menhir_run1 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_env = _menhir_discard _menhir_env in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv7) = Obj.magic _menhir_stack in
    let (_menhir_s : _menhir_state) = _menhir_s in
    ((let _1 = () in
    let _v : (
# 22 "minicparser.mly"
      (Minic.typ)
# 3768 "minicparser.ml"
    ) = 
# 110 "minicparser.mly"
       (Void)
# 3772 "minicparser.ml"
     in
    _menhir_goto_typ _menhir_env _menhir_stack _menhir_s _v) : 'freshtv8)

and _menhir_run2 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_env = _menhir_discard _menhir_env in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv5) = Obj.magic _menhir_stack in
    let (_menhir_s : _menhir_state) = _menhir_s in
    ((let _1 = () in
    let _v : (
# 22 "minicparser.mly"
      (Minic.typ)
# 3786 "minicparser.ml"
    ) = 
# 108 "minicparser.mly"
      (Int)
# 3790 "minicparser.ml"
     in
    _menhir_goto_typ _menhir_env _menhir_stack _menhir_s _v) : 'freshtv6)

and _menhir_run3 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_env = _menhir_discard _menhir_env in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv3) = Obj.magic _menhir_stack in
    let (_menhir_s : _menhir_state) = _menhir_s in
    ((let _1 = () in
    let _v : (
# 22 "minicparser.mly"
      (Minic.typ)
# 3804 "minicparser.ml"
    ) = 
# 109 "minicparser.mly"
       (Bool)
# 3808 "minicparser.ml"
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
# 30 "minicparser.mly"
       (Minic.prog)
# 3827 "minicparser.ml"
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
        _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState0
    | INT ->
        _menhir_run2 _menhir_env (Obj.magic _menhir_stack) MenhirState0
    | VOID ->
        _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState0
    | END ->
        _menhir_reduce51 _menhir_env (Obj.magic _menhir_stack) MenhirState0
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState0) : 'freshtv2))

# 111 "minicparser.mly"
  

# 3862 "minicparser.ml"

# 269 "<standard.mly>"
  

# 3867 "minicparser.ml"
