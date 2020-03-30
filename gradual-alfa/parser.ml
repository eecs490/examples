
module MenhirBasics = struct
  
  exception Error
  
  type token = 
    | UNIT
    | TIMES
    | THOLE
    | THEN
    | RPRJ
    | RPAREN
    | R
    | PLUS
    | OFTYPE
    | OF
    | NUM
    | MINUS
    | LT
    | LPRJ
    | LPAREN
    | LET
    | L
    | INT of (
# 7 "parser.mly"
       (int)
# 28 "parser.ml"
  )
    | IN
    | IF
    | ID of (
# 8 "parser.mly"
       (string)
# 35 "parser.ml"
  )
    | GT
    | FUN
    | FIX
    | EQ
    | EOL
    | ELSE
    | EHOLE
    | COMMA
    | CASE
    | BOOLLIT of (
# 9 "parser.mly"
       (bool)
# 49 "parser.ml"
  )
    | BOOL
    | BE
    | ARROW
  
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
  | MenhirState113
  | MenhirState109
  | MenhirState107
  | MenhirState105
  | MenhirState103
  | MenhirState101
  | MenhirState98
  | MenhirState94
  | MenhirState92
  | MenhirState89
  | MenhirState85
  | MenhirState82
  | MenhirState78
  | MenhirState76
  | MenhirState74
  | MenhirState72
  | MenhirState71
  | MenhirState69
  | MenhirState65
  | MenhirState62
  | MenhirState58
  | MenhirState55
  | MenhirState50
  | MenhirState49
  | MenhirState42
  | MenhirState40
  | MenhirState37
  | MenhirState35
  | MenhirState34
  | MenhirState33
  | MenhirState27
  | MenhirState25
  | MenhirState19
  | MenhirState17
  | MenhirState16
  | MenhirState15
  | MenhirState13
  | MenhirState12
  | MenhirState9
  | MenhirState6
  | MenhirState5
  | MenhirState3
  | MenhirState2
  | MenhirState1
  | MenhirState0

# 21 "parser.mly"
   open Syntax 
# 118 "parser.ml"

