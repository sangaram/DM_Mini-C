
module MenhirBasics = struct
  
  exception Error
  
  type token = 
    | WHILE
    | VOID
    | SEMI
    | RPAR
    | RETURN
    | RACC
    | PUTCHAR
    | PLUS
    | LT
    | LPAR
    | LACC
    | INT
    | IF
    | IDENT of (
# 9 "minicparser.mly"
       (string)
# 24 "minicparser.ml"
  )
    | FOIS
    | EOF
    | END
    | ELSE
    | EGAL
    | CST_B of (
# 8 "minicparser.mly"
       (bool)
# 34 "minicparser.ml"
  )
    | CST of (
# 7 "minicparser.mly"
       (int)
# 39 "minicparser.ml"
  )
    | COMMA
    | BOOL
  
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
  | MenhirState104
  | MenhirState101
  | MenhirState100
  | MenhirState97
  | MenhirState92
  | MenhirState91
  | MenhirState88
  | MenhirState84
  | MenhirState77
  | MenhirState74
  | MenhirState68
  | MenhirState64
  | MenhirState62
  | MenhirState59
  | MenhirState54
  | MenhirState50
  | MenhirState49
  | MenhirState46
  | MenhirState44
  | MenhirState43
  | MenhirState39
  | MenhirState32
  | MenhirState29
  | MenhirState26
  | MenhirState19
  | MenhirState17
  | MenhirState15
  | MenhirState13
  | MenhirState6
  | MenhirState4
  | MenhirState3
  | MenhirState0

# 1 "minicparser.mly"
  
  open Minic;;

# 96 "minicparser.ml"

let rec _menhir_goto_fun_def_list : _menhir_env -> 'ttv_tail -> _menhir_state -> (
# 20 "minicparser.mly"
      (Minic.fun_def list)
# 101 "minicparser.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : (('freshtv421 * _menhir_state * (
# 18 "minicparser.mly"
      ((string * Minic.typ * Minic.expr option) list)
# 109 "minicparser.ml"
    ))) * _menhir_state * (
# 20 "minicparser.mly"
      (Minic.fun_def list)
# 113 "minicparser.ml"
    )) = Obj.magic _menhir_stack in
    ((assert (not _menhir_env._menhir_error);
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | BOOL ->
        _menhir_run95 _menhir_env (Obj.magic _menhir_stack) MenhirState104
    | EOF ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv419 * _menhir_state * (
# 18 "minicparser.mly"
      ((string * Minic.typ * Minic.expr option) list)
# 125 "minicparser.ml"
        ))) * _menhir_state * (
# 20 "minicparser.mly"
      (Minic.fun_def list)
# 129 "minicparser.ml"
        )) = Obj.magic _menhir_stack in
        let (_menhir_s : _menhir_state) = MenhirState104 in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv417 * _menhir_state * (
# 18 "minicparser.mly"
      ((string * Minic.typ * Minic.expr option) list)
# 136 "minicparser.ml"
        ))) * _menhir_state * (
# 20 "minicparser.mly"
      (Minic.fun_def list)
# 140 "minicparser.ml"
        )) = Obj.magic _menhir_stack in
        let (_ : _menhir_state) = _menhir_s in
        ((let ((_menhir_stack, _menhir_s, (global : (
# 18 "minicparser.mly"
      ((string * Minic.typ * Minic.expr option) list)
# 146 "minicparser.ml"
        ))), _, (funct : (
# 20 "minicparser.mly"
      (Minic.fun_def list)
# 150 "minicparser.ml"
        ))) = _menhir_stack in
        let _4 = () in
        let _2 = () in
        let _v : (
# 22 "minicparser.mly"
       (Minic.prog)
# 157 "minicparser.ml"
        ) = 
# 27 "minicparser.mly"
                                                  ({globals= global; functions= funct})
# 161 "minicparser.ml"
         in
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv415) = _menhir_stack in
        let (_menhir_s : _menhir_state) = _menhir_s in
        let (_v : (
# 22 "minicparser.mly"
       (Minic.prog)
# 169 "minicparser.ml"
        )) = _v in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv413) = Obj.magic _menhir_stack in
        let (_menhir_s : _menhir_state) = _menhir_s in
        let (_v : (
# 22 "minicparser.mly"
       (Minic.prog)
# 177 "minicparser.ml"
        )) = _v in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv411) = Obj.magic _menhir_stack in
        let (_menhir_s : _menhir_state) = _menhir_s in
        let ((_1 : (
# 22 "minicparser.mly"
       (Minic.prog)
# 185 "minicparser.ml"
        )) : (
# 22 "minicparser.mly"
       (Minic.prog)
# 189 "minicparser.ml"
        )) = _v in
        (Obj.magic _1 : 'freshtv412)) : 'freshtv414)) : 'freshtv416)) : 'freshtv418)) : 'freshtv420)
    | INT ->
        _menhir_run86 _menhir_env (Obj.magic _menhir_stack) MenhirState104
    | VOID ->
        _menhir_run30 _menhir_env (Obj.magic _menhir_stack) MenhirState104
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState104) : 'freshtv422)

and _menhir_goto_separated_nonempty_list_COMMA_params_ : _menhir_env -> 'ttv_tail -> _menhir_state -> 'tv_separated_nonempty_list_COMMA_params_ -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    match _menhir_s with
    | MenhirState97 | MenhirState88 | MenhirState32 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv405) = Obj.magic _menhir_stack in
        let (_menhir_s : _menhir_state) = _menhir_s in
        let (_v : 'tv_separated_nonempty_list_COMMA_params_) = _v in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv403) = Obj.magic _menhir_stack in
        let (_menhir_s : _menhir_state) = _menhir_s in
        let ((x : 'tv_separated_nonempty_list_COMMA_params_) : 'tv_separated_nonempty_list_COMMA_params_) = _v in
        ((let _v : 'tv_loption_separated_nonempty_list_COMMA_params__ = 
# 130 "/usr/share/menhir/standard.mly"
    ( x )
# 216 "minicparser.ml"
         in
        _menhir_goto_loption_separated_nonempty_list_COMMA_params__ _menhir_env _menhir_stack _menhir_s _v) : 'freshtv404)) : 'freshtv406)
    | MenhirState39 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv409 * _menhir_state * 'tv_params)) = Obj.magic _menhir_stack in
        let (_menhir_s : _menhir_state) = _menhir_s in
        let (_v : 'tv_separated_nonempty_list_COMMA_params_) = _v in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv407 * _menhir_state * 'tv_params)) = Obj.magic _menhir_stack in
        let (_ : _menhir_state) = _menhir_s in
        let ((xs : 'tv_separated_nonempty_list_COMMA_params_) : 'tv_separated_nonempty_list_COMMA_params_) = _v in
        ((let (_menhir_stack, _menhir_s, (x : 'tv_params)) = _menhir_stack in
        let _2 = () in
        let _v : 'tv_separated_nonempty_list_COMMA_params_ = 
# 217 "/usr/share/menhir/standard.mly"
    ( x :: xs )
# 233 "minicparser.ml"
         in
        _menhir_goto_separated_nonempty_list_COMMA_params_ _menhir_env _menhir_stack _menhir_s _v) : 'freshtv408)) : 'freshtv410)
    | _ ->
        _menhir_fail ()

and _menhir_goto_fun_def : _menhir_env -> 'ttv_tail -> _menhir_state -> (
# 19 "minicparser.mly"
      (Minic.fun_def)
# 242 "minicparser.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    match _menhir_s with
    | MenhirState104 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv397 * _menhir_state * (
# 20 "minicparser.mly"
      (Minic.fun_def list)
# 251 "minicparser.ml"
        )) = Obj.magic _menhir_stack in
        let (_menhir_s : _menhir_state) = _menhir_s in
        let (_v : (
# 19 "minicparser.mly"
      (Minic.fun_def)
# 257 "minicparser.ml"
        )) = _v in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv395 * _menhir_state * (
# 20 "minicparser.mly"
      (Minic.fun_def list)
# 263 "minicparser.ml"
        )) = Obj.magic _menhir_stack in
        let (_ : _menhir_state) = _menhir_s in
        let ((f : (
# 19 "minicparser.mly"
      (Minic.fun_def)
# 269 "minicparser.ml"
        )) : (
# 19 "minicparser.mly"
      (Minic.fun_def)
# 273 "minicparser.ml"
        )) = _v in
        ((let (_menhir_stack, _menhir_s, (l : (
# 20 "minicparser.mly"
      (Minic.fun_def list)
# 278 "minicparser.ml"
        ))) = _menhir_stack in
        let _v : (
# 20 "minicparser.mly"
      (Minic.fun_def list)
# 283 "minicparser.ml"
        ) = 
# 52 "minicparser.mly"
                           ( l@[f] )
# 287 "minicparser.ml"
         in
        _menhir_goto_fun_def_list _menhir_env _menhir_stack _menhir_s _v) : 'freshtv396)) : 'freshtv398)
    | MenhirState29 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv401) = Obj.magic _menhir_stack in
        let (_menhir_s : _menhir_state) = _menhir_s in
        let (_v : (
# 19 "minicparser.mly"
      (Minic.fun_def)
# 297 "minicparser.ml"
        )) = _v in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv399) = Obj.magic _menhir_stack in
        let (_menhir_s : _menhir_state) = _menhir_s in
        let ((f : (
# 19 "minicparser.mly"
      (Minic.fun_def)
# 305 "minicparser.ml"
        )) : (
# 19 "minicparser.mly"
      (Minic.fun_def)
# 309 "minicparser.ml"
        )) = _v in
        ((let _v : (
# 20 "minicparser.mly"
      (Minic.fun_def list)
# 314 "minicparser.ml"
        ) = 
# 51 "minicparser.mly"
            ([f])
# 318 "minicparser.ml"
         in
        _menhir_goto_fun_def_list _menhir_env _menhir_stack _menhir_s _v) : 'freshtv400)) : 'freshtv402)
    | _ ->
        _menhir_fail ()