let rec _menhir_goto_expr : _menhir_env -> 'ttv_tail -> _menhir_state -> 'tv_expr -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    match _menhir_s with
    | MenhirState42 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv349 * _menhir_state) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | OF ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv345 * _menhir_state) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | L ->
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : (('freshtv341 * _menhir_state) * _menhir_state * 'tv_expr)) = Obj.magic _menhir_stack in
                ((let _menhir_env = _menhir_discard _menhir_env in
                let _tok = _menhir_env._menhir_token in
                match _tok with
                | LPAREN ->
                    let (_menhir_env : _menhir_env) = _menhir_env in
                    let (_menhir_stack : ((('freshtv337 * _menhir_state) * _menhir_state * 'tv_expr))) = Obj.magic _menhir_stack in
                    ((let _menhir_env = _menhir_discard _menhir_env in
                    let _tok = _menhir_env._menhir_token in
                    match _tok with
                    | ID _v ->
                        _menhir_run7 _menhir_env (Obj.magic _menhir_stack) MenhirState55 _v
                    | _ ->
                        assert (not _menhir_env._menhir_error);
                        _menhir_env._menhir_error <- true;
                        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState55) : 'freshtv338)
                | _ ->
                    assert (not _menhir_env._menhir_error);
                    _menhir_env._menhir_error <- true;
                    let (_menhir_env : _menhir_env) = _menhir_env in
                    let (_menhir_stack : ((('freshtv339 * _menhir_state) * _menhir_state * 'tv_expr))) = Obj.magic _menhir_stack in
                    ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
                    _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv340)) : 'freshtv342)
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : (('freshtv343 * _menhir_state) * _menhir_state * 'tv_expr)) = Obj.magic _menhir_stack in
                ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv344)) : 'freshtv346)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv347 * _menhir_state) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv348)) : 'freshtv350)
    | MenhirState58 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (((((((('freshtv363 * _menhir_state) * _menhir_state * 'tv_expr)))) * _menhir_state * 'tv_id))) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | ELSE ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (((((((('freshtv359 * _menhir_state) * _menhir_state * 'tv_expr)))) * _menhir_state * 'tv_id))) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | R ->
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : ((((((((('freshtv355 * _menhir_state) * _menhir_state * 'tv_expr)))) * _menhir_state * 'tv_id))) * _menhir_state * 'tv_expr)) = Obj.magic _menhir_stack in
                ((let _menhir_env = _menhir_discard _menhir_env in
                let _tok = _menhir_env._menhir_token in
                match _tok with
                | LPAREN ->
                    let (_menhir_env : _menhir_env) = _menhir_env in
                    let (_menhir_stack : (((((((((('freshtv351 * _menhir_state) * _menhir_state * 'tv_expr)))) * _menhir_state * 'tv_id))) * _menhir_state * 'tv_expr))) = Obj.magic _menhir_stack in
                    ((let _menhir_env = _menhir_discard _menhir_env in
                    let _tok = _menhir_env._menhir_token in
                    match _tok with
                    | ID _v ->
                        _menhir_run7 _menhir_env (Obj.magic _menhir_stack) MenhirState62 _v
                    | _ ->
                        assert (not _menhir_env._menhir_error);
                        _menhir_env._menhir_error <- true;
                        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState62) : 'freshtv352)
                | _ ->
                    assert (not _menhir_env._menhir_error);
                    _menhir_env._menhir_error <- true;
                    let (_menhir_env : _menhir_env) = _menhir_env in
                    let (_menhir_stack : (((((((((('freshtv353 * _menhir_state) * _menhir_state * 'tv_expr)))) * _menhir_state * 'tv_id))) * _menhir_state * 'tv_expr))) = Obj.magic _menhir_stack in
                    ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
                    _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv354)) : 'freshtv356)
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : ((((((((('freshtv357 * _menhir_state) * _menhir_state * 'tv_expr)))) * _menhir_state * 'tv_id))) * _menhir_state * 'tv_expr)) = Obj.magic _menhir_stack in
                ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv358)) : 'freshtv360)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (((((((('freshtv361 * _menhir_state) * _menhir_state * 'tv_expr)))) * _menhir_state * 'tv_id))) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv362)) : 'freshtv364)
    | MenhirState65 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((((((((((((((('freshtv367 * _menhir_state) * _menhir_state * 'tv_expr)))) * _menhir_state * 'tv_id))) * _menhir_state * 'tv_expr)))) * _menhir_state * 'tv_id))) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((((((((((((((('freshtv365 * _menhir_state) * _menhir_state * 'tv_expr)))) * _menhir_state * 'tv_id))) * _menhir_state * 'tv_expr)))) * _menhir_state * 'tv_id))) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
        ((let ((((((_menhir_stack, _menhir_s), _, (e1 : 'tv_expr)), _, (x : 'tv_id)), _, (e2 : 'tv_expr)), _, (y : 'tv_id)), _, (e3 : 'tv_expr)) = _menhir_stack in
        let _15 = () in
        let _14 = () in
        let _12 = () in
        let _11 = () in
        let _10 = () in
        let _8 = () in
        let _7 = () in
        let _5 = () in
        let _4 = () in
        let _3 = () in
        let _1 = () in
        let _v : 'tv_expr = 
# 51 "parser.mly"
    ( Exp.ECase (e1, x, e2, y, e3))
# 246 "parser.ml"
         in
        _menhir_goto_expr _menhir_env _menhir_stack _menhir_s _v) : 'freshtv366)) : 'freshtv368)
    | MenhirState40 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((((((('freshtv371 * _menhir_state) * _menhir_state) * _menhir_state * 'tv_id)) * _menhir_state * 'tv_ty))) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((((((('freshtv369 * _menhir_state) * _menhir_state) * _menhir_state * 'tv_id)) * _menhir_state * 'tv_ty))) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
        ((let (((((_menhir_stack, _menhir_s), _), _, (i : 'tv_id)), _, (t : 'tv_ty)), _, (e : 'tv_expr)) = _menhir_stack in
        let _7 = () in
        let _6 = () in
        let _4 = () in
        let _2 = () in
        let _1 = () in
        let _v : 'tv_expr = 
# 43 "parser.mly"
    ( Exp.EFix (i, Some(t), e) )
# 263 "parser.ml"
         in
        _menhir_goto_expr _menhir_env _menhir_stack _menhir_s _v) : 'freshtv370)) : 'freshtv372)
    | MenhirState85 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((('freshtv375 * _menhir_state) * _menhir_state * 'tv_id)) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((('freshtv373 * _menhir_state) * _menhir_state * 'tv_id)) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
        ((let (((_menhir_stack, _menhir_s), _, (i : 'tv_id)), _, (e : 'tv_expr)) = _menhir_stack in
        let _3 = () in
        let _1 = () in
        let _v : 'tv_expr = 
# 45 "parser.mly"
    ( Exp.EFix (i, None, e) )
# 277 "parser.ml"
         in
        _menhir_goto_expr _menhir_env _menhir_stack _menhir_s _v) : 'freshtv374)) : 'freshtv376)
    | MenhirState33 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((((((('freshtv379 * _menhir_state) * _menhir_state) * _menhir_state * 'tv_id)) * _menhir_state * 'tv_ty))) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((((((('freshtv377 * _menhir_state) * _menhir_state) * _menhir_state * 'tv_id)) * _menhir_state * 'tv_ty))) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
        ((let (((((_menhir_stack, _menhir_s), _), _, (i : 'tv_id)), _, (t : 'tv_ty)), _, (e : 'tv_expr)) = _menhir_stack in
        let _7 = () in
        let _6 = () in
        let _4 = () in
        let _2 = () in
        let _1 = () in
        let _v : 'tv_expr = 
# 39 "parser.mly"
    ( Exp.EFun (i, Some(t), e) )
# 294 "parser.ml"
         in
        _menhir_goto_expr _menhir_env _menhir_stack _menhir_s _v) : 'freshtv378)) : 'freshtv380)
    | MenhirState89 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((('freshtv383 * _menhir_state) * _menhir_state * 'tv_id)) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((('freshtv381 * _menhir_state) * _menhir_state * 'tv_id)) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
        ((let (((_menhir_stack, _menhir_s), _, (i : 'tv_id)), _, (e : 'tv_expr)) = _menhir_stack in
        let _3 = () in
        let _1 = () in
        let _v : 'tv_expr = 
# 41 "parser.mly"
    ( Exp.EFun (i, None, e) )
# 308 "parser.ml"
         in
        _menhir_goto_expr _menhir_env _menhir_stack _menhir_s _v) : 'freshtv382)) : 'freshtv384)
    | MenhirState15 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv389 * _menhir_state) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | THEN ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv385 * _menhir_state) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | BOOLLIT _v ->
                _menhir_run43 _menhir_env (Obj.magic _menhir_stack) MenhirState92 _v
            | CASE ->
                _menhir_run42 _menhir_env (Obj.magic _menhir_stack) MenhirState92
            | EHOLE ->
                _menhir_run41 _menhir_env (Obj.magic _menhir_stack) MenhirState92
            | FIX ->
                _menhir_run34 _menhir_env (Obj.magic _menhir_stack) MenhirState92
            | FUN ->
                _menhir_run16 _menhir_env (Obj.magic _menhir_stack) MenhirState92
            | ID _v ->
                _menhir_run7 _menhir_env (Obj.magic _menhir_stack) MenhirState92 _v
            | IF ->
                _menhir_run15 _menhir_env (Obj.magic _menhir_stack) MenhirState92
            | INT _v ->
                _menhir_run14 _menhir_env (Obj.magic _menhir_stack) MenhirState92 _v
            | L ->
                _menhir_run13 _menhir_env (Obj.magic _menhir_stack) MenhirState92
            | LET ->
                _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState92
            | LPAREN ->
                _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState92
            | MINUS ->
                _menhir_run2 _menhir_env (Obj.magic _menhir_stack) MenhirState92
            | R ->
                _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState92
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState92) : 'freshtv386)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv387 * _menhir_state) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv388)) : 'freshtv390)
    | MenhirState92 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((('freshtv395 * _menhir_state) * _menhir_state * 'tv_expr)) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | ELSE ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ((('freshtv391 * _menhir_state) * _menhir_state * 'tv_expr)) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | BOOLLIT _v ->
                _menhir_run43 _menhir_env (Obj.magic _menhir_stack) MenhirState94 _v
            | CASE ->
                _menhir_run42 _menhir_env (Obj.magic _menhir_stack) MenhirState94
            | EHOLE ->
                _menhir_run41 _menhir_env (Obj.magic _menhir_stack) MenhirState94
            | FIX ->
                _menhir_run34 _menhir_env (Obj.magic _menhir_stack) MenhirState94
            | FUN ->
                _menhir_run16 _menhir_env (Obj.magic _menhir_stack) MenhirState94
            | ID _v ->
                _menhir_run7 _menhir_env (Obj.magic _menhir_stack) MenhirState94 _v
            | IF ->
                _menhir_run15 _menhir_env (Obj.magic _menhir_stack) MenhirState94
            | INT _v ->
                _menhir_run14 _menhir_env (Obj.magic _menhir_stack) MenhirState94 _v
            | L ->
                _menhir_run13 _menhir_env (Obj.magic _menhir_stack) MenhirState94
            | LET ->
                _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState94
            | LPAREN ->
                _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState94
            | MINUS ->
                _menhir_run2 _menhir_env (Obj.magic _menhir_stack) MenhirState94
            | R ->
                _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState94
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState94) : 'freshtv392)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ((('freshtv393 * _menhir_state) * _menhir_state * 'tv_expr)) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv394)) : 'freshtv396)
    | MenhirState94 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((((('freshtv399 * _menhir_state) * _menhir_state * 'tv_expr)) * _menhir_state * 'tv_expr)) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((((('freshtv397 * _menhir_state) * _menhir_state * 'tv_expr)) * _menhir_state * 'tv_expr)) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
        ((let ((((_menhir_stack, _menhir_s), _, (e1 : 'tv_expr)), _, (e2 : 'tv_expr)), _, (e3 : 'tv_expr)) = _menhir_stack in
        let _5 = () in
        let _3 = () in
        let _1 = () in
        let _v : 'tv_expr = 
# 37 "parser.mly"
    ( Exp.EIf (e1, e2, e3) )
# 421 "parser.ml"
         in
        _menhir_goto_expr _menhir_env _menhir_stack _menhir_s _v) : 'freshtv398)) : 'freshtv400)
    | MenhirState13 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv403 * _menhir_state) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv401 * _menhir_state) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
        ((let ((_menhir_stack, _menhir_s), _, (e : 'tv_expr)) = _menhir_stack in
        let _1 = () in
        let _v : 'tv_expr = 
# 47 "parser.mly"
    ( Exp.EInjL (e) )
# 434 "parser.ml"
         in
        _menhir_goto_expr _menhir_env _menhir_stack _menhir_s _v) : 'freshtv402)) : 'freshtv404)
    | MenhirState12 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((((((('freshtv409 * _menhir_state) * _menhir_state) * _menhir_state * 'tv_id)) * _menhir_state * 'tv_id))) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | IN ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ((((((('freshtv405 * _menhir_state) * _menhir_state) * _menhir_state * 'tv_id)) * _menhir_state * 'tv_id))) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | BOOLLIT _v ->
                _menhir_run43 _menhir_env (Obj.magic _menhir_stack) MenhirState98 _v
            | CASE ->
                _menhir_run42 _menhir_env (Obj.magic _menhir_stack) MenhirState98
            | EHOLE ->
                _menhir_run41 _menhir_env (Obj.magic _menhir_stack) MenhirState98
            | FIX ->
                _menhir_run34 _menhir_env (Obj.magic _menhir_stack) MenhirState98
            | FUN ->
                _menhir_run16 _menhir_env (Obj.magic _menhir_stack) MenhirState98
            | ID _v ->
                _menhir_run7 _menhir_env (Obj.magic _menhir_stack) MenhirState98 _v
            | IF ->
                _menhir_run15 _menhir_env (Obj.magic _menhir_stack) MenhirState98
            | INT _v ->
                _menhir_run14 _menhir_env (Obj.magic _menhir_stack) MenhirState98 _v
            | L ->
                _menhir_run13 _menhir_env (Obj.magic _menhir_stack) MenhirState98
            | LET ->
                _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState98
            | LPAREN ->
                _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState98
            | MINUS ->
                _menhir_run2 _menhir_env (Obj.magic _menhir_stack) MenhirState98
            | R ->
                _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState98
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState98) : 'freshtv406)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ((((((('freshtv407 * _menhir_state) * _menhir_state) * _menhir_state * 'tv_id)) * _menhir_state * 'tv_id))) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv408)) : 'freshtv410)
    | MenhirState98 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((((((((('freshtv413 * _menhir_state) * _menhir_state) * _menhir_state * 'tv_id)) * _menhir_state * 'tv_id))) * _menhir_state * 'tv_expr)) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((((((((('freshtv411 * _menhir_state) * _menhir_state) * _menhir_state * 'tv_id)) * _menhir_state * 'tv_id))) * _menhir_state * 'tv_expr)) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
        ((let ((((((_menhir_stack, _menhir_s), _), _, (x : 'tv_id)), _, (y : 'tv_id)), _, (e1 : 'tv_expr)), _, (e2 : 'tv_expr)) = _menhir_stack in
        let _9 = () in
        let _7 = () in
        let _6 = () in
        let _4 = () in
        let _2 = () in
        let _1 = () in
        let _v : 'tv_expr = 
# 53 "parser.mly"
    ( Exp.ELetPair (x, y, e1, e2))
# 501 "parser.ml"
         in
        _menhir_goto_expr _menhir_env _menhir_stack _menhir_s _v) : 'freshtv412)) : 'freshtv414)
    | MenhirState103 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((((('freshtv419 * _menhir_state) * _menhir_state * 'tv_id)) * _menhir_state * 'tv_ty)) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | IN ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ((((('freshtv415 * _menhir_state) * _menhir_state * 'tv_id)) * _menhir_state * 'tv_ty)) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | BOOLLIT _v ->
                _menhir_run43 _menhir_env (Obj.magic _menhir_stack) MenhirState105 _v
            | CASE ->
                _menhir_run42 _menhir_env (Obj.magic _menhir_stack) MenhirState105
            | EHOLE ->
                _menhir_run41 _menhir_env (Obj.magic _menhir_stack) MenhirState105
            | FIX ->
                _menhir_run34 _menhir_env (Obj.magic _menhir_stack) MenhirState105
            | FUN ->
                _menhir_run16 _menhir_env (Obj.magic _menhir_stack) MenhirState105
            | ID _v ->
                _menhir_run7 _menhir_env (Obj.magic _menhir_stack) MenhirState105 _v
            | IF ->
                _menhir_run15 _menhir_env (Obj.magic _menhir_stack) MenhirState105
            | INT _v ->
                _menhir_run14 _menhir_env (Obj.magic _menhir_stack) MenhirState105 _v
            | L ->
                _menhir_run13 _menhir_env (Obj.magic _menhir_stack) MenhirState105
            | LET ->
                _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState105
            | LPAREN ->
                _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState105
            | MINUS ->
                _menhir_run2 _menhir_env (Obj.magic _menhir_stack) MenhirState105
            | R ->
                _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState105
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState105) : 'freshtv416)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ((((('freshtv417 * _menhir_state) * _menhir_state * 'tv_id)) * _menhir_state * 'tv_ty)) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv418)) : 'freshtv420)
    | MenhirState105 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((((((('freshtv423 * _menhir_state) * _menhir_state * 'tv_id)) * _menhir_state * 'tv_ty)) * _menhir_state * 'tv_expr)) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((((((('freshtv421 * _menhir_state) * _menhir_state * 'tv_id)) * _menhir_state * 'tv_ty)) * _menhir_state * 'tv_expr)) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
        ((let (((((_menhir_stack, _menhir_s), _, (i : 'tv_id)), _, (t : 'tv_ty)), _, (e1 : 'tv_expr)), _, (e2 : 'tv_expr)) = _menhir_stack in
        let _7 = () in
        let _5 = () in
        let _3 = () in
        let _1 = () in
        let _v : 'tv_expr = 
# 33 "parser.mly"
    ( Exp.ELet (i, Some(t), e1, e2) )
# 566 "parser.ml"
         in
        _menhir_goto_expr _menhir_env _menhir_stack _menhir_s _v) : 'freshtv422)) : 'freshtv424)
    | MenhirState107 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((('freshtv429 * _menhir_state) * _menhir_state * 'tv_id)) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | IN ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ((('freshtv425 * _menhir_state) * _menhir_state * 'tv_id)) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | BOOLLIT _v ->
                _menhir_run43 _menhir_env (Obj.magic _menhir_stack) MenhirState109 _v
            | CASE ->
                _menhir_run42 _menhir_env (Obj.magic _menhir_stack) MenhirState109
            | EHOLE ->
                _menhir_run41 _menhir_env (Obj.magic _menhir_stack) MenhirState109
            | FIX ->
                _menhir_run34 _menhir_env (Obj.magic _menhir_stack) MenhirState109
            | FUN ->
                _menhir_run16 _menhir_env (Obj.magic _menhir_stack) MenhirState109
            | ID _v ->
                _menhir_run7 _menhir_env (Obj.magic _menhir_stack) MenhirState109 _v
            | IF ->
                _menhir_run15 _menhir_env (Obj.magic _menhir_stack) MenhirState109
            | INT _v ->
                _menhir_run14 _menhir_env (Obj.magic _menhir_stack) MenhirState109 _v
            | L ->
                _menhir_run13 _menhir_env (Obj.magic _menhir_stack) MenhirState109
            | LET ->
                _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState109
            | LPAREN ->
                _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState109
            | MINUS ->
                _menhir_run2 _menhir_env (Obj.magic _menhir_stack) MenhirState109
            | R ->
                _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState109
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState109) : 'freshtv426)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ((('freshtv427 * _menhir_state) * _menhir_state * 'tv_id)) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv428)) : 'freshtv430)
    | MenhirState109 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((((('freshtv433 * _menhir_state) * _menhir_state * 'tv_id)) * _menhir_state * 'tv_expr)) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((((('freshtv431 * _menhir_state) * _menhir_state * 'tv_id)) * _menhir_state * 'tv_expr)) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
        ((let ((((_menhir_stack, _menhir_s), _, (i : 'tv_id)), _, (e1 : 'tv_expr)), _, (e2 : 'tv_expr)) = _menhir_stack in
        let _5 = () in
        let _3 = () in
        let _1 = () in
        let _v : 'tv_expr = 
# 35 "parser.mly"
    ( Exp.ELet (i, None, e1, e2) )
# 630 "parser.ml"
         in
        _menhir_goto_expr _menhir_env _menhir_stack _menhir_s _v) : 'freshtv432)) : 'freshtv434)
    | MenhirState3 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv443 * _menhir_state) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | COMMA ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv435 * _menhir_state) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | BOOLLIT _v ->
                _menhir_run43 _menhir_env (Obj.magic _menhir_stack) MenhirState113 _v
            | CASE ->
                _menhir_run42 _menhir_env (Obj.magic _menhir_stack) MenhirState113
            | EHOLE ->
                _menhir_run41 _menhir_env (Obj.magic _menhir_stack) MenhirState113
            | FIX ->
                _menhir_run34 _menhir_env (Obj.magic _menhir_stack) MenhirState113
            | FUN ->
                _menhir_run16 _menhir_env (Obj.magic _menhir_stack) MenhirState113
            | ID _v ->
                _menhir_run7 _menhir_env (Obj.magic _menhir_stack) MenhirState113 _v
            | IF ->
                _menhir_run15 _menhir_env (Obj.magic _menhir_stack) MenhirState113
            | INT _v ->
                _menhir_run14 _menhir_env (Obj.magic _menhir_stack) MenhirState113 _v
            | L ->
                _menhir_run13 _menhir_env (Obj.magic _menhir_stack) MenhirState113
            | LET ->
                _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState113
            | LPAREN ->
                _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState113
            | MINUS ->
                _menhir_run2 _menhir_env (Obj.magic _menhir_stack) MenhirState113
            | R ->
                _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState113
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState113) : 'freshtv436)
        | RPAREN ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv439 * _menhir_state) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv437 * _menhir_state) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
            ((let ((_menhir_stack, _menhir_s), _, (e : 'tv_expr)) = _menhir_stack in
            let _3 = () in
            let _1 = () in
            let _v : 'tv_simple = 
# 102 "parser.mly"
    ( e )
# 687 "parser.ml"
             in
            _menhir_goto_simple _menhir_env _menhir_stack _menhir_s _v) : 'freshtv438)) : 'freshtv440)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv441 * _menhir_state) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv442)) : 'freshtv444)
    | MenhirState113 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((('freshtv451 * _menhir_state) * _menhir_state * 'tv_expr)) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | RPAREN ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ((('freshtv447 * _menhir_state) * _menhir_state * 'tv_expr)) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ((('freshtv445 * _menhir_state) * _menhir_state * 'tv_expr)) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
            ((let (((_menhir_stack, _menhir_s), _, (e1 : 'tv_expr)), _, (e2 : 'tv_expr)) = _menhir_stack in
            let _5 = () in
            let _3 = () in
            let _1 = () in
            let _v : 'tv_simple = 
# 106 "parser.mly"
    ( Exp.EPair (e1, e2) )
# 716 "parser.ml"
             in
            _menhir_goto_simple _menhir_env _menhir_stack _menhir_s _v) : 'freshtv446)) : 'freshtv448)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ((('freshtv449 * _menhir_state) * _menhir_state * 'tv_expr)) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv450)) : 'freshtv452)
    | MenhirState1 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv455 * _menhir_state) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv453 * _menhir_state) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
        ((let ((_menhir_stack, _menhir_s), _, (e : 'tv_expr)) = _menhir_stack in
        let _1 = () in
        let _v : 'tv_expr = 
# 49 "parser.mly"
    ( Exp.EInjR (e) )
# 736 "parser.ml"
         in
        _menhir_goto_expr _menhir_env _menhir_stack _menhir_s _v) : 'freshtv454)) : 'freshtv456)
    | MenhirState0 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv469 * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | EOL ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv465 * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
            ((let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv463 * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, (e : 'tv_expr)) = _menhir_stack in
            let _2 = () in
            let _v : (
# 20 "parser.mly"
       (Syntax.Exp.t)
# 755 "parser.ml"
            ) = 
# 27 "parser.mly"
    ( e )
# 759 "parser.ml"
             in
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv461) = _menhir_stack in
            let (_menhir_s : _menhir_state) = _menhir_s in
            let (_v : (
# 20 "parser.mly"
       (Syntax.Exp.t)
# 767 "parser.ml"
            )) = _v in
            ((let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv459) = Obj.magic _menhir_stack in
            let (_menhir_s : _menhir_state) = _menhir_s in
            let (_v : (
# 20 "parser.mly"
       (Syntax.Exp.t)
# 775 "parser.ml"
            )) = _v in
            ((let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv457) = Obj.magic _menhir_stack in
            let (_menhir_s : _menhir_state) = _menhir_s in
            let ((_1 : (
# 20 "parser.mly"
       (Syntax.Exp.t)
# 783 "parser.ml"
            )) : (
# 20 "parser.mly"
       (Syntax.Exp.t)
# 787 "parser.ml"
            )) = _v in
            (Obj.magic _1 : 'freshtv458)) : 'freshtv460)) : 'freshtv462)) : 'freshtv464)) : 'freshtv466)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv467 * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv468)) : 'freshtv470)
    | _ ->
        _menhir_fail ()

and _menhir_goto_ty : _menhir_env -> 'ttv_tail -> _menhir_state -> 'tv_ty -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    match _menhir_s with
    | MenhirState19 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (((('freshtv315 * _menhir_state) * _menhir_state) * _menhir_state * 'tv_id)) * _menhir_state * 'tv_ty) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | RPAREN ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (((('freshtv311 * _menhir_state) * _menhir_state) * _menhir_state * 'tv_id)) * _menhir_state * 'tv_ty) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | ARROW ->
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : ((((('freshtv307 * _menhir_state) * _menhir_state) * _menhir_state * 'tv_id)) * _menhir_state * 'tv_ty)) = Obj.magic _menhir_stack in
                ((let _menhir_env = _menhir_discard _menhir_env in
                let _tok = _menhir_env._menhir_token in
                match _tok with
                | BOOLLIT _v ->
                    _menhir_run43 _menhir_env (Obj.magic _menhir_stack) MenhirState33 _v
                | CASE ->
                    _menhir_run42 _menhir_env (Obj.magic _menhir_stack) MenhirState33
                | EHOLE ->
                    _menhir_run41 _menhir_env (Obj.magic _menhir_stack) MenhirState33
                | FIX ->
                    _menhir_run34 _menhir_env (Obj.magic _menhir_stack) MenhirState33
                | FUN ->
                    _menhir_run16 _menhir_env (Obj.magic _menhir_stack) MenhirState33
                | ID _v ->
                    _menhir_run7 _menhir_env (Obj.magic _menhir_stack) MenhirState33 _v
                | IF ->
                    _menhir_run15 _menhir_env (Obj.magic _menhir_stack) MenhirState33
                | INT _v ->
                    _menhir_run14 _menhir_env (Obj.magic _menhir_stack) MenhirState33 _v
                | L ->
                    _menhir_run13 _menhir_env (Obj.magic _menhir_stack) MenhirState33
                | LET ->
                    _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState33
                | LPAREN ->
                    _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState33
                | MINUS ->
                    _menhir_run2 _menhir_env (Obj.magic _menhir_stack) MenhirState33
                | R ->
                    _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState33
                | _ ->
                    assert (not _menhir_env._menhir_error);
                    _menhir_env._menhir_error <- true;
                    _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState33) : 'freshtv308)
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : ((((('freshtv309 * _menhir_state) * _menhir_state) * _menhir_state * 'tv_id)) * _menhir_state * 'tv_ty)) = Obj.magic _menhir_stack in
                ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv310)) : 'freshtv312)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (((('freshtv313 * _menhir_state) * _menhir_state) * _menhir_state * 'tv_id)) * _menhir_state * 'tv_ty) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv314)) : 'freshtv316)
    | MenhirState37 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (((('freshtv325 * _menhir_state) * _menhir_state) * _menhir_state * 'tv_id)) * _menhir_state * 'tv_ty) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | RPAREN ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (((('freshtv321 * _menhir_state) * _menhir_state) * _menhir_state * 'tv_id)) * _menhir_state * 'tv_ty) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | ARROW ->
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : ((((('freshtv317 * _menhir_state) * _menhir_state) * _menhir_state * 'tv_id)) * _menhir_state * 'tv_ty)) = Obj.magic _menhir_stack in
                ((let _menhir_env = _menhir_discard _menhir_env in
                let _tok = _menhir_env._menhir_token in
                match _tok with
                | BOOLLIT _v ->
                    _menhir_run43 _menhir_env (Obj.magic _menhir_stack) MenhirState40 _v
                | CASE ->
                    _menhir_run42 _menhir_env (Obj.magic _menhir_stack) MenhirState40
                | EHOLE ->
                    _menhir_run41 _menhir_env (Obj.magic _menhir_stack) MenhirState40
                | FIX ->
                    _menhir_run34 _menhir_env (Obj.magic _menhir_stack) MenhirState40
                | FUN ->
                    _menhir_run16 _menhir_env (Obj.magic _menhir_stack) MenhirState40
                | ID _v ->
                    _menhir_run7 _menhir_env (Obj.magic _menhir_stack) MenhirState40 _v
                | IF ->
                    _menhir_run15 _menhir_env (Obj.magic _menhir_stack) MenhirState40
                | INT _v ->
                    _menhir_run14 _menhir_env (Obj.magic _menhir_stack) MenhirState40 _v
                | L ->
                    _menhir_run13 _menhir_env (Obj.magic _menhir_stack) MenhirState40
                | LET ->
                    _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState40
                | LPAREN ->
                    _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState40
                | MINUS ->
                    _menhir_run2 _menhir_env (Obj.magic _menhir_stack) MenhirState40
                | R ->
                    _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState40
                | _ ->
                    assert (not _menhir_env._menhir_error);
                    _menhir_env._menhir_error <- true;
                    _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState40) : 'freshtv318)
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : ((((('freshtv319 * _menhir_state) * _menhir_state) * _menhir_state * 'tv_id)) * _menhir_state * 'tv_ty)) = Obj.magic _menhir_stack in
                ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv320)) : 'freshtv322)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (((('freshtv323 * _menhir_state) * _menhir_state) * _menhir_state * 'tv_id)) * _menhir_state * 'tv_ty) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv324)) : 'freshtv326)
    | MenhirState82 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv329 * _menhir_state * 'tv_base_ty)) * _menhir_state * 'tv_ty) = Obj.magic _menhir_stack in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv327 * _menhir_state * 'tv_base_ty)) * _menhir_state * 'tv_ty) = Obj.magic _menhir_stack in
        ((let ((_menhir_stack, _menhir_s, (t1 : 'tv_base_ty)), _, (t2 : 'tv_ty)) = _menhir_stack in
        let _2 = () in
        let _v : 'tv_ty = 
# 116 "parser.mly"
    ( Typ.TArrow (t1, t2) )
# 938 "parser.ml"
         in
        _menhir_goto_ty _menhir_env _menhir_stack _menhir_s _v) : 'freshtv328)) : 'freshtv330)
    | MenhirState101 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((('freshtv335 * _menhir_state) * _menhir_state * 'tv_id)) * _menhir_state * 'tv_ty) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | BE ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ((('freshtv331 * _menhir_state) * _menhir_state * 'tv_id)) * _menhir_state * 'tv_ty) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | BOOLLIT _v ->
                _menhir_run43 _menhir_env (Obj.magic _menhir_stack) MenhirState103 _v
            | CASE ->
                _menhir_run42 _menhir_env (Obj.magic _menhir_stack) MenhirState103
            | EHOLE ->
                _menhir_run41 _menhir_env (Obj.magic _menhir_stack) MenhirState103
            | FIX ->
                _menhir_run34 _menhir_env (Obj.magic _menhir_stack) MenhirState103
            | FUN ->
                _menhir_run16 _menhir_env (Obj.magic _menhir_stack) MenhirState103
            | ID _v ->
                _menhir_run7 _menhir_env (Obj.magic _menhir_stack) MenhirState103 _v
            | IF ->
                _menhir_run15 _menhir_env (Obj.magic _menhir_stack) MenhirState103
            | INT _v ->
                _menhir_run14 _menhir_env (Obj.magic _menhir_stack) MenhirState103 _v
            | L ->
                _menhir_run13 _menhir_env (Obj.magic _menhir_stack) MenhirState103
            | LET ->
                _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState103
            | LPAREN ->
                _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState103
            | MINUS ->
                _menhir_run2 _menhir_env (Obj.magic _menhir_stack) MenhirState103
            | R ->
                _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState103
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState103) : 'freshtv332)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ((('freshtv333 * _menhir_state) * _menhir_state * 'tv_id)) * _menhir_state * 'tv_ty) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv334)) : 'freshtv336)
    | _ ->
        _menhir_fail ()

and _menhir_goto_boolean : _menhir_env -> 'ttv_tail -> _menhir_state -> 'tv_boolean -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv305) = Obj.magic _menhir_stack in
    let (_menhir_s : _menhir_state) = _menhir_s in
    let (_v : 'tv_boolean) = _v in
    ((let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv303) = Obj.magic _menhir_stack in
    let (_menhir_s : _menhir_state) = _menhir_s in
    let ((e : 'tv_boolean) : 'tv_boolean) = _v in
    ((let _v : 'tv_expr = 
# 31 "parser.mly"
    ( e )
# 1006 "parser.ml"
     in
    _menhir_goto_expr _menhir_env _menhir_stack _menhir_s _v) : 'freshtv304)) : 'freshtv306)

and _menhir_run69 : _menhir_env -> 'ttv_tail * _menhir_state * 'tv_arith -> 'ttv_return =
  fun _menhir_env _menhir_stack ->
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | BOOLLIT _v ->
        _menhir_run43 _menhir_env (Obj.magic _menhir_stack) MenhirState69 _v
    | EHOLE ->
        _menhir_run41 _menhir_env (Obj.magic _menhir_stack) MenhirState69
    | ID _v ->
        _menhir_run7 _menhir_env (Obj.magic _menhir_stack) MenhirState69 _v
    | INT _v ->
        _menhir_run14 _menhir_env (Obj.magic _menhir_stack) MenhirState69 _v
    | LPAREN ->
        _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState69
    | MINUS ->
        _menhir_run2 _menhir_env (Obj.magic _menhir_stack) MenhirState69
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState69

and _menhir_run72 : _menhir_env -> 'ttv_tail * _menhir_state * 'tv_arith -> 'ttv_return =
  fun _menhir_env _menhir_stack ->
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | BOOLLIT _v ->
        _menhir_run43 _menhir_env (Obj.magic _menhir_stack) MenhirState72 _v
    | EHOLE ->
        _menhir_run41 _menhir_env (Obj.magic _menhir_stack) MenhirState72
    | ID _v ->
        _menhir_run7 _menhir_env (Obj.magic _menhir_stack) MenhirState72 _v
    | INT _v ->
        _menhir_run14 _menhir_env (Obj.magic _menhir_stack) MenhirState72 _v
    | LPAREN ->
        _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState72
    | MINUS ->
        _menhir_run2 _menhir_env (Obj.magic _menhir_stack) MenhirState72
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState72

and _menhir_goto_ty_sum : _menhir_env -> 'ttv_tail -> _menhir_state -> 'tv_ty_sum -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv301 * _menhir_state * 'tv_ty_sum) = Obj.magic _menhir_stack in
    ((assert (not _menhir_env._menhir_error);
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | PLUS ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv295 * _menhir_state * 'tv_ty_sum) = Obj.magic _menhir_stack in
        ((let _menhir_env = _menhir_discard _menhir_env in
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | BOOL ->
            _menhir_run23 _menhir_env (Obj.magic _menhir_stack) MenhirState25
        | NUM ->
            _menhir_run22 _menhir_env (Obj.magic _menhir_stack) MenhirState25
        | THOLE ->
            _menhir_run21 _menhir_env (Obj.magic _menhir_stack) MenhirState25
        | UNIT ->
            _menhir_run20 _menhir_env (Obj.magic _menhir_stack) MenhirState25
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState25) : 'freshtv296)
    | BE | RPAREN ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv297 * _menhir_state * 'tv_ty_sum) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, (t : 'tv_ty_sum)) = _menhir_stack in
        let _v : 'tv_ty = 
# 114 "parser.mly"
    ( t )
# 1087 "parser.ml"
         in
        _menhir_goto_ty _menhir_env _menhir_stack _menhir_s _v) : 'freshtv298)
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv299 * _menhir_state * 'tv_ty_sum) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv300)) : 'freshtv302)

and _menhir_run27 : _menhir_env -> 'ttv_tail * _menhir_state * 'tv_ty_prod -> 'ttv_return =
  fun _menhir_env _menhir_stack ->
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | BOOL ->
        _menhir_run23 _menhir_env (Obj.magic _menhir_stack) MenhirState27
    | NUM ->
        _menhir_run22 _menhir_env (Obj.magic _menhir_stack) MenhirState27
    | THOLE ->
        _menhir_run21 _menhir_env (Obj.magic _menhir_stack) MenhirState27
    | UNIT ->
        _menhir_run20 _menhir_env (Obj.magic _menhir_stack) MenhirState27
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState27

and _menhir_goto_arith : _menhir_env -> 'ttv_tail -> _menhir_state -> 'tv_arith -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    match _menhir_s with
    | MenhirState0 | MenhirState1 | MenhirState3 | MenhirState113 | MenhirState107 | MenhirState109 | MenhirState103 | MenhirState105 | MenhirState12 | MenhirState98 | MenhirState13 | MenhirState15 | MenhirState92 | MenhirState94 | MenhirState89 | MenhirState33 | MenhirState85 | MenhirState40 | MenhirState42 | MenhirState58 | MenhirState65 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv275 * _menhir_state * 'tv_arith) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | EQ ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv265 * _menhir_state * 'tv_arith) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | BOOLLIT _v ->
                _menhir_run43 _menhir_env (Obj.magic _menhir_stack) MenhirState78 _v
            | EHOLE ->
                _menhir_run41 _menhir_env (Obj.magic _menhir_stack) MenhirState78
            | ID _v ->
                _menhir_run7 _menhir_env (Obj.magic _menhir_stack) MenhirState78 _v
            | INT _v ->
                _menhir_run14 _menhir_env (Obj.magic _menhir_stack) MenhirState78 _v
            | LPAREN ->
                _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState78
            | MINUS ->
                _menhir_run2 _menhir_env (Obj.magic _menhir_stack) MenhirState78
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState78) : 'freshtv266)
        | GT ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv267 * _menhir_state * 'tv_arith) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | BOOLLIT _v ->
                _menhir_run43 _menhir_env (Obj.magic _menhir_stack) MenhirState76 _v
            | EHOLE ->
                _menhir_run41 _menhir_env (Obj.magic _menhir_stack) MenhirState76
            | ID _v ->
                _menhir_run7 _menhir_env (Obj.magic _menhir_stack) MenhirState76 _v
            | INT _v ->
                _menhir_run14 _menhir_env (Obj.magic _menhir_stack) MenhirState76 _v
            | LPAREN ->
                _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState76
            | MINUS ->
                _menhir_run2 _menhir_env (Obj.magic _menhir_stack) MenhirState76
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState76) : 'freshtv268)
        | LT ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv269 * _menhir_state * 'tv_arith) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | BOOLLIT _v ->
                _menhir_run43 _menhir_env (Obj.magic _menhir_stack) MenhirState74 _v
            | EHOLE ->
                _menhir_run41 _menhir_env (Obj.magic _menhir_stack) MenhirState74
            | ID _v ->
                _menhir_run7 _menhir_env (Obj.magic _menhir_stack) MenhirState74 _v
            | INT _v ->
                _menhir_run14 _menhir_env (Obj.magic _menhir_stack) MenhirState74 _v
            | LPAREN ->
                _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState74
            | MINUS ->
                _menhir_run2 _menhir_env (Obj.magic _menhir_stack) MenhirState74
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState74) : 'freshtv270)
        | MINUS ->
            _menhir_run72 _menhir_env (Obj.magic _menhir_stack)
        | PLUS ->
            _menhir_run69 _menhir_env (Obj.magic _menhir_stack)
        | COMMA | ELSE | EOL | IN | OF | RPAREN | THEN ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv271 * _menhir_state * 'tv_arith) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, (e : 'tv_arith)) = _menhir_stack in
            let _v : 'tv_boolean = 
# 58 "parser.mly"
    ( e )
# 1203 "parser.ml"
             in
            _menhir_goto_boolean _menhir_env _menhir_stack _menhir_s _v) : 'freshtv272)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv273 * _menhir_state * 'tv_arith) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv274)) : 'freshtv276)
    | MenhirState74 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv281 * _menhir_state * 'tv_arith)) * _menhir_state * 'tv_arith) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | MINUS ->
            _menhir_run72 _menhir_env (Obj.magic _menhir_stack)
        | PLUS ->
            _menhir_run69 _menhir_env (Obj.magic _menhir_stack)
        | COMMA | ELSE | EOL | IN | OF | RPAREN | THEN ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv277 * _menhir_state * 'tv_arith)) * _menhir_state * 'tv_arith) = Obj.magic _menhir_stack in
            ((let ((_menhir_stack, _menhir_s, (e1 : 'tv_arith)), _, (e2 : 'tv_arith)) = _menhir_stack in
            let _2 = () in
            let _v : 'tv_boolean = 
# 62 "parser.mly"
    ( Exp.EBinOp (e1, Exp.OpLt, e2) )
# 1231 "parser.ml"
             in
            _menhir_goto_boolean _menhir_env _menhir_stack _menhir_s _v) : 'freshtv278)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv279 * _menhir_state * 'tv_arith)) * _menhir_state * 'tv_arith) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv280)) : 'freshtv282)
    | MenhirState76 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv287 * _menhir_state * 'tv_arith)) * _menhir_state * 'tv_arith) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | MINUS ->
            _menhir_run72 _menhir_env (Obj.magic _menhir_stack)
        | PLUS ->
            _menhir_run69 _menhir_env (Obj.magic _menhir_stack)
        | COMMA | ELSE | EOL | IN | OF | RPAREN | THEN ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv283 * _menhir_state * 'tv_arith)) * _menhir_state * 'tv_arith) = Obj.magic _menhir_stack in
            ((let ((_menhir_stack, _menhir_s, (e1 : 'tv_arith)), _, (e2 : 'tv_arith)) = _menhir_stack in
            let _2 = () in
            let _v : 'tv_boolean = 
# 60 "parser.mly"
    ( Exp.EBinOp (e1, Exp.OpGt, e2) )
# 1259 "parser.ml"
             in
            _menhir_goto_boolean _menhir_env _menhir_stack _menhir_s _v) : 'freshtv284)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv285 * _menhir_state * 'tv_arith)) * _menhir_state * 'tv_arith) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv286)) : 'freshtv288)
    | MenhirState78 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv293 * _menhir_state * 'tv_arith)) * _menhir_state * 'tv_arith) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | MINUS ->
            _menhir_run72 _menhir_env (Obj.magic _menhir_stack)
        | PLUS ->
            _menhir_run69 _menhir_env (Obj.magic _menhir_stack)
        | COMMA | ELSE | EOL | IN | OF | RPAREN | THEN ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv289 * _menhir_state * 'tv_arith)) * _menhir_state * 'tv_arith) = Obj.magic _menhir_stack in
            ((let ((_menhir_stack, _menhir_s, (e1 : 'tv_arith)), _, (e2 : 'tv_arith)) = _menhir_stack in
            let _2 = () in
            let _v : 'tv_boolean = 
# 64 "parser.mly"
    ( Exp.EBinOp (e1, Exp.OpEq, e2) )
# 1287 "parser.ml"
             in
            _menhir_goto_boolean _menhir_env _menhir_stack _menhir_s _v) : 'freshtv290)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv291 * _menhir_state * 'tv_arith)) * _menhir_state * 'tv_arith) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv292)) : 'freshtv294)
    | _ ->
        _menhir_fail ()