and _menhir_goto_loption_separated_nonempty_list_COMMA_params__ : _menhir_env -> 'ttv_tail -> _menhir_state -> 'tv_loption_separated_nonempty_list_COMMA_params__ -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    match _menhir_s with
    | MenhirState32 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((('freshtv373 * _menhir_state) * (
# 9 "minicparser.mly"
       (string)
# 333 "minicparser.ml"
        ))) * _menhir_state * 'tv_loption_separated_nonempty_list_COMMA_params__) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | RPAR ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ((('freshtv369 * _menhir_state) * (
# 9 "minicparser.mly"
       (string)
# 343 "minicparser.ml"
            ))) * _menhir_state * 'tv_loption_separated_nonempty_list_COMMA_params__) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | LACC ->
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : (((('freshtv365 * _menhir_state) * (
# 9 "minicparser.mly"
       (string)
# 353 "minicparser.ml"
                ))) * _menhir_state * 'tv_loption_separated_nonempty_list_COMMA_params__)) = Obj.magic _menhir_stack in
                ((let _menhir_env = _menhir_discard _menhir_env in
                let _tok = _menhir_env._menhir_token in
                match _tok with
                | BOOL ->
                    _menhir_run24 _menhir_env (Obj.magic _menhir_stack) MenhirState43
                | INT ->
                    _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState43
                | IDENT _ | IF | PUTCHAR | RACC | RETURN | WHILE ->
                    _menhir_reduce38 _menhir_env (Obj.magic _menhir_stack) MenhirState43
                | _ ->
                    assert (not _menhir_env._menhir_error);
                    _menhir_env._menhir_error <- true;
                    _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState43) : 'freshtv366)
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : (((('freshtv367 * _menhir_state) * (
# 9 "minicparser.mly"
       (string)
# 375 "minicparser.ml"
                ))) * _menhir_state * 'tv_loption_separated_nonempty_list_COMMA_params__)) = Obj.magic _menhir_stack in
                ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv368)) : 'freshtv370)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ((('freshtv371 * _menhir_state) * (
# 9 "minicparser.mly"
       (string)
# 386 "minicparser.ml"
            ))) * _menhir_state * 'tv_loption_separated_nonempty_list_COMMA_params__) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv372)) : 'freshtv374)
    | MenhirState88 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((('freshtv383 * _menhir_state) * (
# 9 "minicparser.mly"
       (string)
# 395 "minicparser.ml"
        ))) * _menhir_state * 'tv_loption_separated_nonempty_list_COMMA_params__) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | RPAR ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ((('freshtv379 * _menhir_state) * (
# 9 "minicparser.mly"
       (string)
# 405 "minicparser.ml"
            ))) * _menhir_state * 'tv_loption_separated_nonempty_list_COMMA_params__) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | LACC ->
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : (((('freshtv375 * _menhir_state) * (
# 9 "minicparser.mly"
       (string)
# 415 "minicparser.ml"
                ))) * _menhir_state * 'tv_loption_separated_nonempty_list_COMMA_params__)) = Obj.magic _menhir_stack in
                ((let _menhir_env = _menhir_discard _menhir_env in
                let _tok = _menhir_env._menhir_token in
                match _tok with
                | BOOL ->
                    _menhir_run24 _menhir_env (Obj.magic _menhir_stack) MenhirState91
                | INT ->
                    _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState91
                | IDENT _ | IF | PUTCHAR | RACC | RETURN | WHILE ->
                    _menhir_reduce38 _menhir_env (Obj.magic _menhir_stack) MenhirState91
                | _ ->
                    assert (not _menhir_env._menhir_error);
                    _menhir_env._menhir_error <- true;
                    _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState91) : 'freshtv376)
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : (((('freshtv377 * _menhir_state) * (
# 9 "minicparser.mly"
       (string)
# 437 "minicparser.ml"
                ))) * _menhir_state * 'tv_loption_separated_nonempty_list_COMMA_params__)) = Obj.magic _menhir_stack in
                ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv378)) : 'freshtv380)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ((('freshtv381 * _menhir_state) * (
# 9 "minicparser.mly"
       (string)
# 448 "minicparser.ml"
            ))) * _menhir_state * 'tv_loption_separated_nonempty_list_COMMA_params__) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv382)) : 'freshtv384)
    | MenhirState97 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((('freshtv393 * _menhir_state) * (
# 9 "minicparser.mly"
       (string)
# 457 "minicparser.ml"
        ))) * _menhir_state * 'tv_loption_separated_nonempty_list_COMMA_params__) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | RPAR ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ((('freshtv389 * _menhir_state) * (
# 9 "minicparser.mly"
       (string)
# 467 "minicparser.ml"
            ))) * _menhir_state * 'tv_loption_separated_nonempty_list_COMMA_params__) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | LACC ->
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : (((('freshtv385 * _menhir_state) * (
# 9 "minicparser.mly"
       (string)
# 477 "minicparser.ml"
                ))) * _menhir_state * 'tv_loption_separated_nonempty_list_COMMA_params__)) = Obj.magic _menhir_stack in
                ((let _menhir_env = _menhir_discard _menhir_env in
                let _tok = _menhir_env._menhir_token in
                match _tok with
                | BOOL ->
                    _menhir_run24 _menhir_env (Obj.magic _menhir_stack) MenhirState100
                | INT ->
                    _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState100
                | IDENT _ | IF | PUTCHAR | RACC | RETURN | WHILE ->
                    _menhir_reduce38 _menhir_env (Obj.magic _menhir_stack) MenhirState100
                | _ ->
                    assert (not _menhir_env._menhir_error);
                    _menhir_env._menhir_error <- true;
                    _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState100) : 'freshtv386)
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : (((('freshtv387 * _menhir_state) * (
# 9 "minicparser.mly"
       (string)
# 499 "minicparser.ml"
                ))) * _menhir_state * 'tv_loption_separated_nonempty_list_COMMA_params__)) = Obj.magic _menhir_stack in
                ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv388)) : 'freshtv390)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ((('freshtv391 * _menhir_state) * (
# 9 "minicparser.mly"
       (string)
# 510 "minicparser.ml"
            ))) * _menhir_state * 'tv_loption_separated_nonempty_list_COMMA_params__) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv392)) : 'freshtv394)
    | _ ->
        _menhir_fail ()

and _menhir_goto_params : _menhir_env -> 'ttv_tail -> _menhir_state -> 'tv_params -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv363 * _menhir_state * 'tv_params) = Obj.magic _menhir_stack in
    ((assert (not _menhir_env._menhir_error);
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | COMMA ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv357 * _menhir_state * 'tv_params) = Obj.magic _menhir_stack in
        ((let _menhir_env = _menhir_discard _menhir_env in
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | BOOL ->
            _menhir_run35 _menhir_env (Obj.magic _menhir_stack) MenhirState39
        | INT ->
            _menhir_run33 _menhir_env (Obj.magic _menhir_stack) MenhirState39
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState39) : 'freshtv358)
    | RPAR ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv359 * _menhir_state * 'tv_params) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, (x : 'tv_params)) = _menhir_stack in
        let _v : 'tv_separated_nonempty_list_COMMA_params_ = 
# 215 "/usr/share/menhir/standard.mly"
    ( [ x ] )
# 546 "minicparser.ml"
         in
        _menhir_goto_separated_nonempty_list_COMMA_params_ _menhir_env _menhir_stack _menhir_s _v) : 'freshtv360)
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv361 * _menhir_state * 'tv_params) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv362)) : 'freshtv364)

and _menhir_goto_list_instr_ : _menhir_env -> 'ttv_tail -> _menhir_state -> 'tv_list_instr_ -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    match _menhir_s with
    | MenhirState62 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((((('freshtv311 * _menhir_state)) * _menhir_state * 'tv_expr))) * _menhir_state * 'tv_list_instr_) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | RACC ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ((((('freshtv307 * _menhir_state)) * _menhir_state * 'tv_expr))) * _menhir_state * 'tv_list_instr_) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | ELSE ->
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : (((((('freshtv301 * _menhir_state)) * _menhir_state * 'tv_expr))) * _menhir_state * 'tv_list_instr_)) = Obj.magic _menhir_stack in
                ((let _menhir_env = _menhir_discard _menhir_env in
                let _tok = _menhir_env._menhir_token in
                match _tok with
                | LACC ->
                    let (_menhir_env : _menhir_env) = _menhir_env in
                    let (_menhir_stack : ((((((('freshtv297 * _menhir_state)) * _menhir_state * 'tv_expr))) * _menhir_state * 'tv_list_instr_))) = Obj.magic _menhir_stack in
                    ((let _menhir_env = _menhir_discard _menhir_env in
                    let _tok = _menhir_env._menhir_token in
                    match _tok with
                    | IDENT _v ->
                        _menhir_run63 _menhir_env (Obj.magic _menhir_stack) MenhirState74 _v
                    | IF ->
                        _menhir_run58 _menhir_env (Obj.magic _menhir_stack) MenhirState74
                    | PUTCHAR ->
                        _menhir_run53 _menhir_env (Obj.magic _menhir_stack) MenhirState74
                    | RETURN ->
                        _menhir_run50 _menhir_env (Obj.magic _menhir_stack) MenhirState74
                    | WHILE ->
                        _menhir_run45 _menhir_env (Obj.magic _menhir_stack) MenhirState74
                    | RACC ->
                        _menhir_reduce21 _menhir_env (Obj.magic _menhir_stack) MenhirState74
                    | _ ->
                        assert (not _menhir_env._menhir_error);
                        _menhir_env._menhir_error <- true;
                        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState74) : 'freshtv298)
                | _ ->
                    assert (not _menhir_env._menhir_error);
                    _menhir_env._menhir_error <- true;
                    let (_menhir_env : _menhir_env) = _menhir_env in
                    let (_menhir_stack : ((((((('freshtv299 * _menhir_state)) * _menhir_state * 'tv_expr))) * _menhir_state * 'tv_list_instr_))) = Obj.magic _menhir_stack in
                    ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
                    _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv300)) : 'freshtv302)
            | IDENT _ | IF | PUTCHAR | RACC | RETURN | WHILE ->
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : (((((('freshtv303 * _menhir_state)) * _menhir_state * 'tv_expr))) * _menhir_state * 'tv_list_instr_)) = Obj.magic _menhir_stack in
                ((let (((_menhir_stack, _menhir_s), _, (e : 'tv_expr)), _, (s1 : 'tv_list_instr_)) = _menhir_stack in
                let _7 = () in
                let _5 = () in
                let _4 = () in
                let _2 = () in
                let _1 = () in
                let _v : 'tv_instr = 
# 64 "minicparser.mly"
                                              (If(e,s1,[]))
# 620 "minicparser.ml"
                 in
                _menhir_goto_instr _menhir_env _menhir_stack _menhir_s _v) : 'freshtv304)
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : (((((('freshtv305 * _menhir_state)) * _menhir_state * 'tv_expr))) * _menhir_state * 'tv_list_instr_)) = Obj.magic _menhir_stack in
                ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv306)) : 'freshtv308)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ((((('freshtv309 * _menhir_state)) * _menhir_state * 'tv_expr))) * _menhir_state * 'tv_list_instr_) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv310)) : 'freshtv312)
    | MenhirState74 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((((((((('freshtv319 * _menhir_state)) * _menhir_state * 'tv_expr))) * _menhir_state * 'tv_list_instr_)))) * _menhir_state * 'tv_list_instr_) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | RACC ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ((((((((('freshtv315 * _menhir_state)) * _menhir_state * 'tv_expr))) * _menhir_state * 'tv_list_instr_)))) * _menhir_state * 'tv_list_instr_) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ((((((((('freshtv313 * _menhir_state)) * _menhir_state * 'tv_expr))) * _menhir_state * 'tv_list_instr_)))) * _menhir_state * 'tv_list_instr_) = Obj.magic _menhir_stack in
            ((let ((((_menhir_stack, _menhir_s), _, (e : 'tv_expr)), _, (s1 : 'tv_list_instr_)), _, (s2 : 'tv_list_instr_)) = _menhir_stack in
            let _11 = () in
            let _9 = () in
            let _8 = () in
            let _7 = () in
            let _5 = () in
            let _4 = () in
            let _2 = () in
            let _1 = () in
            let _v : 'tv_instr = 
# 63 "minicparser.mly"
                                                                            (If(e,s1,s2))
# 661 "minicparser.ml"
             in
            _menhir_goto_instr _menhir_env _menhir_stack _menhir_s _v) : 'freshtv314)) : 'freshtv316)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ((((((((('freshtv317 * _menhir_state)) * _menhir_state * 'tv_expr))) * _menhir_state * 'tv_list_instr_)))) * _menhir_state * 'tv_list_instr_) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv318)) : 'freshtv320)
    | MenhirState77 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv323 * _menhir_state * 'tv_instr) * _menhir_state * 'tv_list_instr_) = Obj.magic _menhir_stack in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv321 * _menhir_state * 'tv_instr) * _menhir_state * 'tv_list_instr_) = Obj.magic _menhir_stack in
        ((let ((_menhir_stack, _menhir_s, (x : 'tv_instr)), _, (xs : 'tv_list_instr_)) = _menhir_stack in
        let _v : 'tv_list_instr_ = 
# 187 "/usr/share/menhir/standard.mly"
    ( x :: xs )
# 680 "minicparser.ml"
         in
        _menhir_goto_list_instr_ _menhir_env _menhir_stack _menhir_s _v) : 'freshtv322)) : 'freshtv324)
    | MenhirState49 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((((('freshtv331 * _menhir_state)) * _menhir_state * 'tv_expr))) * _menhir_state * 'tv_list_instr_) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | RACC ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ((((('freshtv327 * _menhir_state)) * _menhir_state * 'tv_expr))) * _menhir_state * 'tv_list_instr_) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ((((('freshtv325 * _menhir_state)) * _menhir_state * 'tv_expr))) * _menhir_state * 'tv_list_instr_) = Obj.magic _menhir_stack in
            ((let (((_menhir_stack, _menhir_s), _, (e : 'tv_expr)), _, (l : 'tv_list_instr_)) = _menhir_stack in
            let _7 = () in
            let _5 = () in
            let _4 = () in
            let _2 = () in
            let _1 = () in
            let _v : 'tv_instr = 
# 62 "minicparser.mly"
                                                (While(e,l))
# 704 "minicparser.ml"
             in
            _menhir_goto_instr _menhir_env _menhir_stack _menhir_s _v) : 'freshtv326)) : 'freshtv328)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ((((('freshtv329 * _menhir_state)) * _menhir_state * 'tv_expr))) * _menhir_state * 'tv_list_instr_) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv330)) : 'freshtv332)
    | MenhirState44 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((((((('freshtv339 * _menhir_state) * (
# 9 "minicparser.mly"
       (string)
# 719 "minicparser.ml"
        ))) * _menhir_state * 'tv_loption_separated_nonempty_list_COMMA_params__))) * _menhir_state * (
# 18 "minicparser.mly"
      ((string * Minic.typ * Minic.expr option) list)
# 723 "minicparser.ml"
        )) * _menhir_state * 'tv_list_instr_) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | RACC ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ((((((('freshtv335 * _menhir_state) * (
# 9 "minicparser.mly"
       (string)
# 733 "minicparser.ml"
            ))) * _menhir_state * 'tv_loption_separated_nonempty_list_COMMA_params__))) * _menhir_state * (
# 18 "minicparser.mly"
      ((string * Minic.typ * Minic.expr option) list)
# 737 "minicparser.ml"
            )) * _menhir_state * 'tv_list_instr_) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ((((((('freshtv333 * _menhir_state) * (
# 9 "minicparser.mly"
       (string)
# 744 "minicparser.ml"
            ))) * _menhir_state * 'tv_loption_separated_nonempty_list_COMMA_params__))) * _menhir_state * (
# 18 "minicparser.mly"
      ((string * Minic.typ * Minic.expr option) list)
# 748 "minicparser.ml"
            )) * _menhir_state * 'tv_list_instr_) = Obj.magic _menhir_stack in
            ((let (((((_menhir_stack, _menhir_s), (f : (
# 9 "minicparser.mly"
       (string)
# 753 "minicparser.ml"
            ))), _, (xs0 : 'tv_loption_separated_nonempty_list_COMMA_params__)), _, (local : (
# 18 "minicparser.mly"
      ((string * Minic.typ * Minic.expr option) list)
# 757 "minicparser.ml"
            ))), _, (l : 'tv_list_instr_)) = _menhir_stack in
            let _9 = () in
            let _6 = () in
            let _5 = () in
            let _3 = () in
            let _1 = () in
            let _v : (
# 19 "minicparser.mly"
      (Minic.fun_def)
# 767 "minicparser.ml"
            ) = let p =
              let xs = xs0 in
              
# 206 "/usr/share/menhir/standard.mly"
    ( xs )
# 773 "minicparser.ml"
              
            in
            
# 47 "minicparser.mly"
                                                                                                    ( {name= f; params= p; return= Void; locals= local; code= l} )
# 779 "minicparser.ml"
             in
            _menhir_goto_fun_def _menhir_env _menhir_stack _menhir_s _v) : 'freshtv334)) : 'freshtv336)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ((((((('freshtv337 * _menhir_state) * (
# 9 "minicparser.mly"
       (string)
# 789 "minicparser.ml"
            ))) * _menhir_state * 'tv_loption_separated_nonempty_list_COMMA_params__))) * _menhir_state * (
# 18 "minicparser.mly"
      ((string * Minic.typ * Minic.expr option) list)
# 793 "minicparser.ml"
            )) * _menhir_state * 'tv_list_instr_) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv338)) : 'freshtv340)
    | MenhirState92 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((((((('freshtv347 * _menhir_state) * (
# 9 "minicparser.mly"
       (string)
# 802 "minicparser.ml"
        ))) * _menhir_state * 'tv_loption_separated_nonempty_list_COMMA_params__))) * _menhir_state * (
# 18 "minicparser.mly"
      ((string * Minic.typ * Minic.expr option) list)
# 806 "minicparser.ml"
        )) * _menhir_state * 'tv_list_instr_) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | RACC ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ((((((('freshtv343 * _menhir_state) * (
# 9 "minicparser.mly"
       (string)
# 816 "minicparser.ml"
            ))) * _menhir_state * 'tv_loption_separated_nonempty_list_COMMA_params__))) * _menhir_state * (
# 18 "minicparser.mly"
      ((string * Minic.typ * Minic.expr option) list)
# 820 "minicparser.ml"
            )) * _menhir_state * 'tv_list_instr_) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ((((((('freshtv341 * _menhir_state) * (
# 9 "minicparser.mly"
       (string)
# 827 "minicparser.ml"
            ))) * _menhir_state * 'tv_loption_separated_nonempty_list_COMMA_params__))) * _menhir_state * (
# 18 "minicparser.mly"
      ((string * Minic.typ * Minic.expr option) list)
# 831 "minicparser.ml"
            )) * _menhir_state * 'tv_list_instr_) = Obj.magic _menhir_stack in
            ((let (((((_menhir_stack, _menhir_s), (f : (
# 9 "minicparser.mly"
       (string)
# 836 "minicparser.ml"
            ))), _, (xs0 : 'tv_loption_separated_nonempty_list_COMMA_params__)), _, (local : (
# 18 "minicparser.mly"
      ((string * Minic.typ * Minic.expr option) list)
# 840 "minicparser.ml"
            ))), _, (l : 'tv_list_instr_)) = _menhir_stack in
            let _9 = () in
            let _6 = () in
            let _5 = () in
            let _3 = () in
            let _1 = () in
            let _v : (
# 19 "minicparser.mly"
      (Minic.fun_def)
# 850 "minicparser.ml"
            ) = let p =
              let xs = xs0 in
              
# 206 "/usr/share/menhir/standard.mly"
    ( xs )
# 856 "minicparser.ml"
              
            in
            
# 43 "minicparser.mly"
                                                                                                   ( {name= f; params= p; return= Int; locals= local; code= l} )
# 862 "minicparser.ml"
             in
            _menhir_goto_fun_def _menhir_env _menhir_stack _menhir_s _v) : 'freshtv342)) : 'freshtv344)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ((((((('freshtv345 * _menhir_state) * (
# 9 "minicparser.mly"
       (string)
# 872 "minicparser.ml"
            ))) * _menhir_state * 'tv_loption_separated_nonempty_list_COMMA_params__))) * _menhir_state * (
# 18 "minicparser.mly"
      ((string * Minic.typ * Minic.expr option) list)
# 876 "minicparser.ml"
            )) * _menhir_state * 'tv_list_instr_) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv346)) : 'freshtv348)
    | MenhirState101 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((((((('freshtv355 * _menhir_state) * (
# 9 "minicparser.mly"
       (string)
# 885 "minicparser.ml"
        ))) * _menhir_state * 'tv_loption_separated_nonempty_list_COMMA_params__))) * _menhir_state * (
# 18 "minicparser.mly"
      ((string * Minic.typ * Minic.expr option) list)
# 889 "minicparser.ml"
        )) * _menhir_state * 'tv_list_instr_) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | RACC ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ((((((('freshtv351 * _menhir_state) * (
# 9 "minicparser.mly"
       (string)
# 899 "minicparser.ml"
            ))) * _menhir_state * 'tv_loption_separated_nonempty_list_COMMA_params__))) * _menhir_state * (
# 18 "minicparser.mly"
      ((string * Minic.typ * Minic.expr option) list)
# 903 "minicparser.ml"
            )) * _menhir_state * 'tv_list_instr_) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ((((((('freshtv349 * _menhir_state) * (
# 9 "minicparser.mly"
       (string)
# 910 "minicparser.ml"
            ))) * _menhir_state * 'tv_loption_separated_nonempty_list_COMMA_params__))) * _menhir_state * (
# 18 "minicparser.mly"
      ((string * Minic.typ * Minic.expr option) list)
# 914 "minicparser.ml"
            )) * _menhir_state * 'tv_list_instr_) = Obj.magic _menhir_stack in
            ((let (((((_menhir_stack, _menhir_s), (f : (
# 9 "minicparser.mly"
       (string)
# 919 "minicparser.ml"
            ))), _, (xs0 : 'tv_loption_separated_nonempty_list_COMMA_params__)), _, (local : (
# 18 "minicparser.mly"
      ((string * Minic.typ * Minic.expr option) list)
# 923 "minicparser.ml"
            ))), _, (l : 'tv_list_instr_)) = _menhir_stack in
            let _9 = () in
            let _6 = () in
            let _5 = () in
            let _3 = () in
            let _1 = () in
            let _v : (
# 19 "minicparser.mly"
      (Minic.fun_def)
# 933 "minicparser.ml"
            ) = let p =
              let xs = xs0 in
              
# 206 "/usr/share/menhir/standard.mly"
    ( xs )
# 939 "minicparser.ml"
              
            in
            
# 45 "minicparser.mly"
                                                                                                    ( {name= f; params= p; return= Bool; locals= local; code= l} )
# 945 "minicparser.ml"
             in
            _menhir_goto_fun_def _menhir_env _menhir_stack _menhir_s _v) : 'freshtv350)) : 'freshtv352)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ((((((('freshtv353 * _menhir_state) * (
# 9 "minicparser.mly"
       (string)
# 955 "minicparser.ml"
            ))) * _menhir_state * 'tv_loption_separated_nonempty_list_COMMA_params__))) * _menhir_state * (
# 18 "minicparser.mly"
      ((string * Minic.typ * Minic.expr option) list)
# 959 "minicparser.ml"
            )) * _menhir_state * 'tv_list_instr_) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv354)) : 'freshtv356)
    | _ ->
        _menhir_fail ()

and _menhir_reduce25 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _v : 'tv_loption_separated_nonempty_list_COMMA_params__ = 
# 128 "/usr/share/menhir/standard.mly"
    ( [] )
# 971 "minicparser.ml"
     in
    _menhir_goto_loption_separated_nonempty_list_COMMA_params__ _menhir_env _menhir_stack _menhir_s _v

and _menhir_run33 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | IDENT _v ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv293 * _menhir_state) = Obj.magic _menhir_stack in
        let (_v : (
# 9 "minicparser.mly"
       (string)
# 987 "minicparser.ml"
        )) = _v in
        ((let _menhir_env = _menhir_discard _menhir_env in
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv291 * _menhir_state) = Obj.magic _menhir_stack in
        let ((x : (
# 9 "minicparser.mly"
       (string)
# 995 "minicparser.ml"
        )) : (
# 9 "minicparser.mly"
       (string)
# 999 "minicparser.ml"
        )) = _v in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        let _1 = () in
        let _v : 'tv_params = 
# 56 "minicparser.mly"
               ((x,Int))
# 1006 "minicparser.ml"
         in
        _menhir_goto_params _menhir_env _menhir_stack _menhir_s _v) : 'freshtv292)) : 'freshtv294)
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv295 * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv296)

and _menhir_run35 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | IDENT _v ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv287 * _menhir_state) = Obj.magic _menhir_stack in
        let (_v : (
# 9 "minicparser.mly"
       (string)
# 1029 "minicparser.ml"
        )) = _v in
        ((let _menhir_env = _menhir_discard _menhir_env in
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv285 * _menhir_state) = Obj.magic _menhir_stack in
        let ((x : (
# 9 "minicparser.mly"
       (string)
# 1037 "minicparser.ml"
        )) : (
# 9 "minicparser.mly"
       (string)
# 1041 "minicparser.ml"
        )) = _v in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        let _1 = () in
        let _v : 'tv_params = 
# 57 "minicparser.mly"
                ((x,Bool))
# 1048 "minicparser.ml"
         in
        _menhir_goto_params _menhir_env _menhir_stack _menhir_s _v) : 'freshtv286)) : 'freshtv288)
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv289 * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv290)

and _menhir_goto_loption_separated_nonempty_list_COMMA_expr__ : _menhir_env -> 'ttv_tail -> _menhir_state -> 'tv_loption_separated_nonempty_list_COMMA_expr__ -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    match _menhir_s with
    | MenhirState6 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv271 * _menhir_state * (
# 9 "minicparser.mly"
       (string)
# 1068 "minicparser.ml"
        ))) * _menhir_state * 'tv_loption_separated_nonempty_list_COMMA_expr__) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | RPAR ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv267 * _menhir_state * (
# 9 "minicparser.mly"
       (string)
# 1078 "minicparser.ml"
            ))) * _menhir_state * 'tv_loption_separated_nonempty_list_COMMA_expr__) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv265 * _menhir_state * (
# 9 "minicparser.mly"
       (string)
# 1085 "minicparser.ml"
            ))) * _menhir_state * 'tv_loption_separated_nonempty_list_COMMA_expr__) = Obj.magic _menhir_stack in
            ((let ((_menhir_stack, _menhir_s, (f : (
# 9 "minicparser.mly"
       (string)
# 1090 "minicparser.ml"
            ))), _, (xs0 : 'tv_loption_separated_nonempty_list_COMMA_expr__)) = _menhir_stack in
            let _4 = () in
            let _2 = () in
            let _v : 'tv_expr = let s =
              let xs = xs0 in
              
# 206 "/usr/share/menhir/standard.mly"
    ( xs )
# 1099 "minicparser.ml"
              
            in
            
# 78 "minicparser.mly"
                                                 ( Call(f,s) )
# 1105 "minicparser.ml"
             in
            _menhir_goto_expr _menhir_env _menhir_stack _menhir_s _v) : 'freshtv266)) : 'freshtv268)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv269 * _menhir_state * (
# 9 "minicparser.mly"
       (string)
# 1115 "minicparser.ml"
            ))) * _menhir_state * 'tv_loption_separated_nonempty_list_COMMA_expr__) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv270)) : 'freshtv272)
    | MenhirState64 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv283 * _menhir_state * (
# 9 "minicparser.mly"
       (string)
# 1124 "minicparser.ml"
        ))) * _menhir_state * 'tv_loption_separated_nonempty_list_COMMA_expr__) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | RPAR ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv279 * _menhir_state * (
# 9 "minicparser.mly"
       (string)
# 1134 "minicparser.ml"
            ))) * _menhir_state * 'tv_loption_separated_nonempty_list_COMMA_expr__) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | SEMI ->
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : ((('freshtv275 * _menhir_state * (
# 9 "minicparser.mly"
       (string)
# 1144 "minicparser.ml"
                ))) * _menhir_state * 'tv_loption_separated_nonempty_list_COMMA_expr__)) = Obj.magic _menhir_stack in
                ((let _menhir_env = _menhir_discard _menhir_env in
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : ((('freshtv273 * _menhir_state * (
# 9 "minicparser.mly"
       (string)
# 1151 "minicparser.ml"
                ))) * _menhir_state * 'tv_loption_separated_nonempty_list_COMMA_expr__)) = Obj.magic _menhir_stack in
                ((let ((_menhir_stack, _menhir_s, (f : (
# 9 "minicparser.mly"
       (string)
# 1156 "minicparser.ml"
                ))), _, (xs0 : 'tv_loption_separated_nonempty_list_COMMA_expr__)) = _menhir_stack in
                let _5 = () in
                let _4 = () in
                let _2 = () in
                let _v : 'tv_instr = let s =
                  let xs = xs0 in
                  
# 206 "/usr/share/menhir/standard.mly"
    ( xs )
# 1166 "minicparser.ml"
                  
                in
                
# 67 "minicparser.mly"
                                                     ( Expr(Call(f,s)) )
# 1172 "minicparser.ml"
                 in
                _menhir_goto_instr _menhir_env _menhir_stack _menhir_s _v) : 'freshtv274)) : 'freshtv276)
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : ((('freshtv277 * _menhir_state * (
# 9 "minicparser.mly"
       (string)
# 1182 "minicparser.ml"
                ))) * _menhir_state * 'tv_loption_separated_nonempty_list_COMMA_expr__)) = Obj.magic _menhir_stack in
                ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv278)) : 'freshtv280)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv281 * _menhir_state * (
# 9 "minicparser.mly"
       (string)
# 1193 "minicparser.ml"
            ))) * _menhir_state * 'tv_loption_separated_nonempty_list_COMMA_expr__) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv282)) : 'freshtv284)
    | _ ->
        _menhir_fail ()

and _menhir_goto_instr : _menhir_env -> 'ttv_tail -> _menhir_state -> 'tv_instr -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv263 * _menhir_state * 'tv_instr) = Obj.magic _menhir_stack in
    ((assert (not _menhir_env._menhir_error);
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | IDENT _v ->
        _menhir_run63 _menhir_env (Obj.magic _menhir_stack) MenhirState77 _v
    | IF ->
        _menhir_run58 _menhir_env (Obj.magic _menhir_stack) MenhirState77
    | PUTCHAR ->
        _menhir_run53 _menhir_env (Obj.magic _menhir_stack) MenhirState77
    | RETURN ->
        _menhir_run50 _menhir_env (Obj.magic _menhir_stack) MenhirState77
    | WHILE ->
        _menhir_run45 _menhir_env (Obj.magic _menhir_stack) MenhirState77
    | RACC ->
        _menhir_reduce21 _menhir_env (Obj.magic _menhir_stack) MenhirState77
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState77) : 'freshtv264)

and _menhir_goto_separated_nonempty_list_COMMA_expr_ : _menhir_env -> 'ttv_tail -> _menhir_state -> 'tv_separated_nonempty_list_COMMA_expr_ -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    match _menhir_s with
    | MenhirState64 | MenhirState6 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv257) = Obj.magic _menhir_stack in
        let (_menhir_s : _menhir_state) = _menhir_s in
        let (_v : 'tv_separated_nonempty_list_COMMA_expr_) = _v in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv255) = Obj.magic _menhir_stack in
        let (_menhir_s : _menhir_state) = _menhir_s in
        let ((x : 'tv_separated_nonempty_list_COMMA_expr_) : 'tv_separated_nonempty_list_COMMA_expr_) = _v in
        ((let _v : 'tv_loption_separated_nonempty_list_COMMA_expr__ = 
# 130 "/usr/share/menhir/standard.mly"
    ( x )
# 1240 "minicparser.ml"
         in
        _menhir_goto_loption_separated_nonempty_list_COMMA_expr__ _menhir_env _menhir_stack _menhir_s _v) : 'freshtv256)) : 'freshtv258)
    | MenhirState19 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv261 * _menhir_state * 'tv_expr)) = Obj.magic _menhir_stack in
        let (_menhir_s : _menhir_state) = _menhir_s in
        let (_v : 'tv_separated_nonempty_list_COMMA_expr_) = _v in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv259 * _menhir_state * 'tv_expr)) = Obj.magic _menhir_stack in
        let (_ : _menhir_state) = _menhir_s in
        let ((xs : 'tv_separated_nonempty_list_COMMA_expr_) : 'tv_separated_nonempty_list_COMMA_expr_) = _v in
        ((let (_menhir_stack, _menhir_s, (x : 'tv_expr)) = _menhir_stack in
        let _2 = () in
        let _v : 'tv_separated_nonempty_list_COMMA_expr_ = 
# 217 "/usr/share/menhir/standard.mly"
    ( x :: xs )
# 1257 "minicparser.ml"
         in
        _menhir_goto_separated_nonempty_list_COMMA_expr_ _menhir_env _menhir_stack _menhir_s _v) : 'freshtv260)) : 'freshtv262)
    | _ ->
        _menhir_fail ()

and _menhir_run13 : _menhir_env -> 'ttv_tail * _menhir_state * 'tv_expr -> 'ttv_return =
  fun _menhir_env _menhir_stack ->
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | CST _v ->
        _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState13 _v
    | CST_B _v ->
        _menhir_run7 _menhir_env (Obj.magic _menhir_stack) MenhirState13 _v
    | IDENT _v ->
        _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState13 _v
    | LPAR ->
        _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState13
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState13

and _menhir_run15 : _menhir_env -> 'ttv_tail * _menhir_state * 'tv_expr -> 'ttv_return =
  fun _menhir_env _menhir_stack ->
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | CST _v ->
        _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState15 _v
    | CST_B _v ->
        _menhir_run7 _menhir_env (Obj.magic _menhir_stack) MenhirState15 _v
    | IDENT _v ->
        _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState15 _v
    | LPAR ->
        _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState15
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState15

and _menhir_run17 : _menhir_env -> 'ttv_tail * _menhir_state * 'tv_expr -> 'ttv_return =
  fun _menhir_env _menhir_stack ->
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | CST _v ->
        _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState17 _v
    | CST_B _v ->
        _menhir_run7 _menhir_env (Obj.magic _menhir_stack) MenhirState17 _v
    | IDENT _v ->
        _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState17 _v
    | LPAR ->
        _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState17
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState17

and _menhir_fail : unit -> 'a =
  fun () ->
    Printf.fprintf Pervasives.stderr "Internal failure -- please contact the parser generator's developers.\n%!";
    assert false

and _menhir_reduce21 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _v : 'tv_list_instr_ = 
# 185 "/usr/share/menhir/standard.mly"
    ( [] )
# 1327 "minicparser.ml"
     in
    _menhir_goto_list_instr_ _menhir_env _menhir_stack _menhir_s _v

and _menhir_run45 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | LPAR ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv251 * _menhir_state) = Obj.magic _menhir_stack in
        ((let _menhir_env = _menhir_discard _menhir_env in
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | CST _v ->
            _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState46 _v
        | CST_B _v ->
            _menhir_run7 _menhir_env (Obj.magic _menhir_stack) MenhirState46 _v
        | IDENT _v ->
            _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState46 _v
        | LPAR ->
            _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState46
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState46) : 'freshtv252)
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv253 * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv254)

and _menhir_run50 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | CST _v ->
        _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState50 _v
    | CST_B _v ->
        _menhir_run7 _menhir_env (Obj.magic _menhir_stack) MenhirState50 _v
    | IDENT _v ->
        _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState50 _v
    | LPAR ->
        _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState50
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState50

and _menhir_run53 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | LPAR ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv247 * _menhir_state) = Obj.magic _menhir_stack in
        ((let _menhir_env = _menhir_discard _menhir_env in
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | CST _v ->
            _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState54 _v
        | CST_B _v ->
            _menhir_run7 _menhir_env (Obj.magic _menhir_stack) MenhirState54 _v
        | IDENT _v ->
            _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState54 _v
        | LPAR ->
            _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState54
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState54) : 'freshtv248)
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv249 * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv250)

and _menhir_run58 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | LPAR ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv243 * _menhir_state) = Obj.magic _menhir_stack in
        ((let _menhir_env = _menhir_discard _menhir_env in
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | CST _v ->
            _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState59 _v
        | CST_B _v ->
            _menhir_run7 _menhir_env (Obj.magic _menhir_stack) MenhirState59 _v
        | IDENT _v ->
            _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState59 _v
        | LPAR ->
            _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState59
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState59) : 'freshtv244)
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv245 * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv246)

and _menhir_run63 : _menhir_env -> 'ttv_tail -> _menhir_state -> (
# 9 "minicparser.mly"
       (string)
# 1449 "minicparser.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | EGAL ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv237 * _menhir_state * (
# 9 "minicparser.mly"
       (string)
# 1461 "minicparser.ml"
        )) = Obj.magic _menhir_stack in
        ((let _menhir_env = _menhir_discard _menhir_env in
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | CST _v ->
            _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState68 _v
        | CST_B _v ->
            _menhir_run7 _menhir_env (Obj.magic _menhir_stack) MenhirState68 _v
        | IDENT _v ->
            _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState68 _v
        | LPAR ->
            _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState68
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState68) : 'freshtv238)
    | LPAR ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv239 * _menhir_state * (
# 9 "minicparser.mly"
       (string)
# 1483 "minicparser.ml"
        )) = Obj.magic _menhir_stack in
        ((let _menhir_env = _menhir_discard _menhir_env in
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | CST _v ->
            _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState64 _v
        | CST_B _v ->
            _menhir_run7 _menhir_env (Obj.magic _menhir_stack) MenhirState64 _v
        | IDENT _v ->
            _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState64 _v
        | LPAR ->
            _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState64
        | RPAR ->
            _menhir_reduce23 _menhir_env (Obj.magic _menhir_stack) MenhirState64
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState64) : 'freshtv240)
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv241 * _menhir_state * (
# 9 "minicparser.mly"
       (string)
# 1509 "minicparser.ml"
        )) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv242)