and _menhir_run49 : _menhir_env -> 'ttv_tail * _menhir_state * 'tv_factor -> 'ttv_return =
  fun _menhir_env _menhir_stack ->
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | BOOLLIT _v ->
        _menhir_run43 _menhir_env (Obj.magic _menhir_stack) MenhirState49 _v
    | EHOLE ->
        _menhir_run41 _menhir_env (Obj.magic _menhir_stack) MenhirState49
    | ID _v ->
        _menhir_run7 _menhir_env (Obj.magic _menhir_stack) MenhirState49 _v
    | INT _v ->
        _menhir_run14 _menhir_env (Obj.magic _menhir_stack) MenhirState49 _v
    | LPAREN ->
        _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState49
    | MINUS ->
        _menhir_run2 _menhir_env (Obj.magic _menhir_stack) MenhirState49
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState49

and _menhir_reduce42 : _menhir_env -> 'ttv_tail * _menhir_state * 'tv_base_ty -> 'ttv_return =
  fun _menhir_env _menhir_stack ->
    let (_menhir_stack, _menhir_s, (t : 'tv_base_ty)) = _menhir_stack in
    let _v : 'tv_ty_prod = 
# 126 "parser.mly"
    ( t )
# 1328 "parser.ml"
     in
    _menhir_goto_ty_prod _menhir_env _menhir_stack _menhir_s _v

and _menhir_goto_ty_prod : _menhir_env -> 'ttv_tail -> _menhir_state -> 'tv_ty_prod -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    match _menhir_s with
    | MenhirState25 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv257 * _menhir_state * 'tv_ty_sum)) * _menhir_state * 'tv_ty_prod) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | TIMES ->
            _menhir_run27 _menhir_env (Obj.magic _menhir_stack)
        | BE | PLUS | RPAREN ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv253 * _menhir_state * 'tv_ty_sum)) * _menhir_state * 'tv_ty_prod) = Obj.magic _menhir_stack in
            ((let ((_menhir_stack, _menhir_s, (t1 : 'tv_ty_sum)), _, (t2 : 'tv_ty_prod)) = _menhir_stack in
            let _2 = () in
            let _v : 'tv_ty_sum = 
# 122 "parser.mly"
    ( Typ.TSum (t1, t2) )
# 1352 "parser.ml"
             in
            _menhir_goto_ty_sum _menhir_env _menhir_stack _menhir_s _v) : 'freshtv254)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv255 * _menhir_state * 'tv_ty_sum)) * _menhir_state * 'tv_ty_prod) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv256)) : 'freshtv258)
    | MenhirState101 | MenhirState82 | MenhirState37 | MenhirState19 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv263 * _menhir_state * 'tv_ty_prod) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | TIMES ->
            _menhir_run27 _menhir_env (Obj.magic _menhir_stack)
        | BE | PLUS | RPAREN ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv259 * _menhir_state * 'tv_ty_prod) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, (t : 'tv_ty_prod)) = _menhir_stack in
            let _v : 'tv_ty_sum = 