and _menhir_run30 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | IDENT _v ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv233 * _menhir_state) = Obj.magic _menhir_stack in
        let (_v : (
# 9 "minicparser.mly"
       (string)
# 1526 "minicparser.ml"
        )) = _v in
        ((let _menhir_stack = (_menhir_stack, _v) in
        let _menhir_env = _menhir_discard _menhir_env in
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | LPAR ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv229 * _menhir_state) * (
# 9 "minicparser.mly"
       (string)
# 1537 "minicparser.ml"
            )) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | BOOL ->
                _menhir_run35 _menhir_env (Obj.magic _menhir_stack) MenhirState32
            | INT ->
                _menhir_run33 _menhir_env (Obj.magic _menhir_stack) MenhirState32
            | RPAR ->
                _menhir_reduce25 _menhir_env (Obj.magic _menhir_stack) MenhirState32
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState32) : 'freshtv230)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv231 * _menhir_state) * (
# 9 "minicparser.mly"
       (string)
# 1559 "minicparser.ml"
            )) = Obj.magic _menhir_stack in
            ((let ((_menhir_stack, _menhir_s), _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv232)) : 'freshtv234)
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv235 * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv236)

and _menhir_run86 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | IDENT _v ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv225 * _menhir_state) = Obj.magic _menhir_stack in
        let (_v : (
# 9 "minicparser.mly"
       (string)
# 1583 "minicparser.ml"
        )) = _v in
        ((let _menhir_stack = (_menhir_stack, _v) in
        let _menhir_env = _menhir_discard _menhir_env in
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | LPAR ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv221 * _menhir_state) * (
# 9 "minicparser.mly"
       (string)
# 1594 "minicparser.ml"
            )) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | BOOL ->
                _menhir_run35 _menhir_env (Obj.magic _menhir_stack) MenhirState88
            | INT ->
                _menhir_run33 _menhir_env (Obj.magic _menhir_stack) MenhirState88
            | RPAR ->
                _menhir_reduce25 _menhir_env (Obj.magic _menhir_stack) MenhirState88
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState88) : 'freshtv222)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv223 * _menhir_state) * (
# 9 "minicparser.mly"
       (string)