# 120 "parser.mly"
    ( t )
# 1377 "parser.ml"
             in
            _menhir_goto_ty_sum _menhir_env _menhir_stack _menhir_s _v) : 'freshtv260)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv261 * _menhir_state * 'tv_ty_prod) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv262)) : 'freshtv264)
    | _ ->
        _menhir_fail ()

and _menhir_goto_factor : _menhir_env -> 'ttv_tail -> _menhir_state -> 'tv_factor -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    match _menhir_s with
    | MenhirState0 | MenhirState1 | MenhirState113 | MenhirState3 | MenhirState109 | MenhirState107 | MenhirState105 | MenhirState103 | MenhirState98 | MenhirState12 | MenhirState13 | MenhirState94 | MenhirState92 | MenhirState15 | MenhirState89 | MenhirState33 | MenhirState85 | MenhirState40 | MenhirState78 | MenhirState76 | MenhirState74 | MenhirState65 | MenhirState58 | MenhirState42 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv239 * _menhir_state * 'tv_factor) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | TIMES ->
            _menhir_run49 _menhir_env (Obj.magic _menhir_stack)
        | COMMA | ELSE | EOL | EQ | GT | IN | LT | MINUS | OF | PLUS | RPAREN | THEN ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv235 * _menhir_state * 'tv_factor) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, (e : 'tv_factor)) = _menhir_stack in
            let _v : 'tv_arith = 