# 1616 "minicparser.ml"
            )) = Obj.magic _menhir_stack in
            ((let ((_menhir_stack, _menhir_s), _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv224)) : 'freshtv226)
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv227 * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv228)

and _menhir_run95 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | IDENT _v ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv217 * _menhir_state) = Obj.magic _menhir_stack in
        let (_v : (
# 9 "minicparser.mly"
       (string)
# 1640 "minicparser.ml"
        )) = _v in
        ((let _menhir_stack = (_menhir_stack, _v) in
        let _menhir_env = _menhir_discard _menhir_env in
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | LPAR ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv213 * _menhir_state) * (
# 9 "minicparser.mly"
       (string)
# 1651 "minicparser.ml"
            )) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | BOOL ->
                _menhir_run35 _menhir_env (Obj.magic _menhir_stack) MenhirState97
            | INT ->
                _menhir_run33 _menhir_env (Obj.magic _menhir_stack) MenhirState97
            | RPAR ->
                _menhir_reduce25 _menhir_env (Obj.magic _menhir_stack) MenhirState97
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState97) : 'freshtv214)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv215 * _menhir_state) * (
# 9 "minicparser.mly"
       (string)
# 1673 "minicparser.ml"
            )) = Obj.magic _menhir_stack in
            ((let ((_menhir_stack, _menhir_s), _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv216)) : 'freshtv218)
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv219 * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv220)

and _menhir_reduce23 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _v : 'tv_loption_separated_nonempty_list_COMMA_expr__ = 
# 128 "/usr/share/menhir/standard.mly"
    ( [] )
# 1690 "minicparser.ml"
     in
    _menhir_goto_loption_separated_nonempty_list_COMMA_expr__ _menhir_env _menhir_stack _menhir_s _v

and _menhir_goto_expr : _menhir_env -> 'ttv_tail -> _menhir_state -> 'tv_expr -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    match _menhir_s with
    | MenhirState64 | MenhirState19 | MenhirState6 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv125 * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | COMMA ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv119 * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | CST _v ->
                _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState19 _v
            | CST_B _v ->
                _menhir_run7 _menhir_env (Obj.magic _menhir_stack) MenhirState19 _v
            | IDENT _v ->
                _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState19 _v
            | LPAR ->
                _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState19
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState19) : 'freshtv120)
        | FOIS ->
            _menhir_run17 _menhir_env (Obj.magic _menhir_stack)
        | LT ->
            _menhir_run15 _menhir_env (Obj.magic _menhir_stack)
        | PLUS ->
            _menhir_run13 _menhir_env (Obj.magic _menhir_stack)
        | RPAR ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv121 * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, (x : 'tv_expr)) = _menhir_stack in
            let _v : 'tv_separated_nonempty_list_COMMA_expr_ = 
# 215 "/usr/share/menhir/standard.mly"
    ( [ x ] )
# 1735 "minicparser.ml"
             in
            _menhir_goto_separated_nonempty_list_COMMA_expr_ _menhir_env _menhir_stack _menhir_s _v) : 'freshtv122)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv123 * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv124)) : 'freshtv126)
    | MenhirState13 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv131 * _menhir_state * 'tv_expr)) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | FOIS ->
            _menhir_run17 _menhir_env (Obj.magic _menhir_stack)
        | LT ->
            _menhir_run15 _menhir_env (Obj.magic _menhir_stack)
        | COMMA | PLUS | RPAR | SEMI ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv127 * _menhir_state * 'tv_expr)) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
            ((let ((_menhir_stack, _menhir_s, (e : 'tv_expr)), _, (f : 'tv_expr)) = _menhir_stack in
            let _2 = () in
            let _v : 'tv_expr = 
# 74 "minicparser.mly"
                     ( Add(e,f) )
# 1763 "minicparser.ml"
             in
            _menhir_goto_expr _menhir_env _menhir_stack _menhir_s _v) : 'freshtv128)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv129 * _menhir_state * 'tv_expr)) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv130)) : 'freshtv132)
    | MenhirState15 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv137 * _menhir_state * 'tv_expr)) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | COMMA | FOIS | PLUS | RPAR | SEMI ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv133 * _menhir_state * 'tv_expr)) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
            ((let ((_menhir_stack, _menhir_s, (e : 'tv_expr)), _, (f : 'tv_expr)) = _menhir_stack in
            let _2 = () in
            let _v : 'tv_expr = 
# 76 "minicparser.mly"
                   ( Lt(e,f) )
# 1787 "minicparser.ml"
             in
            _menhir_goto_expr _menhir_env _menhir_stack _menhir_s _v) : 'freshtv134)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv135 * _menhir_state * 'tv_expr)) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv136)) : 'freshtv138)
    | MenhirState17 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv143 * _menhir_state * 'tv_expr)) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | LT ->
            _menhir_run15 _menhir_env (Obj.magic _menhir_stack)
        | COMMA | FOIS | PLUS | RPAR | SEMI ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv139 * _menhir_state * 'tv_expr)) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
            ((let ((_menhir_stack, _menhir_s, (e : 'tv_expr)), _, (f : 'tv_expr)) = _menhir_stack in
            let _2 = () in
            let _v : 'tv_expr = 
# 75 "minicparser.mly"
                     ( Mul(e,f) )
# 1813 "minicparser.ml"
             in
            _menhir_goto_expr _menhir_env _menhir_stack _menhir_s _v) : 'freshtv140)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv141 * _menhir_state * 'tv_expr)) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv142)) : 'freshtv144)
    | MenhirState4 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv151 * _menhir_state) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | FOIS ->
            _menhir_run17 _menhir_env (Obj.magic _menhir_stack)
        | LT ->
            _menhir_run15 _menhir_env (Obj.magic _menhir_stack)
        | PLUS ->
            _menhir_run13 _menhir_env (Obj.magic _menhir_stack)
        | RPAR ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv147 * _menhir_state) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv145 * _menhir_state) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
            ((let ((_menhir_stack, _menhir_s), _, (e : 'tv_expr)) = _menhir_stack in
            let _3 = () in
            let _1 = () in
            let _v : 'tv_expr = 
# 77 "minicparser.mly"
                   ( e )
# 1847 "minicparser.ml"
             in
            _menhir_goto_expr _menhir_env _menhir_stack _menhir_s _v) : 'freshtv146)) : 'freshtv148)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv149 * _menhir_state) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv150)) : 'freshtv152)
    | MenhirState3 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((('freshtv157 * _menhir_state) * (
# 9 "minicparser.mly"
       (string)
# 1862 "minicparser.ml"
        ))) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | FOIS ->
            _menhir_run17 _menhir_env (Obj.magic _menhir_stack)
        | LT ->
            _menhir_run15 _menhir_env (Obj.magic _menhir_stack)
        | PLUS ->
            _menhir_run13 _menhir_env (Obj.magic _menhir_stack)
        | SEMI ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ((('freshtv153 * _menhir_state) * (
# 9 "minicparser.mly"
       (string)
# 1878 "minicparser.ml"
            ))) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
            ((let (((_menhir_stack, _menhir_s), (x : (
# 9 "minicparser.mly"
       (string)
# 1883 "minicparser.ml"
            ))), _, (n : 'tv_expr)) = _menhir_stack in
            let _3 = () in
            let _1 = () in
            let _v : (
# 17 "minicparser.mly"
      (string * Minic.typ * Minic.expr option)
# 1890 "minicparser.ml"
            ) = 
# 33 "minicparser.mly"
                          ((x,Int,Some n))
# 1894 "minicparser.ml"
             in
            _menhir_goto_var_decl _menhir_env _menhir_stack _menhir_s _v) : 'freshtv154)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ((('freshtv155 * _menhir_state) * (
# 9 "minicparser.mly"
       (string)
# 1904 "minicparser.ml"
            ))) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv156)) : 'freshtv158)
    | MenhirState26 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((('freshtv163 * _menhir_state) * (
# 9 "minicparser.mly"
       (string)
# 1913 "minicparser.ml"
        ))) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | FOIS ->
            _menhir_run17 _menhir_env (Obj.magic _menhir_stack)
        | LT ->
            _menhir_run15 _menhir_env (Obj.magic _menhir_stack)
        | PLUS ->
            _menhir_run13 _menhir_env (Obj.magic _menhir_stack)
        | SEMI ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ((('freshtv159 * _menhir_state) * (
# 9 "minicparser.mly"
       (string)
# 1929 "minicparser.ml"
            ))) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
            ((let (((_menhir_stack, _menhir_s), (x : (
# 9 "minicparser.mly"
       (string)
# 1934 "minicparser.ml"
            ))), _, (b : 'tv_expr)) = _menhir_stack in
            let _3 = () in
            let _1 = () in
            let _v : (
# 17 "minicparser.mly"
      (string * Minic.typ * Minic.expr option)
# 1941 "minicparser.ml"
            ) = 
# 34 "minicparser.mly"
                           ((x,Bool,Some b))
# 1945 "minicparser.ml"
             in
            _menhir_goto_var_decl _menhir_env _menhir_stack _menhir_s _v) : 'freshtv160)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ((('freshtv161 * _menhir_state) * (
# 9 "minicparser.mly"
       (string)
# 1955 "minicparser.ml"
            ))) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv162)) : 'freshtv164)
    | MenhirState46 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv173 * _menhir_state)) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | FOIS ->
            _menhir_run17 _menhir_env (Obj.magic _menhir_stack)
        | LT ->
            _menhir_run15 _menhir_env (Obj.magic _menhir_stack)
        | PLUS ->
            _menhir_run13 _menhir_env (Obj.magic _menhir_stack)
        | RPAR ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv169 * _menhir_state)) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | LACC ->
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : ((('freshtv165 * _menhir_state)) * _menhir_state * 'tv_expr)) = Obj.magic _menhir_stack in
                ((let _menhir_env = _menhir_discard _menhir_env in
                let _tok = _menhir_env._menhir_token in
                match _tok with
                | IDENT _v ->
                    _menhir_run63 _menhir_env (Obj.magic _menhir_stack) MenhirState49 _v
                | IF ->
                    _menhir_run58 _menhir_env (Obj.magic _menhir_stack) MenhirState49
                | PUTCHAR ->
                    _menhir_run53 _menhir_env (Obj.magic _menhir_stack) MenhirState49
                | RETURN ->
                    _menhir_run50 _menhir_env (Obj.magic _menhir_stack) MenhirState49
                | WHILE ->
                    _menhir_run45 _menhir_env (Obj.magic _menhir_stack) MenhirState49
                | RACC ->
                    _menhir_reduce21 _menhir_env (Obj.magic _menhir_stack) MenhirState49
                | _ ->
                    assert (not _menhir_env._menhir_error);
                    _menhir_env._menhir_error <- true;
                    _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState49) : 'freshtv166)
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : ((('freshtv167 * _menhir_state)) * _menhir_state * 'tv_expr)) = Obj.magic _menhir_stack in
                ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv168)) : 'freshtv170)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv171 * _menhir_state)) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv172)) : 'freshtv174)
    | MenhirState50 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv181 * _menhir_state) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | FOIS ->
            _menhir_run17 _menhir_env (Obj.magic _menhir_stack)
        | LT ->
            _menhir_run15 _menhir_env (Obj.magic _menhir_stack)
        | PLUS ->
            _menhir_run13 _menhir_env (Obj.magic _menhir_stack)
        | SEMI ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv177 * _menhir_state) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv175 * _menhir_state) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
            ((let ((_menhir_stack, _menhir_s), _, (e : 'tv_expr)) = _menhir_stack in
            let _3 = () in
            let _1 = () in
            let _v : 'tv_instr = 
# 66 "minicparser.mly"
                     (Return(e))
# 2037 "minicparser.ml"
             in
            _menhir_goto_instr _menhir_env _menhir_stack _menhir_s _v) : 'freshtv176)) : 'freshtv178)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv179 * _menhir_state) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv180)) : 'freshtv182)
    | MenhirState54 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv193 * _menhir_state)) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | FOIS ->
            _menhir_run17 _menhir_env (Obj.magic _menhir_stack)
        | LT ->
            _menhir_run15 _menhir_env (Obj.magic _menhir_stack)
        | PLUS ->
            _menhir_run13 _menhir_env (Obj.magic _menhir_stack)
        | RPAR ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv189 * _menhir_state)) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | SEMI ->
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : ((('freshtv185 * _menhir_state)) * _menhir_state * 'tv_expr)) = Obj.magic _menhir_stack in
                ((let _menhir_env = _menhir_discard _menhir_env in
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : ((('freshtv183 * _menhir_state)) * _menhir_state * 'tv_expr)) = Obj.magic _menhir_stack in
                ((let ((_menhir_stack, _menhir_s), _, (e : 'tv_expr)) = _menhir_stack in
                let _5 = () in
                let _4 = () in
                let _2 = () in
                let _1 = () in
                let _v : 'tv_instr = 
# 61 "minicparser.mly"
                               (Putchar(e))
# 2079 "minicparser.ml"
                 in
                _menhir_goto_instr _menhir_env _menhir_stack _menhir_s _v) : 'freshtv184)) : 'freshtv186)
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : ((('freshtv187 * _menhir_state)) * _menhir_state * 'tv_expr)) = Obj.magic _menhir_stack in
                ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv188)) : 'freshtv190)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv191 * _menhir_state)) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv192)) : 'freshtv194)
    | MenhirState59 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv203 * _menhir_state)) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | FOIS ->
            _menhir_run17 _menhir_env (Obj.magic _menhir_stack)
        | LT ->
            _menhir_run15 _menhir_env (Obj.magic _menhir_stack)
        | PLUS ->
            _menhir_run13 _menhir_env (Obj.magic _menhir_stack)
        | RPAR ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv199 * _menhir_state)) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | LACC ->
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : ((('freshtv195 * _menhir_state)) * _menhir_state * 'tv_expr)) = Obj.magic _menhir_stack in
                ((let _menhir_env = _menhir_discard _menhir_env in
                let _tok = _menhir_env._menhir_token in
                match _tok with
                | IDENT _v ->
                    _menhir_run63 _menhir_env (Obj.magic _menhir_stack) MenhirState62 _v
                | IF ->
                    _menhir_run58 _menhir_env (Obj.magic _menhir_stack) MenhirState62
                | PUTCHAR ->
                    _menhir_run53 _menhir_env (Obj.magic _menhir_stack) MenhirState62
                | RETURN ->
                    _menhir_run50 _menhir_env (Obj.magic _menhir_stack) MenhirState62
                | WHILE ->
                    _menhir_run45 _menhir_env (Obj.magic _menhir_stack) MenhirState62
                | RACC ->
                    _menhir_reduce21 _menhir_env (Obj.magic _menhir_stack) MenhirState62
                | _ ->
                    assert (not _menhir_env._menhir_error);
                    _menhir_env._menhir_error <- true;
                    _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState62) : 'freshtv196)
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : ((('freshtv197 * _menhir_state)) * _menhir_state * 'tv_expr)) = Obj.magic _menhir_stack in
                ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv198)) : 'freshtv200)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv201 * _menhir_state)) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv202)) : 'freshtv204)
    | MenhirState68 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv211 * _menhir_state * (
# 9 "minicparser.mly"
       (string)
# 2155 "minicparser.ml"
        ))) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | FOIS ->
            _menhir_run17 _menhir_env (Obj.magic _menhir_stack)
        | LT ->
            _menhir_run15 _menhir_env (Obj.magic _menhir_stack)
        | PLUS ->
            _menhir_run13 _menhir_env (Obj.magic _menhir_stack)
        | SEMI ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv207 * _menhir_state * (
# 9 "minicparser.mly"
       (string)
# 2171 "minicparser.ml"
            ))) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv205 * _menhir_state * (
# 9 "minicparser.mly"
       (string)
# 2178 "minicparser.ml"
            ))) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
            ((let ((_menhir_stack, _menhir_s, (x : (
# 9 "minicparser.mly"
       (string)
# 2183 "minicparser.ml"
            ))), _, (e : 'tv_expr)) = _menhir_stack in
            let _4 = () in
            let _2 = () in
            let _v : 'tv_instr = 
# 65 "minicparser.mly"
                          (Set(x,e))
# 2190 "minicparser.ml"
             in
            _menhir_goto_instr _menhir_env _menhir_stack _menhir_s _v) : 'freshtv206)) : 'freshtv208)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv209 * _menhir_state * (
# 9 "minicparser.mly"
       (string)
# 2200 "minicparser.ml"
            ))) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv210)) : 'freshtv212)
    | _ ->
        _menhir_fail ()