# 68 "parser.mly"
    ( e )
# 1409 "parser.ml"
             in
            _menhir_goto_arith _menhir_env _menhir_stack _menhir_s _v) : 'freshtv236)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv237 * _menhir_state * 'tv_factor) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv238)) : 'freshtv240)
    | MenhirState69 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv245 * _menhir_state * 'tv_arith)) * _menhir_state * 'tv_factor) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | TIMES ->
            _menhir_run49 _menhir_env (Obj.magic _menhir_stack)
        | COMMA | ELSE | EOL | EQ | GT | IN | LT | MINUS | OF | PLUS | RPAREN | THEN ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv241 * _menhir_state * 'tv_arith)) * _menhir_state * 'tv_factor) = Obj.magic _menhir_stack in
            ((let ((_menhir_stack, _menhir_s, (e1 : 'tv_arith)), _, (e2 : 'tv_factor)) = _menhir_stack in
            let _2 = () in
            let _v : 'tv_arith = 
# 70 "parser.mly"
    ( Exp.EBinOp (e1, Exp.OpPlus,e2) )
# 1435 "parser.ml"
             in
            _menhir_goto_arith _menhir_env _menhir_stack _menhir_s _v) : 'freshtv242)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv243 * _menhir_state * 'tv_arith)) * _menhir_state * 'tv_factor) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv244)) : 'freshtv246)
    | MenhirState72 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv251 * _menhir_state * 'tv_arith)) * _menhir_state * 'tv_factor) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | TIMES ->
            _menhir_run49 _menhir_env (Obj.magic _menhir_stack)
        | COMMA | ELSE | EOL | EQ | GT | IN | LT | MINUS | OF | PLUS | RPAREN | THEN ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv247 * _menhir_state * 'tv_arith)) * _menhir_state * 'tv_factor) = Obj.magic _menhir_stack in
            ((let ((_menhir_stack, _menhir_s, (e1 : 'tv_arith)), _, (e2 : 'tv_factor)) = _menhir_stack in
            let _2 = () in
            let _v : 'tv_arith = 
# 72 "parser.mly"
    ( Exp.EBinOp (e1, Exp.OpMinus, e2) )
# 1461 "parser.ml"
             in
            _menhir_goto_arith _menhir_env _menhir_stack _menhir_s _v) : 'freshtv248)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv249 * _menhir_state * 'tv_arith)) * _menhir_state * 'tv_factor) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv250)) : 'freshtv252)
    | _ ->
        _menhir_fail ()

and _menhir_goto_base_ty : _menhir_env -> 'ttv_tail -> _menhir_state -> 'tv_base_ty -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    match _menhir_s with
    | MenhirState27 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv225 * _menhir_state * 'tv_ty_prod)) * _menhir_state * 'tv_base_ty) = Obj.magic _menhir_stack in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv223 * _menhir_state * 'tv_ty_prod)) * _menhir_state * 'tv_base_ty) = Obj.magic _menhir_stack in
        ((let ((_menhir_stack, _menhir_s, (t1 : 'tv_ty_prod)), _, (t2 : 'tv_base_ty)) = _menhir_stack in
        let _2 = () in
        let _v : 'tv_ty_prod = 
# 128 "parser.mly"
    ( Typ.TProd (t1, t2) )
# 1488 "parser.ml"
         in
        _menhir_goto_ty_prod _menhir_env _menhir_stack _menhir_s _v) : 'freshtv224)) : 'freshtv226)
    | MenhirState25 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv227 * _menhir_state * 'tv_base_ty) = Obj.magic _menhir_stack in
        (_menhir_reduce42 _menhir_env (Obj.magic _menhir_stack) : 'freshtv228)
    | MenhirState101 | MenhirState19 | MenhirState82 | MenhirState37 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv233 * _menhir_state * 'tv_base_ty) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | ARROW ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv229 * _menhir_state * 'tv_base_ty) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | BOOL ->
                _menhir_run23 _menhir_env (Obj.magic _menhir_stack) MenhirState82
            | NUM ->
                _menhir_run22 _menhir_env (Obj.magic _menhir_stack) MenhirState82
            | THOLE ->
                _menhir_run21 _menhir_env (Obj.magic _menhir_stack) MenhirState82
            | UNIT ->
                _menhir_run20 _menhir_env (Obj.magic _menhir_stack) MenhirState82
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState82) : 'freshtv230)
        | BE | PLUS | RPAREN | TIMES ->
            _menhir_reduce42 _menhir_env (Obj.magic _menhir_stack)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv231 * _menhir_state * 'tv_base_ty) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv232)) : 'freshtv234)
    | _ ->
        _menhir_fail ()

and _menhir_goto_app : _menhir_env -> 'ttv_tail -> _menhir_state -> 'tv_app -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    match _menhir_s with
    | MenhirState49 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv217 * _menhir_state * 'tv_factor)) * _menhir_state * 'tv_app) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | BOOLLIT _v ->
            _menhir_run43 _menhir_env (Obj.magic _menhir_stack) MenhirState50 _v
        | EHOLE ->
            _menhir_run41 _menhir_env (Obj.magic _menhir_stack) MenhirState50
        | ID _v ->
            _menhir_run7 _menhir_env (Obj.magic _menhir_stack) MenhirState50 _v
        | INT _v ->
            _menhir_run14 _menhir_env (Obj.magic _menhir_stack) MenhirState50 _v
        | LPAREN ->
            _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState50
        | COMMA | ELSE | EOL | EQ | GT | IN | LT | MINUS | OF | PLUS | RPAREN | THEN | TIMES ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv215 * _menhir_state * 'tv_factor)) * _menhir_state * 'tv_app) = Obj.magic _menhir_stack in
            ((let ((_menhir_stack, _menhir_s, (e1 : 'tv_factor)), _, (e2 : 'tv_app)) = _menhir_stack in
            let _2 = () in
            let _v : 'tv_factor = 
# 78 "parser.mly"
    ( Exp.EBinOp (e1, Exp.OpTimes, e2) )
# 1559 "parser.ml"
             in
            _menhir_goto_factor _menhir_env _menhir_stack _menhir_s _v) : 'freshtv216)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState50) : 'freshtv218)
    | MenhirState0 | MenhirState1 | MenhirState3 | MenhirState113 | MenhirState107 | MenhirState109 | MenhirState103 | MenhirState105 | MenhirState12 | MenhirState98 | MenhirState13 | MenhirState15 | MenhirState92 | MenhirState94 | MenhirState89 | MenhirState33 | MenhirState85 | MenhirState40 | MenhirState42 | MenhirState58 | MenhirState65 | MenhirState78 | MenhirState76 | MenhirState74 | MenhirState72 | MenhirState69 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv221 * _menhir_state * 'tv_app) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | BOOLLIT _v ->
            _menhir_run43 _menhir_env (Obj.magic _menhir_stack) MenhirState71 _v
        | EHOLE ->
            _menhir_run41 _menhir_env (Obj.magic _menhir_stack) MenhirState71
        | ID _v ->
            _menhir_run7 _menhir_env (Obj.magic _menhir_stack) MenhirState71 _v
        | INT _v ->
            _menhir_run14 _menhir_env (Obj.magic _menhir_stack) MenhirState71 _v
        | LPAREN ->
            _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState71
        | COMMA | ELSE | EOL | EQ | GT | IN | LT | MINUS | OF | PLUS | RPAREN | THEN | TIMES ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv219 * _menhir_state * 'tv_app) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, (e : 'tv_app)) = _menhir_stack in
            let _v : 'tv_factor = 
# 76 "parser.mly"
    ( e )
# 1589 "parser.ml"
             in
            _menhir_goto_factor _menhir_env _menhir_stack _menhir_s _v) : 'freshtv220)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState71) : 'freshtv222)
    | _ ->
        _menhir_fail ()

and _menhir_fail : unit -> 'a =
  fun () ->
    Printf.fprintf stderr "Internal failure -- please contact the parser generator's developers.\n%!";
    assert false

and _menhir_run20 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_env = _menhir_discard _menhir_env in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv213) = Obj.magic _menhir_stack in
    let (_menhir_s : _menhir_state) = _menhir_s in
    ((let _1 = () in
    let _v : 'tv_base_ty = 
# 136 "parser.mly"
    ( Typ.TUnit )
# 1614 "parser.ml"
     in
    _menhir_goto_base_ty _menhir_env _menhir_stack _menhir_s _v) : 'freshtv214)

and _menhir_run21 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_env = _menhir_discard _menhir_env in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv211) = Obj.magic _menhir_stack in
    let (_menhir_s : _menhir_state) = _menhir_s in
    ((let _1 = () in
    let _v : 'tv_base_ty = 
# 138 "parser.mly"
    ( Typ.THole )
# 1628 "parser.ml"
     in
    _menhir_goto_base_ty _menhir_env _menhir_stack _menhir_s _v) : 'freshtv212)

and _menhir_run22 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_env = _menhir_discard _menhir_env in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv209) = Obj.magic _menhir_stack in
    let (_menhir_s : _menhir_state) = _menhir_s in
    ((let _1 = () in
    let _v : 'tv_base_ty = 
# 132 "parser.mly"
    ( Typ.TNum )
# 1642 "parser.ml"
     in
    _menhir_goto_base_ty _menhir_env _menhir_stack _menhir_s _v) : 'freshtv210)

and _menhir_run23 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_env = _menhir_discard _menhir_env in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv207) = Obj.magic _menhir_stack in
    let (_menhir_s : _menhir_state) = _menhir_s in
    ((let _1 = () in
    let _v : 'tv_base_ty = 
# 134 "parser.mly"
    ( Typ.TBool )
# 1656 "parser.ml"
     in
    _menhir_goto_base_ty _menhir_env _menhir_stack _menhir_s _v) : 'freshtv208)

and _menhir_goto_simple : _menhir_env -> 'ttv_tail -> _menhir_state -> 'tv_simple -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    match _menhir_s with
    | MenhirState0 | MenhirState1 | MenhirState113 | MenhirState3 | MenhirState109 | MenhirState107 | MenhirState105 | MenhirState103 | MenhirState98 | MenhirState12 | MenhirState13 | MenhirState94 | MenhirState92 | MenhirState15 | MenhirState89 | MenhirState33 | MenhirState85 | MenhirState40 | MenhirState78 | MenhirState76 | MenhirState74 | MenhirState72 | MenhirState69 | MenhirState65 | MenhirState58 | MenhirState49 | MenhirState42 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv197 * _menhir_state * 'tv_simple) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | LPRJ ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv187 * _menhir_state * 'tv_simple) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv185 * _menhir_state * 'tv_simple) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, (e : 'tv_simple)) = _menhir_stack in
            let _2 = () in
            let _v : 'tv_app = 
# 88 "parser.mly"
    ( Exp.EPrjL (e) )