and _menhir_goto_var_decl_list : _menhir_env -> 'ttv_tail -> _menhir_state -> (
# 18 "minicparser.mly"
      ((string * Minic.typ * Minic.expr option) list)
# 2210 "minicparser.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    match _menhir_s with
    | MenhirState0 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv107 * _menhir_state * (
# 18 "minicparser.mly"
      ((string * Minic.typ * Minic.expr option) list)
# 2220 "minicparser.ml"
        )) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | END ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv103 * _menhir_state * (
# 18 "minicparser.mly"
      ((string * Minic.typ * Minic.expr option) list)
# 2230 "minicparser.ml"
            )) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | BOOL ->
                _menhir_run95 _menhir_env (Obj.magic _menhir_stack) MenhirState29
            | INT ->
                _menhir_run86 _menhir_env (Obj.magic _menhir_stack) MenhirState29
            | VOID ->
                _menhir_run30 _menhir_env (Obj.magic _menhir_stack) MenhirState29
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState29) : 'freshtv104)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv105 * _menhir_state * (
# 18 "minicparser.mly"
      ((string * Minic.typ * Minic.expr option) list)
# 2252 "minicparser.ml"
            )) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv106)) : 'freshtv108)
    | MenhirState43 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (((((('freshtv109 * _menhir_state) * (
# 9 "minicparser.mly"
       (string)
# 2261 "minicparser.ml"
        ))) * _menhir_state * 'tv_loption_separated_nonempty_list_COMMA_params__))) * _menhir_state * (
# 18 "minicparser.mly"
      ((string * Minic.typ * Minic.expr option) list)
# 2265 "minicparser.ml"
        )) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | IDENT _v ->
            _menhir_run63 _menhir_env (Obj.magic _menhir_stack) MenhirState44 _v
        | IF ->
            _menhir_run58 _menhir_env (Obj.magic _menhir_stack) MenhirState44
        | PUTCHAR ->
            _menhir_run53 _menhir_env (Obj.magic _menhir_stack) MenhirState44
        | RETURN ->
            _menhir_run50 _menhir_env (Obj.magic _menhir_stack) MenhirState44
        | WHILE ->
            _menhir_run45 _menhir_env (Obj.magic _menhir_stack) MenhirState44
        | RACC ->
            _menhir_reduce21 _menhir_env (Obj.magic _menhir_stack) MenhirState44
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState44) : 'freshtv110)
    | MenhirState84 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv113 * _menhir_state * (
# 17 "minicparser.mly"
      (string * Minic.typ * Minic.expr option)
# 2291 "minicparser.ml"
        ))) * _menhir_state * (
# 18 "minicparser.mly"
      ((string * Minic.typ * Minic.expr option) list)
# 2295 "minicparser.ml"
        )) = Obj.magic _menhir_stack in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv111 * _menhir_state * (
# 17 "minicparser.mly"
      (string * Minic.typ * Minic.expr option)
# 2301 "minicparser.ml"
        ))) * _menhir_state * (
# 18 "minicparser.mly"
      ((string * Minic.typ * Minic.expr option) list)
# 2305 "minicparser.ml"
        )) = Obj.magic _menhir_stack in
        ((let ((_menhir_stack, _menhir_s, (v : (
# 17 "minicparser.mly"
      (string * Minic.typ * Minic.expr option)
# 2310 "minicparser.ml"
        ))), _, (l : (
# 18 "minicparser.mly"
      ((string * Minic.typ * Minic.expr option) list)
# 2314 "minicparser.ml"
        ))) = _menhir_stack in
        let _2 = () in
        let _v : (
# 18 "minicparser.mly"
      ((string * Minic.typ * Minic.expr option) list)
# 2320 "minicparser.ml"
        ) = 
# 39 "minicparser.mly"
                                   (l@[v])
# 2324 "minicparser.ml"
         in
        _menhir_goto_var_decl_list _menhir_env _menhir_stack _menhir_s _v) : 'freshtv112)) : 'freshtv114)
    | MenhirState91 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (((((('freshtv115 * _menhir_state) * (
# 9 "minicparser.mly"
       (string)
# 2332 "minicparser.ml"
        ))) * _menhir_state * 'tv_loption_separated_nonempty_list_COMMA_params__))) * _menhir_state * (
# 18 "minicparser.mly"
      ((string * Minic.typ * Minic.expr option) list)
# 2336 "minicparser.ml"
        )) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | IDENT _v ->
            _menhir_run63 _menhir_env (Obj.magic _menhir_stack) MenhirState92 _v
        | IF ->
            _menhir_run58 _menhir_env (Obj.magic _menhir_stack) MenhirState92
        | PUTCHAR ->
            _menhir_run53 _menhir_env (Obj.magic _menhir_stack) MenhirState92
        | RETURN ->
            _menhir_run50 _menhir_env (Obj.magic _menhir_stack) MenhirState92
        | WHILE ->
            _menhir_run45 _menhir_env (Obj.magic _menhir_stack) MenhirState92
        | RACC ->
            _menhir_reduce21 _menhir_env (Obj.magic _menhir_stack) MenhirState92
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState92) : 'freshtv116)
    | MenhirState100 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (((((('freshtv117 * _menhir_state) * (
# 9 "minicparser.mly"
       (string)
# 2362 "minicparser.ml"
        ))) * _menhir_state * 'tv_loption_separated_nonempty_list_COMMA_params__))) * _menhir_state * (
# 18 "minicparser.mly"
      ((string * Minic.typ * Minic.expr option) list)
# 2366 "minicparser.ml"
        )) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | IDENT _v ->
            _menhir_run63 _menhir_env (Obj.magic _menhir_stack) MenhirState101 _v
        | IF ->
            _menhir_run58 _menhir_env (Obj.magic _menhir_stack) MenhirState101
        | PUTCHAR ->
            _menhir_run53 _menhir_env (Obj.magic _menhir_stack) MenhirState101
        | RETURN ->
            _menhir_run50 _menhir_env (Obj.magic _menhir_stack) MenhirState101
        | WHILE ->
            _menhir_run45 _menhir_env (Obj.magic _menhir_stack) MenhirState101
        | RACC ->
            _menhir_reduce21 _menhir_env (Obj.magic _menhir_stack) MenhirState101
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState101) : 'freshtv118)
    | _ ->
        _menhir_fail ()

and _menhir_goto_var_decl : _menhir_env -> 'ttv_tail -> _menhir_state -> (
# 17 "minicparser.mly"
      (string * Minic.typ * Minic.expr option)
# 2393 "minicparser.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv101 * _menhir_state * (
# 17 "minicparser.mly"
      (string * Minic.typ * Minic.expr option)
# 2401 "minicparser.ml"
    )) = Obj.magic _menhir_stack in
    ((assert (not _menhir_env._menhir_error);
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | SEMI ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv97 * _menhir_state * (
# 17 "minicparser.mly"
      (string * Minic.typ * Minic.expr option)
# 2411 "minicparser.ml"
        )) = Obj.magic _menhir_stack in
        ((let _menhir_env = _menhir_discard _menhir_env in
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | BOOL ->
            _menhir_run24 _menhir_env (Obj.magic _menhir_stack) MenhirState84
        | INT ->
            _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState84
        | END | IDENT _ | IF | PUTCHAR | RACC | RETURN | WHILE ->
            _menhir_reduce38 _menhir_env (Obj.magic _menhir_stack) MenhirState84
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState84) : 'freshtv98)
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv99 * _menhir_state * (
# 17 "minicparser.mly"
      (string * Minic.typ * Minic.expr option)
# 2433 "minicparser.ml"
        )) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv100)) : 'freshtv102)

and _menhir_run4 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | CST _v ->
        _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState4 _v
    | CST_B _v ->
        _menhir_run7 _menhir_env (Obj.magic _menhir_stack) MenhirState4 _v
    | IDENT _v ->
        _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState4 _v
    | LPAR ->
        _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState4
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState4

and _menhir_run5 : _menhir_env -> 'ttv_tail -> _menhir_state -> (
# 9 "minicparser.mly"
       (string)
# 2460 "minicparser.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | LPAR ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv91 * _menhir_state * (
# 9 "minicparser.mly"
       (string)
# 2472 "minicparser.ml"
        )) = Obj.magic _menhir_stack in
        ((let _menhir_env = _menhir_discard _menhir_env in
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | CST _v ->
            _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState6 _v
        | CST_B _v ->
            _menhir_run7 _menhir_env (Obj.magic _menhir_stack) MenhirState6 _v
        | IDENT _v ->
            _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState6 _v
        | LPAR ->
            _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState6
        | RPAR ->
            _menhir_reduce23 _menhir_env (Obj.magic _menhir_stack) MenhirState6
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState6) : 'freshtv92)
    | COMMA | FOIS | LT | PLUS | RPAR | SEMI ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv93 * _menhir_state * (
# 9 "minicparser.mly"
       (string)
# 2496 "minicparser.ml"
        )) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, (x : (
# 9 "minicparser.mly"
       (string)
# 2501 "minicparser.ml"
        ))) = _menhir_stack in
        let _v : 'tv_expr = 
# 73 "minicparser.mly"
          ( Get(x) )
# 2506 "minicparser.ml"
         in
        _menhir_goto_expr _menhir_env _menhir_stack _menhir_s _v) : 'freshtv94)
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv95 * _menhir_state * (
# 9 "minicparser.mly"
       (string)
# 2516 "minicparser.ml"
        )) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv96)

and _menhir_run7 : _menhir_env -> 'ttv_tail -> _menhir_state -> (
# 8 "minicparser.mly"
       (bool)
# 2524 "minicparser.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_env = _menhir_discard _menhir_env in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv89) = Obj.magic _menhir_stack in
    let (_menhir_s : _menhir_state) = _menhir_s in
    let ((b : (
# 8 "minicparser.mly"
       (bool)
# 2534 "minicparser.ml"
    )) : (
# 8 "minicparser.mly"
       (bool)
# 2538 "minicparser.ml"
    )) = _v in
    ((let _v : 'tv_expr = 
# 72 "minicparser.mly"
          ( Cst_b(b) )
# 2543 "minicparser.ml"
     in
    _menhir_goto_expr _menhir_env _menhir_stack _menhir_s _v) : 'freshtv90)

and _menhir_run8 : _menhir_env -> 'ttv_tail -> _menhir_state -> (
# 7 "minicparser.mly"
       (int)
# 2550 "minicparser.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_env = _menhir_discard _menhir_env in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv87) = Obj.magic _menhir_stack in
    let (_menhir_s : _menhir_state) = _menhir_s in
    let ((n : (
# 7 "minicparser.mly"
       (int)
# 2560 "minicparser.ml"
    )) : (
# 7 "minicparser.mly"
       (int)
# 2564 "minicparser.ml"
    )) = _v in
    ((let _v : 'tv_expr = 
# 71 "minicparser.mly"
        ( Cst(n) )
# 2569 "minicparser.ml"
     in
    _menhir_goto_expr _menhir_env _menhir_stack _menhir_s _v) : 'freshtv88)

and _menhir_errorcase : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    match _menhir_s with
    | MenhirState104 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv23 * _menhir_state * (
# 18 "minicparser.mly"
      ((string * Minic.typ * Minic.expr option) list)
# 2581 "minicparser.ml"
        ))) * _menhir_state * (
# 20 "minicparser.mly"
      (Minic.fun_def list)
# 2585 "minicparser.ml"
        )) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv24)
    | MenhirState101 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (((((('freshtv25 * _menhir_state) * (
# 9 "minicparser.mly"
       (string)
# 2594 "minicparser.ml"
        ))) * _menhir_state * 'tv_loption_separated_nonempty_list_COMMA_params__))) * _menhir_state * (
# 18 "minicparser.mly"
      ((string * Minic.typ * Minic.expr option) list)
# 2598 "minicparser.ml"
        )) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv26)
    | MenhirState100 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((((('freshtv27 * _menhir_state) * (
# 9 "minicparser.mly"
       (string)
# 2607 "minicparser.ml"
        ))) * _menhir_state * 'tv_loption_separated_nonempty_list_COMMA_params__))) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv28)
    | MenhirState97 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv29 * _menhir_state) * (
# 9 "minicparser.mly"
       (string)
# 2616 "minicparser.ml"
        ))) = Obj.magic _menhir_stack in
        ((let ((_menhir_stack, _menhir_s), _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv30)
    | MenhirState92 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (((((('freshtv31 * _menhir_state) * (
# 9 "minicparser.mly"
       (string)
# 2625 "minicparser.ml"
        ))) * _menhir_state * 'tv_loption_separated_nonempty_list_COMMA_params__))) * _menhir_state * (
# 18 "minicparser.mly"
      ((string * Minic.typ * Minic.expr option) list)
# 2629 "minicparser.ml"
        )) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv32)
    | MenhirState91 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((((('freshtv33 * _menhir_state) * (
# 9 "minicparser.mly"
       (string)
# 2638 "minicparser.ml"
        ))) * _menhir_state * 'tv_loption_separated_nonempty_list_COMMA_params__))) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv34)
    | MenhirState88 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv35 * _menhir_state) * (
# 9 "minicparser.mly"
       (string)
# 2647 "minicparser.ml"
        ))) = Obj.magic _menhir_stack in
        ((let ((_menhir_stack, _menhir_s), _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv36)
    | MenhirState84 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv37 * _menhir_state * (
# 17 "minicparser.mly"
      (string * Minic.typ * Minic.expr option)
# 2656 "minicparser.ml"
        ))) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv38)
    | MenhirState77 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv39 * _menhir_state * 'tv_instr) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv40)
    | MenhirState74 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (((((((('freshtv41 * _menhir_state)) * _menhir_state * 'tv_expr))) * _menhir_state * 'tv_list_instr_)))) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv42)
    | MenhirState68 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv43 * _menhir_state * (
# 9 "minicparser.mly"
       (string)
# 2675 "minicparser.ml"
        ))) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv44)
    | MenhirState64 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv45 * _menhir_state * (
# 9 "minicparser.mly"
       (string)
# 2684 "minicparser.ml"
        ))) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv46)
    | MenhirState62 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (((('freshtv47 * _menhir_state)) * _menhir_state * 'tv_expr))) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv48)
    | MenhirState59 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv49 * _menhir_state)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv50)
    | MenhirState54 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv51 * _menhir_state)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv52)
    | MenhirState50 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv53 * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv54)
    | MenhirState49 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (((('freshtv55 * _menhir_state)) * _menhir_state * 'tv_expr))) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv56)
    | MenhirState46 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv57 * _menhir_state)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv58)
    | MenhirState44 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (((((('freshtv59 * _menhir_state) * (
# 9 "minicparser.mly"
       (string)
# 2723 "minicparser.ml"
        ))) * _menhir_state * 'tv_loption_separated_nonempty_list_COMMA_params__))) * _menhir_state * (
# 18 "minicparser.mly"
      ((string * Minic.typ * Minic.expr option) list)
# 2727 "minicparser.ml"
        )) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv60)
    | MenhirState43 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((((('freshtv61 * _menhir_state) * (
# 9 "minicparser.mly"
       (string)
# 2736 "minicparser.ml"
        ))) * _menhir_state * 'tv_loption_separated_nonempty_list_COMMA_params__))) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv62)
    | MenhirState39 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv63 * _menhir_state * 'tv_params)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv64)
    | MenhirState32 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv65 * _menhir_state) * (
# 9 "minicparser.mly"
       (string)
# 2750 "minicparser.ml"
        ))) = Obj.magic _menhir_stack in
        ((let ((_menhir_stack, _menhir_s), _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv66)
    | MenhirState29 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv67 * _menhir_state * (
# 18 "minicparser.mly"
      ((string * Minic.typ * Minic.expr option) list)
# 2759 "minicparser.ml"
        ))) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv68)
    | MenhirState26 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv69 * _menhir_state) * (
# 9 "minicparser.mly"
       (string)
# 2768 "minicparser.ml"
        ))) = Obj.magic _menhir_stack in
        ((let ((_menhir_stack, _menhir_s), _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv70)
    | MenhirState19 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv71 * _menhir_state * 'tv_expr)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv72)
    | MenhirState17 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv73 * _menhir_state * 'tv_expr)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv74)
    | MenhirState15 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv75 * _menhir_state * 'tv_expr)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv76)
    | MenhirState13 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv77 * _menhir_state * 'tv_expr)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv78)
    | MenhirState6 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv79 * _menhir_state * (
# 9 "minicparser.mly"
       (string)
# 2797 "minicparser.ml"
        ))) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv80)
    | MenhirState4 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv81 * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv82)
    | MenhirState3 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv83 * _menhir_state) * (
# 9 "minicparser.mly"
       (string)
# 2811 "minicparser.ml"
        ))) = Obj.magic _menhir_stack in
        ((let ((_menhir_stack, _menhir_s), _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv84)
    | MenhirState0 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv85) = Obj.magic _menhir_stack in
        (raise _eRR : 'freshtv86)

and _menhir_reduce38 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _v : (
# 18 "minicparser.mly"
      ((string * Minic.typ * Minic.expr option) list)
# 2825 "minicparser.ml"
    ) = 
# 38 "minicparser.mly"
              ([])
# 2829 "minicparser.ml"
     in
    _menhir_goto_var_decl_list _menhir_env _menhir_stack _menhir_s _v

and _menhir_run1 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | IDENT _v ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv19 * _menhir_state) = Obj.magic _menhir_stack in
        let (_v : (
# 9 "minicparser.mly"
       (string)
# 2845 "minicparser.ml"
        )) = _v in
        ((let _menhir_stack = (_menhir_stack, _v) in
        let _menhir_env = _menhir_discard _menhir_env in
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | EGAL ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv13 * _menhir_state) * (
# 9 "minicparser.mly"
       (string)
# 2856 "minicparser.ml"
            )) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | CST _v ->
                _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState3 _v
            | CST_B _v ->
                _menhir_run7 _menhir_env (Obj.magic _menhir_stack) MenhirState3 _v
            | IDENT _v ->
                _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState3 _v
            | LPAR ->
                _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState3
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState3) : 'freshtv14)
        | SEMI ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv15 * _menhir_state) * (
# 9 "minicparser.mly"
       (string)
# 2878 "minicparser.ml"
            )) = Obj.magic _menhir_stack in
            ((let ((_menhir_stack, _menhir_s), (x : (
# 9 "minicparser.mly"
       (string)
# 2883 "minicparser.ml"
            ))) = _menhir_stack in
            let _1 = () in
            let _v : (
# 17 "minicparser.mly"
      (string * Minic.typ * Minic.expr option)
# 2889 "minicparser.ml"
            ) = 
# 31 "minicparser.mly"
              ((x,Int,None))
# 2893 "minicparser.ml"
             in
            _menhir_goto_var_decl _menhir_env _menhir_stack _menhir_s _v) : 'freshtv16)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv17 * _menhir_state) * (
# 9 "minicparser.mly"
       (string)
# 2903 "minicparser.ml"
            )) = Obj.magic _menhir_stack in
            ((let ((_menhir_stack, _menhir_s), _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv18)) : 'freshtv20)
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv21 * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv22)

and _menhir_run24 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | IDENT _v ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv9 * _menhir_state) = Obj.magic _menhir_stack in
        let (_v : (
# 9 "minicparser.mly"
       (string)
# 2927 "minicparser.ml"
        )) = _v in
        ((let _menhir_stack = (_menhir_stack, _v) in
        let _menhir_env = _menhir_discard _menhir_env in
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | EGAL ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv3 * _menhir_state) * (
# 9 "minicparser.mly"
       (string)
# 2938 "minicparser.ml"
            )) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | CST _v ->
                _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState26 _v
            | CST_B _v ->
                _menhir_run7 _menhir_env (Obj.magic _menhir_stack) MenhirState26 _v
            | IDENT _v ->
                _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState26 _v
            | LPAR ->
                _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState26
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState26) : 'freshtv4)
        | SEMI ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv5 * _menhir_state) * (
# 9 "minicparser.mly"
       (string)
# 2960 "minicparser.ml"
            )) = Obj.magic _menhir_stack in
            ((let ((_menhir_stack, _menhir_s), (x : (
# 9 "minicparser.mly"
       (string)
# 2965 "minicparser.ml"
            ))) = _menhir_stack in
            let _1 = () in
            let _v : (
# 17 "minicparser.mly"
      (string * Minic.typ * Minic.expr option)
# 2971 "minicparser.ml"
            ) = 
# 32 "minicparser.mly"
               ((x,Bool,None))
# 2975 "minicparser.ml"
             in
            _menhir_goto_var_decl _menhir_env _menhir_stack _menhir_s _v) : 'freshtv6)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv7 * _menhir_state) * (
# 9 "minicparser.mly"
       (string)
# 2985 "minicparser.ml"
            )) = Obj.magic _menhir_stack in
            ((let ((_menhir_stack, _menhir_s), _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv8)) : 'freshtv10)
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv11 * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv12)

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
# 22 "minicparser.mly"
       (Minic.prog)
# 3012 "minicparser.ml"
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
        _menhir_run24 _menhir_env (Obj.magic _menhir_stack) MenhirState0
    | INT ->
        _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState0
    | END ->
        _menhir_reduce38 _menhir_env (Obj.magic _menhir_stack) MenhirState0
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState0) : 'freshtv2))

# 80 "minicparser.mly"
  

# 3045 "minicparser.ml"

# 219 "/usr/share/menhir/standard.mly"
  


# 3051 "minicparser.ml"