# 1681 "parser.ml"
             in
            _menhir_goto_app _menhir_env _menhir_stack _menhir_s _v) : 'freshtv186)) : 'freshtv188)
        | RPRJ ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv191 * _menhir_state * 'tv_simple) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv189 * _menhir_state * 'tv_simple) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, (e : 'tv_simple)) = _menhir_stack in
            let _2 = () in
            let _v : 'tv_app = 
# 90 "parser.mly"
    ( Exp.EPrjR (e) )
# 1695 "parser.ml"
             in
            _menhir_goto_app _menhir_env _menhir_stack _menhir_s _v) : 'freshtv190)) : 'freshtv192)
        | BOOLLIT _ | COMMA | EHOLE | ELSE | EOL | EQ | GT | ID _ | IN | INT _ | LPAREN | LT | MINUS | OF | PLUS | RPAREN | THEN | TIMES ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv193 * _menhir_state * 'tv_simple) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, (e : 'tv_simple)) = _menhir_stack in
            let _v : 'tv_app = 
# 82 "parser.mly"
    ( e )
# 1705 "parser.ml"
             in
            _menhir_goto_app _menhir_env _menhir_stack _menhir_s _v) : 'freshtv194)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv195 * _menhir_state * 'tv_simple) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv196)) : 'freshtv198)
    | MenhirState71 | MenhirState50 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv201 * _menhir_state * 'tv_app) * _menhir_state * 'tv_simple) = Obj.magic _menhir_stack in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv199 * _menhir_state * 'tv_app) * _menhir_state * 'tv_simple) = Obj.magic _menhir_stack in
        ((let ((_menhir_stack, _menhir_s, (e1 : 'tv_app)), _, (e2 : 'tv_simple)) = _menhir_stack in
        let _v : 'tv_app = 
# 84 "parser.mly"
    ( Exp.EBinOp (e1, OpAp, e2) )
# 1724 "parser.ml"
         in
        _menhir_goto_app _menhir_env _menhir_stack _menhir_s _v) : 'freshtv200)) : 'freshtv202)
    | MenhirState2 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv205 * _menhir_state) * _menhir_state * 'tv_simple) = Obj.magic _menhir_stack in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv203 * _menhir_state) * _menhir_state * 'tv_simple) = Obj.magic _menhir_stack in
        ((let ((_menhir_stack, _menhir_s), _, (e : 'tv_simple)) = _menhir_stack in
        let _1 = () in
        let _v : 'tv_app = 
# 86 "parser.mly"
    ( Exp.EUnOp (OpNeg, e) )
# 1737 "parser.ml"
         in
        _menhir_goto_app _menhir_env _menhir_stack _menhir_s _v) : 'freshtv204)) : 'freshtv206)
    | _ ->
        _menhir_fail ()

and _menhir_errorcase : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    match _menhir_s with
    | MenhirState113 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv95 * _menhir_state) * _menhir_state * 'tv_expr)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv96)
    | MenhirState109 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (((('freshtv97 * _menhir_state) * _menhir_state * 'tv_id)) * _menhir_state * 'tv_expr)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv98)
    | MenhirState107 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv99 * _menhir_state) * _menhir_state * 'tv_id)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv100)
    | MenhirState105 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (((((('freshtv101 * _menhir_state) * _menhir_state * 'tv_id)) * _menhir_state * 'tv_ty)) * _menhir_state * 'tv_expr)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv102)
    | MenhirState103 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (((('freshtv103 * _menhir_state) * _menhir_state * 'tv_id)) * _menhir_state * 'tv_ty)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv104)
    | MenhirState101 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv105 * _menhir_state) * _menhir_state * 'tv_id)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv106)
    | MenhirState98 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (((((((('freshtv107 * _menhir_state) * _menhir_state) * _menhir_state * 'tv_id)) * _menhir_state * 'tv_id))) * _menhir_state * 'tv_expr)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv108)
    | MenhirState94 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (((('freshtv109 * _menhir_state) * _menhir_state * 'tv_expr)) * _menhir_state * 'tv_expr)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv110)
    | MenhirState92 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv111 * _menhir_state) * _menhir_state * 'tv_expr)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv112)
    | MenhirState89 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv113 * _menhir_state) * _menhir_state * 'tv_id)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv114)
    | MenhirState85 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv115 * _menhir_state) * _menhir_state * 'tv_id)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv116)
    | MenhirState82 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv117 * _menhir_state * 'tv_base_ty)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv118)
    | MenhirState78 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv119 * _menhir_state * 'tv_arith)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv120)
    | MenhirState76 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv121 * _menhir_state * 'tv_arith)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv122)
    | MenhirState74 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv123 * _menhir_state * 'tv_arith)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv124)
    | MenhirState72 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv125 * _menhir_state * 'tv_arith)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv126)
    | MenhirState71 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv127 * _menhir_state * 'tv_app) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv128)
    | MenhirState69 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv129 * _menhir_state * 'tv_arith)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv130)
    | MenhirState65 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (((((((((((((('freshtv131 * _menhir_state) * _menhir_state * 'tv_expr)))) * _menhir_state * 'tv_id))) * _menhir_state * 'tv_expr)))) * _menhir_state * 'tv_id))) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv132)
    | MenhirState62 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((((((((((('freshtv133 * _menhir_state) * _menhir_state * 'tv_expr)))) * _menhir_state * 'tv_id))) * _menhir_state * 'tv_expr)))) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv134)
    | MenhirState58 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((((((('freshtv135 * _menhir_state) * _menhir_state * 'tv_expr)))) * _menhir_state * 'tv_id))) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv136)
    | MenhirState55 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (((('freshtv137 * _menhir_state) * _menhir_state * 'tv_expr)))) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv138)
    | MenhirState50 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv139 * _menhir_state * 'tv_factor)) * _menhir_state * 'tv_app) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv140)
    | MenhirState49 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv141 * _menhir_state * 'tv_factor)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv142)
    | MenhirState42 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv143 * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv144)
    | MenhirState40 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (((((('freshtv145 * _menhir_state) * _menhir_state) * _menhir_state * 'tv_id)) * _menhir_state * 'tv_ty))) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv146)
    | MenhirState37 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((('freshtv147 * _menhir_state) * _menhir_state) * _menhir_state * 'tv_id)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv148)
    | MenhirState35 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv149 * _menhir_state) * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv150)
    | MenhirState34 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv151 * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv152)
    | MenhirState33 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (((((('freshtv153 * _menhir_state) * _menhir_state) * _menhir_state * 'tv_id)) * _menhir_state * 'tv_ty))) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv154)
    | MenhirState27 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv155 * _menhir_state * 'tv_ty_prod)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv156)
    | MenhirState25 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv157 * _menhir_state * 'tv_ty_sum)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv158)
    | MenhirState19 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((('freshtv159 * _menhir_state) * _menhir_state) * _menhir_state * 'tv_id)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv160)
    | MenhirState17 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv161 * _menhir_state) * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv162)
    | MenhirState16 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv163 * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv164)
    | MenhirState15 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv165 * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv166)
    | MenhirState13 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv167 * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv168)
    | MenhirState12 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (((((('freshtv169 * _menhir_state) * _menhir_state) * _menhir_state * 'tv_id)) * _menhir_state * 'tv_id))) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv170)
    | MenhirState9 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((('freshtv171 * _menhir_state) * _menhir_state) * _menhir_state * 'tv_id)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv172)
    | MenhirState6 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv173 * _menhir_state) * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv174)
    | MenhirState5 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv175 * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv176)
    | MenhirState3 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv177 * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv178)
    | MenhirState2 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv179 * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv180)
    | MenhirState1 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv181 * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv182)
    | MenhirState0 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv183) = Obj.magic _menhir_stack in
        (raise _eRR : 'freshtv184)

and _menhir_run1 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | BOOLLIT _v ->
        _menhir_run43 _menhir_env (Obj.magic _menhir_stack) MenhirState1 _v
    | CASE ->
        _menhir_run42 _menhir_env (Obj.magic _menhir_stack) MenhirState1
    | EHOLE ->
        _menhir_run41 _menhir_env (Obj.magic _menhir_stack) MenhirState1
    | FIX ->
        _menhir_run34 _menhir_env (Obj.magic _menhir_stack) MenhirState1
    | FUN ->
        _menhir_run16 _menhir_env (Obj.magic _menhir_stack) MenhirState1
    | ID _v ->
        _menhir_run7 _menhir_env (Obj.magic _menhir_stack) MenhirState1 _v
    | IF ->
        _menhir_run15 _menhir_env (Obj.magic _menhir_stack) MenhirState1
    | INT _v ->
        _menhir_run14 _menhir_env (Obj.magic _menhir_stack) MenhirState1 _v
    | L ->
        _menhir_run13 _menhir_env (Obj.magic _menhir_stack) MenhirState1
    | LET ->
        _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState1
    | LPAREN ->
        _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState1
    | MINUS ->
        _menhir_run2 _menhir_env (Obj.magic _menhir_stack) MenhirState1
    | R ->
        _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState1
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState1

and _menhir_run2 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | BOOLLIT _v ->
        _menhir_run43 _menhir_env (Obj.magic _menhir_stack) MenhirState2 _v
    | EHOLE ->
        _menhir_run41 _menhir_env (Obj.magic _menhir_stack) MenhirState2
    | ID _v ->
        _menhir_run7 _menhir_env (Obj.magic _menhir_stack) MenhirState2 _v
    | INT _v ->
        _menhir_run14 _menhir_env (Obj.magic _menhir_stack) MenhirState2 _v
    | LPAREN ->
        _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState2
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState2

and _menhir_run3 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | BOOLLIT _v ->
        _menhir_run43 _menhir_env (Obj.magic _menhir_stack) MenhirState3 _v
    | CASE ->
        _menhir_run42 _menhir_env (Obj.magic _menhir_stack) MenhirState3
    | EHOLE ->
        _menhir_run41 _menhir_env (Obj.magic _menhir_stack) MenhirState3
    | FIX ->
        _menhir_run34 _menhir_env (Obj.magic _menhir_stack) MenhirState3
    | FUN ->
        _menhir_run16 _menhir_env (Obj.magic _menhir_stack) MenhirState3
    | ID _v ->
        _menhir_run7 _menhir_env (Obj.magic _menhir_stack) MenhirState3 _v
    | IF ->
        _menhir_run15 _menhir_env (Obj.magic _menhir_stack) MenhirState3
    | INT _v ->
        _menhir_run14 _menhir_env (Obj.magic _menhir_stack) MenhirState3 _v
    | L ->
        _menhir_run13 _menhir_env (Obj.magic _menhir_stack) MenhirState3
    | LET ->
        _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState3
    | LPAREN ->
        _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState3
    | MINUS ->
        _menhir_run2 _menhir_env (Obj.magic _menhir_stack) MenhirState3
    | R ->
        _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState3
    | RPAREN ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv93 * _menhir_state) = Obj.magic _menhir_stack in
        let (_menhir_s : _menhir_state) = MenhirState3 in
        ((let _menhir_env = _menhir_discard _menhir_env in
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv91 * _menhir_state) = Obj.magic _menhir_stack in
        let (_ : _menhir_state) = _menhir_s in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        let _2 = () in
        let _1 = () in
        let _v : 'tv_simple = 
# 104 "parser.mly"
    ( Exp.ETriv )
# 2075 "parser.ml"
         in
        _menhir_goto_simple _menhir_env _menhir_stack _menhir_s _v) : 'freshtv92)) : 'freshtv94)
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState3

and _menhir_run5 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | ID _v ->
        _menhir_run7 _menhir_env (Obj.magic _menhir_stack) MenhirState5 _v
    | LPAREN ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv89 * _menhir_state) = Obj.magic _menhir_stack in
        let (_menhir_s : _menhir_state) = MenhirState5 in
        ((let _menhir_stack = (_menhir_stack, _menhir_s) in
        let _menhir_env = _menhir_discard _menhir_env in
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | ID _v ->
            _menhir_run7 _menhir_env (Obj.magic _menhir_stack) MenhirState6 _v
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState6) : 'freshtv90)
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState5

and _menhir_run13 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | BOOLLIT _v ->
        _menhir_run43 _menhir_env (Obj.magic _menhir_stack) MenhirState13 _v
    | CASE ->
        _menhir_run42 _menhir_env (Obj.magic _menhir_stack) MenhirState13
    | EHOLE ->
        _menhir_run41 _menhir_env (Obj.magic _menhir_stack) MenhirState13
    | FIX ->
        _menhir_run34 _menhir_env (Obj.magic _menhir_stack) MenhirState13
    | FUN ->
        _menhir_run16 _menhir_env (Obj.magic _menhir_stack) MenhirState13
    | ID _v ->
        _menhir_run7 _menhir_env (Obj.magic _menhir_stack) MenhirState13 _v
    | IF ->
        _menhir_run15 _menhir_env (Obj.magic _menhir_stack) MenhirState13
    | INT _v ->
        _menhir_run14 _menhir_env (Obj.magic _menhir_stack) MenhirState13 _v
    | L ->
        _menhir_run13 _menhir_env (Obj.magic _menhir_stack) MenhirState13
    | LET ->
        _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState13
    | LPAREN ->
        _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState13
    | MINUS ->
        _menhir_run2 _menhir_env (Obj.magic _menhir_stack) MenhirState13
    | R ->
        _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState13
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState13

and _menhir_run14 : _menhir_env -> 'ttv_tail -> _menhir_state -> (
# 7 "parser.mly"
       (int)
# 2150 "parser.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_env = _menhir_discard _menhir_env in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv87) = Obj.magic _menhir_stack in
    let (_menhir_s : _menhir_state) = _menhir_s in
    let ((i : (
# 7 "parser.mly"
       (int)
# 2160 "parser.ml"
    )) : (
# 7 "parser.mly"
       (int)
# 2164 "parser.ml"
    )) = _v in
    ((let _v : 'tv_simple = 
# 96 "parser.mly"
    ( Exp.ENumLiteral i )
# 2169 "parser.ml"
     in
    _menhir_goto_simple _menhir_env _menhir_stack _menhir_s _v) : 'freshtv88)

and _menhir_run15 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | BOOLLIT _v ->
        _menhir_run43 _menhir_env (Obj.magic _menhir_stack) MenhirState15 _v
    | CASE ->
        _menhir_run42 _menhir_env (Obj.magic _menhir_stack) MenhirState15
    | EHOLE ->
        _menhir_run41 _menhir_env (Obj.magic _menhir_stack) MenhirState15
    | FIX ->
        _menhir_run34 _menhir_env (Obj.magic _menhir_stack) MenhirState15
    | FUN ->
        _menhir_run16 _menhir_env (Obj.magic _menhir_stack) MenhirState15
    | ID _v ->
        _menhir_run7 _menhir_env (Obj.magic _menhir_stack) MenhirState15 _v
    | IF ->
        _menhir_run15 _menhir_env (Obj.magic _menhir_stack) MenhirState15
    | INT _v ->
        _menhir_run14 _menhir_env (Obj.magic _menhir_stack) MenhirState15 _v
    | L ->
        _menhir_run13 _menhir_env (Obj.magic _menhir_stack) MenhirState15
    | LET ->
        _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState15
    | LPAREN ->
        _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState15
    | MINUS ->
        _menhir_run2 _menhir_env (Obj.magic _menhir_stack) MenhirState15
    | R ->
        _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState15
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState15

and _menhir_run7 : _menhir_env -> 'ttv_tail -> _menhir_state -> (
# 8 "parser.mly"
       (string)
# 2213 "parser.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_env = _menhir_discard _menhir_env in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv85) = Obj.magic _menhir_stack in
    let (_menhir_s : _menhir_state) = _menhir_s in
    let ((i : (
# 8 "parser.mly"
       (string)
# 2223 "parser.ml"
    )) : (
# 8 "parser.mly"
       (string)
# 2227 "parser.ml"
    )) = _v in
    ((let _v : 'tv_id = 
# 110 "parser.mly"
    ( i )
# 2232 "parser.ml"
     in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv83) = _menhir_stack in
    let (_menhir_s : _menhir_state) = _menhir_s in
    let (_v : 'tv_id) = _v in
    ((let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    match _menhir_s with
    | MenhirState6 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv15 * _menhir_state) * _menhir_state) * _menhir_state * 'tv_id) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | COMMA ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv11 * _menhir_state) * _menhir_state) * _menhir_state * 'tv_id) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | ID _v ->
                _menhir_run7 _menhir_env (Obj.magic _menhir_stack) MenhirState9 _v
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState9) : 'freshtv12)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv13 * _menhir_state) * _menhir_state) * _menhir_state * 'tv_id) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv14)) : 'freshtv16)
    | MenhirState9 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (((('freshtv25 * _menhir_state) * _menhir_state) * _menhir_state * 'tv_id)) * _menhir_state * 'tv_id) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | RPAREN ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (((('freshtv21 * _menhir_state) * _menhir_state) * _menhir_state * 'tv_id)) * _menhir_state * 'tv_id) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | BE ->
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : ((((('freshtv17 * _menhir_state) * _menhir_state) * _menhir_state * 'tv_id)) * _menhir_state * 'tv_id)) = Obj.magic _menhir_stack in
                ((let _menhir_env = _menhir_discard _menhir_env in
                let _tok = _menhir_env._menhir_token in
                match _tok with
                | BOOLLIT _v ->
                    _menhir_run43 _menhir_env (Obj.magic _menhir_stack) MenhirState12 _v
                | CASE ->
                    _menhir_run42 _menhir_env (Obj.magic _menhir_stack) MenhirState12
                | EHOLE ->
                    _menhir_run41 _menhir_env (Obj.magic _menhir_stack) MenhirState12
                | FIX ->
                    _menhir_run34 _menhir_env (Obj.magic _menhir_stack) MenhirState12
                | FUN ->
                    _menhir_run16 _menhir_env (Obj.magic _menhir_stack) MenhirState12
                | ID _v ->
                    _menhir_run7 _menhir_env (Obj.magic _menhir_stack) MenhirState12 _v
                | IF ->
                    _menhir_run15 _menhir_env (Obj.magic _menhir_stack) MenhirState12
                | INT _v ->
                    _menhir_run14 _menhir_env (Obj.magic _menhir_stack) MenhirState12 _v
                | L ->
                    _menhir_run13 _menhir_env (Obj.magic _menhir_stack) MenhirState12
                | LET ->
                    _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState12
                | LPAREN ->
                    _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState12
                | MINUS ->
                    _menhir_run2 _menhir_env (Obj.magic _menhir_stack) MenhirState12
                | R ->
                    _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState12
                | _ ->
                    assert (not _menhir_env._menhir_error);
                    _menhir_env._menhir_error <- true;
                    _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState12) : 'freshtv18)
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : ((((('freshtv19 * _menhir_state) * _menhir_state) * _menhir_state * 'tv_id)) * _menhir_state * 'tv_id)) = Obj.magic _menhir_stack in
                ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv20)) : 'freshtv22)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (((('freshtv23 * _menhir_state) * _menhir_state) * _menhir_state * 'tv_id)) * _menhir_state * 'tv_id) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv24)) : 'freshtv26)
    | MenhirState17 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv31 * _menhir_state) * _menhir_state) * _menhir_state * 'tv_id) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | OFTYPE ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv27 * _menhir_state) * _menhir_state) * _menhir_state * 'tv_id) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | BOOL ->
                _menhir_run23 _menhir_env (Obj.magic _menhir_stack) MenhirState19
            | NUM ->
                _menhir_run22 _menhir_env (Obj.magic _menhir_stack) MenhirState19
            | THOLE ->
                _menhir_run21 _menhir_env (Obj.magic _menhir_stack) MenhirState19
            | UNIT ->
                _menhir_run20 _menhir_env (Obj.magic _menhir_stack) MenhirState19
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState19) : 'freshtv28)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv29 * _menhir_state) * _menhir_state) * _menhir_state * 'tv_id) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv30)) : 'freshtv32)
    | MenhirState35 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv37 * _menhir_state) * _menhir_state) * _menhir_state * 'tv_id) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | OFTYPE ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv33 * _menhir_state) * _menhir_state) * _menhir_state * 'tv_id) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | BOOL ->
                _menhir_run23 _menhir_env (Obj.magic _menhir_stack) MenhirState37
            | NUM ->
                _menhir_run22 _menhir_env (Obj.magic _menhir_stack) MenhirState37
            | THOLE ->
                _menhir_run21 _menhir_env (Obj.magic _menhir_stack) MenhirState37
            | UNIT ->
                _menhir_run20 _menhir_env (Obj.magic _menhir_stack) MenhirState37
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState37) : 'freshtv34)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv35 * _menhir_state) * _menhir_state) * _menhir_state * 'tv_id) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv36)) : 'freshtv38)
    | MenhirState0 | MenhirState1 | MenhirState2 | MenhirState113 | MenhirState3 | MenhirState109 | MenhirState107 | MenhirState105 | MenhirState103 | MenhirState98 | MenhirState12 | MenhirState13 | MenhirState94 | MenhirState92 | MenhirState15 | MenhirState89 | MenhirState33 | MenhirState85 | MenhirState40 | MenhirState78 | MenhirState76 | MenhirState74 | MenhirState72 | MenhirState71 | MenhirState69 | MenhirState65 | MenhirState58 | MenhirState50 | MenhirState49 | MenhirState42 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv41 * _menhir_state * 'tv_id) = Obj.magic _menhir_stack in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv39 * _menhir_state * 'tv_id) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, (e : 'tv_id)) = _menhir_stack in
        let _v : 'tv_simple = 
# 94 "parser.mly"
    ( Exp.EVar (e) )
# 2398 "parser.ml"
         in
        _menhir_goto_simple _menhir_env _menhir_stack _menhir_s _v) : 'freshtv40)) : 'freshtv42)
    | MenhirState55 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((((('freshtv51 * _menhir_state) * _menhir_state * 'tv_expr)))) * _menhir_state * 'tv_id) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | RPAREN ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ((((('freshtv47 * _menhir_state) * _menhir_state * 'tv_expr)))) * _menhir_state * 'tv_id) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | ARROW ->
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : (((((('freshtv43 * _menhir_state) * _menhir_state * 'tv_expr)))) * _menhir_state * 'tv_id)) = Obj.magic _menhir_stack in
                ((let _menhir_env = _menhir_discard _menhir_env in
                let _tok = _menhir_env._menhir_token in
                match _tok with
                | BOOLLIT _v ->
                    _menhir_run43 _menhir_env (Obj.magic _menhir_stack) MenhirState58 _v
                | CASE ->
                    _menhir_run42 _menhir_env (Obj.magic _menhir_stack) MenhirState58
                | EHOLE ->
                    _menhir_run41 _menhir_env (Obj.magic _menhir_stack) MenhirState58
                | FIX ->
                    _menhir_run34 _menhir_env (Obj.magic _menhir_stack) MenhirState58
                | FUN ->
                    _menhir_run16 _menhir_env (Obj.magic _menhir_stack) MenhirState58
                | ID _v ->
                    _menhir_run7 _menhir_env (Obj.magic _menhir_stack) MenhirState58 _v
                | IF ->
                    _menhir_run15 _menhir_env (Obj.magic _menhir_stack) MenhirState58
                | INT _v ->
                    _menhir_run14 _menhir_env (Obj.magic _menhir_stack) MenhirState58 _v
                | L ->
                    _menhir_run13 _menhir_env (Obj.magic _menhir_stack) MenhirState58
                | LET ->
                    _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState58
                | LPAREN ->
                    _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState58
                | MINUS ->
                    _menhir_run2 _menhir_env (Obj.magic _menhir_stack) MenhirState58
                | R ->
                    _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState58
                | _ ->
                    assert (not _menhir_env._menhir_error);
                    _menhir_env._menhir_error <- true;
                    _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState58) : 'freshtv44)
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : (((((('freshtv45 * _menhir_state) * _menhir_state * 'tv_expr)))) * _menhir_state * 'tv_id)) = Obj.magic _menhir_stack in
                ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv46)) : 'freshtv48)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ((((('freshtv49 * _menhir_state) * _menhir_state * 'tv_expr)))) * _menhir_state * 'tv_id) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv50)) : 'freshtv52)
    | MenhirState62 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (((((((((((('freshtv61 * _menhir_state) * _menhir_state * 'tv_expr)))) * _menhir_state * 'tv_id))) * _menhir_state * 'tv_expr)))) * _menhir_state * 'tv_id) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | RPAREN ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (((((((((((('freshtv57 * _menhir_state) * _menhir_state * 'tv_expr)))) * _menhir_state * 'tv_id))) * _menhir_state * 'tv_expr)))) * _menhir_state * 'tv_id) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | ARROW ->
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : ((((((((((((('freshtv53 * _menhir_state) * _menhir_state * 'tv_expr)))) * _menhir_state * 'tv_id))) * _menhir_state * 'tv_expr)))) * _menhir_state * 'tv_id)) = Obj.magic _menhir_stack in
                ((let _menhir_env = _menhir_discard _menhir_env in
                let _tok = _menhir_env._menhir_token in
                match _tok with
                | BOOLLIT _v ->
                    _menhir_run43 _menhir_env (Obj.magic _menhir_stack) MenhirState65 _v
                | CASE ->
                    _menhir_run42 _menhir_env (Obj.magic _menhir_stack) MenhirState65
                | EHOLE ->
                    _menhir_run41 _menhir_env (Obj.magic _menhir_stack) MenhirState65
                | FIX ->
                    _menhir_run34 _menhir_env (Obj.magic _menhir_stack) MenhirState65
                | FUN ->
                    _menhir_run16 _menhir_env (Obj.magic _menhir_stack) MenhirState65
                | ID _v ->
                    _menhir_run7 _menhir_env (Obj.magic _menhir_stack) MenhirState65 _v
                | IF ->
                    _menhir_run15 _menhir_env (Obj.magic _menhir_stack) MenhirState65
                | INT _v ->
                    _menhir_run14 _menhir_env (Obj.magic _menhir_stack) MenhirState65 _v
                | L ->
                    _menhir_run13 _menhir_env (Obj.magic _menhir_stack) MenhirState65
                | LET ->
                    _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState65
                | LPAREN ->
                    _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState65
                | MINUS ->
                    _menhir_run2 _menhir_env (Obj.magic _menhir_stack) MenhirState65
                | R ->
                    _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState65
                | _ ->
                    assert (not _menhir_env._menhir_error);
                    _menhir_env._menhir_error <- true;
                    _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState65) : 'freshtv54)
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : ((((((((((((('freshtv55 * _menhir_state) * _menhir_state * 'tv_expr)))) * _menhir_state * 'tv_id))) * _menhir_state * 'tv_expr)))) * _menhir_state * 'tv_id)) = Obj.magic _menhir_stack in
                ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv56)) : 'freshtv58)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (((((((((((('freshtv59 * _menhir_state) * _menhir_state * 'tv_expr)))) * _menhir_state * 'tv_id))) * _menhir_state * 'tv_expr)))) * _menhir_state * 'tv_id) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv60)) : 'freshtv62)
    | MenhirState34 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv67 * _menhir_state) * _menhir_state * 'tv_id) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | ARROW ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv63 * _menhir_state) * _menhir_state * 'tv_id) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | BOOLLIT _v ->
                _menhir_run43 _menhir_env (Obj.magic _menhir_stack) MenhirState85 _v
            | CASE ->
                _menhir_run42 _menhir_env (Obj.magic _menhir_stack) MenhirState85
            | EHOLE ->
                _menhir_run41 _menhir_env (Obj.magic _menhir_stack) MenhirState85
            | FIX ->
                _menhir_run34 _menhir_env (Obj.magic _menhir_stack) MenhirState85
            | FUN ->
                _menhir_run16 _menhir_env (Obj.magic _menhir_stack) MenhirState85
            | ID _v ->
                _menhir_run7 _menhir_env (Obj.magic _menhir_stack) MenhirState85 _v
            | IF ->
                _menhir_run15 _menhir_env (Obj.magic _menhir_stack) MenhirState85
            | INT _v ->
                _menhir_run14 _menhir_env (Obj.magic _menhir_stack) MenhirState85 _v
            | L ->
                _menhir_run13 _menhir_env (Obj.magic _menhir_stack) MenhirState85
            | LET ->
                _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState85
            | LPAREN ->
                _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState85
            | MINUS ->
                _menhir_run2 _menhir_env (Obj.magic _menhir_stack) MenhirState85
            | R ->
                _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState85
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState85) : 'freshtv64)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv65 * _menhir_state) * _menhir_state * 'tv_id) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv66)) : 'freshtv68)
    | MenhirState16 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv73 * _menhir_state) * _menhir_state * 'tv_id) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | ARROW ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv69 * _menhir_state) * _menhir_state * 'tv_id) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | BOOLLIT _v ->
                _menhir_run43 _menhir_env (Obj.magic _menhir_stack) MenhirState89 _v
            | CASE ->
                _menhir_run42 _menhir_env (Obj.magic _menhir_stack) MenhirState89
            | EHOLE ->
                _menhir_run41 _menhir_env (Obj.magic _menhir_stack) MenhirState89
            | FIX ->
                _menhir_run34 _menhir_env (Obj.magic _menhir_stack) MenhirState89
            | FUN ->
                _menhir_run16 _menhir_env (Obj.magic _menhir_stack) MenhirState89
            | ID _v ->
                _menhir_run7 _menhir_env (Obj.magic _menhir_stack) MenhirState89 _v
            | IF ->
                _menhir_run15 _menhir_env (Obj.magic _menhir_stack) MenhirState89
            | INT _v ->
                _menhir_run14 _menhir_env (Obj.magic _menhir_stack) MenhirState89 _v
            | L ->
                _menhir_run13 _menhir_env (Obj.magic _menhir_stack) MenhirState89
            | LET ->
                _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState89
            | LPAREN ->
                _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState89
            | MINUS ->
                _menhir_run2 _menhir_env (Obj.magic _menhir_stack) MenhirState89
            | R ->
                _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState89
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState89) : 'freshtv70)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv71 * _menhir_state) * _menhir_state * 'tv_id) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv72)) : 'freshtv74)
    | MenhirState5 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv81 * _menhir_state) * _menhir_state * 'tv_id) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | BE ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv75 * _menhir_state) * _menhir_state * 'tv_id) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | BOOLLIT _v ->
                _menhir_run43 _menhir_env (Obj.magic _menhir_stack) MenhirState107 _v
            | CASE ->
                _menhir_run42 _menhir_env (Obj.magic _menhir_stack) MenhirState107
            | EHOLE ->
                _menhir_run41 _menhir_env (Obj.magic _menhir_stack) MenhirState107
            | FIX ->
                _menhir_run34 _menhir_env (Obj.magic _menhir_stack) MenhirState107
            | FUN ->
                _menhir_run16 _menhir_env (Obj.magic _menhir_stack) MenhirState107
            | ID _v ->
                _menhir_run7 _menhir_env (Obj.magic _menhir_stack) MenhirState107 _v
            | IF ->
                _menhir_run15 _menhir_env (Obj.magic _menhir_stack) MenhirState107
            | INT _v ->
                _menhir_run14 _menhir_env (Obj.magic _menhir_stack) MenhirState107 _v
            | L ->
                _menhir_run13 _menhir_env (Obj.magic _menhir_stack) MenhirState107
            | LET ->
                _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState107
            | LPAREN ->
                _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState107
            | MINUS ->
                _menhir_run2 _menhir_env (Obj.magic _menhir_stack) MenhirState107
            | R ->
                _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState107
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState107) : 'freshtv76)
        | OFTYPE ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv77 * _menhir_state) * _menhir_state * 'tv_id) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | BOOL ->
                _menhir_run23 _menhir_env (Obj.magic _menhir_stack) MenhirState101
            | NUM ->
                _menhir_run22 _menhir_env (Obj.magic _menhir_stack) MenhirState101
            | THOLE ->
                _menhir_run21 _menhir_env (Obj.magic _menhir_stack) MenhirState101
            | UNIT ->
                _menhir_run20 _menhir_env (Obj.magic _menhir_stack) MenhirState101
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState101) : 'freshtv78)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv79 * _menhir_state) * _menhir_state * 'tv_id) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv80)) : 'freshtv82)
    | _ ->
        _menhir_fail ()) : 'freshtv84)) : 'freshtv86)

and _menhir_run16 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | ID _v ->
        _menhir_run7 _menhir_env (Obj.magic _menhir_stack) MenhirState16 _v
    | LPAREN ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv9 * _menhir_state) = Obj.magic _menhir_stack in
        let (_menhir_s : _menhir_state) = MenhirState16 in
        ((let _menhir_stack = (_menhir_stack, _menhir_s) in
        let _menhir_env = _menhir_discard _menhir_env in
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | ID _v ->
            _menhir_run7 _menhir_env (Obj.magic _menhir_stack) MenhirState17 _v
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState17) : 'freshtv10)
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState16

and _menhir_run34 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | ID _v ->
        _menhir_run7 _menhir_env (Obj.magic _menhir_stack) MenhirState34 _v
    | LPAREN ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv7 * _menhir_state) = Obj.magic _menhir_stack in
        let (_menhir_s : _menhir_state) = MenhirState34 in
        ((let _menhir_stack = (_menhir_stack, _menhir_s) in
        let _menhir_env = _menhir_discard _menhir_env in
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | ID _v ->
            _menhir_run7 _menhir_env (Obj.magic _menhir_stack) MenhirState35 _v
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState35) : 'freshtv8)
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState34

and _menhir_run41 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_env = _menhir_discard _menhir_env in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv5) = Obj.magic _menhir_stack in
    let (_menhir_s : _menhir_state) = _menhir_s in
    ((let e = () in
    let _v : 'tv_simple = 
# 100 "parser.mly"
    ( Exp.EHole )
# 2757 "parser.ml"
     in
    _menhir_goto_simple _menhir_env _menhir_stack _menhir_s _v) : 'freshtv6)

and _menhir_run42 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | BOOLLIT _v ->
        _menhir_run43 _menhir_env (Obj.magic _menhir_stack) MenhirState42 _v
    | CASE ->
        _menhir_run42 _menhir_env (Obj.magic _menhir_stack) MenhirState42
    | EHOLE ->
        _menhir_run41 _menhir_env (Obj.magic _menhir_stack) MenhirState42
    | FIX ->
        _menhir_run34 _menhir_env (Obj.magic _menhir_stack) MenhirState42
    | FUN ->
        _menhir_run16 _menhir_env (Obj.magic _menhir_stack) MenhirState42
    | ID _v ->
        _menhir_run7 _menhir_env (Obj.magic _menhir_stack) MenhirState42 _v
    | IF ->
        _menhir_run15 _menhir_env (Obj.magic _menhir_stack) MenhirState42
    | INT _v ->
        _menhir_run14 _menhir_env (Obj.magic _menhir_stack) MenhirState42 _v
    | L ->
        _menhir_run13 _menhir_env (Obj.magic _menhir_stack) MenhirState42
    | LET ->
        _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState42
    | LPAREN ->
        _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState42
    | MINUS ->
        _menhir_run2 _menhir_env (Obj.magic _menhir_stack) MenhirState42
    | R ->
        _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState42
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState42

and _menhir_run43 : _menhir_env -> 'ttv_tail -> _menhir_state -> (
# 9 "parser.mly"
       (bool)
# 2801 "parser.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_env = _menhir_discard _menhir_env in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv3) = Obj.magic _menhir_stack in
    let (_menhir_s : _menhir_state) = _menhir_s in
    let ((b : (
# 9 "parser.mly"
       (bool)
# 2811 "parser.ml"
    )) : (
# 9 "parser.mly"
       (bool)
# 2815 "parser.ml"
    )) = _v in
    ((let _v : 'tv_simple = 
# 98 "parser.mly"
    ( Exp.EBoolLiteral b )
# 2820 "parser.ml"
     in
    _menhir_goto_simple _menhir_env _menhir_stack _menhir_s _v) : 'freshtv4)

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

and main : (Lexing.lexbuf -> token) -> Lexing.lexbuf -> (
# 20 "parser.mly"
       (Syntax.Exp.t)
# 2839 "parser.ml"
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
    | BOOLLIT _v ->
        _menhir_run43 _menhir_env (Obj.magic _menhir_stack) MenhirState0 _v
    | CASE ->
        _menhir_run42 _menhir_env (Obj.magic _menhir_stack) MenhirState0
    | EHOLE ->
        _menhir_run41 _menhir_env (Obj.magic _menhir_stack) MenhirState0
    | FIX ->
        _menhir_run34 _menhir_env (Obj.magic _menhir_stack) MenhirState0
    | FUN ->
        _menhir_run16 _menhir_env (Obj.magic _menhir_stack) MenhirState0
    | ID _v ->
        _menhir_run7 _menhir_env (Obj.magic _menhir_stack) MenhirState0 _v
    | IF ->
        _menhir_run15 _menhir_env (Obj.magic _menhir_stack) MenhirState0
    | INT _v ->
        _menhir_run14 _menhir_env (Obj.magic _menhir_stack) MenhirState0 _v
    | L ->
        _menhir_run13 _menhir_env (Obj.magic _menhir_stack) MenhirState0
    | LET ->
        _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState0
    | LPAREN ->
        _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState0
    | MINUS ->
        _menhir_run2 _menhir_env (Obj.magic _menhir_stack) MenhirState0
    | R ->
        _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState0
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState0) : 'freshtv2))

# 269 "<standard.mly>"
  

# 2892 "parser.ml"
