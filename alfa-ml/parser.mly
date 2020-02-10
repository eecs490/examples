%token NUM
%token BOOL
%token ARROW
%token UNIT
%token <int> INT
%token TICK
%token REC DOT
%token FORALLT
%token <string> ID
%token <bool> BOOLLIT
%token IF THEN ELSE
%token FUN LET OFTYPE BE IN
%token FIX COMMA
%token L R LPRJ RPRJ
%token CASE OF
%token PLUS MINUS TIMES
%token GT LT EQ
%token LPAREN RPAREN
%token ROLL UNROLL FORALL AT
%token LSQUARE RSQUARE
%token EOL

%start <Syntax.Exp.t> main
%{ open Syntax %}

%%

main:
| e = expr EOL
    { e }

expr:
| e = boolean
    { e }
| LET i = id OFTYPE t = ty BE e1 = expr IN e2 = expr
    { Exp.ELet (i, Some(t), e1, e2) }
| LET i = id BE e1 = expr IN e2 = expr
    { Exp.ELet (i, None, e1, e2) }
| IF e1 = expr THEN e2 = expr ELSE e3 = expr
    { Exp.EIf (e1, e2, e3) }
| FUN LPAREN i = id OFTYPE t = ty RPAREN ARROW e = expr
    { Exp.EFun (i, Some(t), e) }
| FUN i = id ARROW e = expr
    { Exp.EFun (i, None, e) }
| FIX LPAREN i = id OFTYPE t = ty RPAREN ARROW e = expr
    { Exp.EFix (i, Some(t), e) }
| FIX i = id ARROW e = expr
    { Exp.EFix (i, None, e) }
| L e = expr
    { Exp.EInjL (e) }
| R e = expr
    { Exp.EInjR (e) }
| CASE e1 = expr OF L LPAREN x = id RPAREN ARROW e2 = expr ELSE R LPAREN y = id RPAREN ARROW e3 = expr
    { Exp.ECase (e1, x, e2, y, e3) }
| LET LPAREN x = id COMMA y = id RPAREN BE e1 = expr IN e2 = expr
    { Exp.ELetPair (x, y, e1, e2) }
| ROLL LPAREN e = expr RPAREN
    { Exp.ERoll (e) }
| UNROLL LPAREN e = expr RPAREN
    { Exp.EUnroll (e) }
| FORALL TICK t = id ARROW e = expr
    { Exp.ETypFun (t, e) }


boolean:
| e = arith
    { e }
| e1 = arith GT e2 = arith
    { Exp.EBinOp (e1, Exp.OpGt, e2) }
| e1 = arith LT e2 = arith
    { Exp.EBinOp (e1, Exp.OpLt, e2) }
| e1 = arith EQ e2 = arith
    { Exp.EBinOp (e1, Exp.OpEq, e2) }

arith:
| e = factor
    { e }
| e1 = arith PLUS e2 = factor
    { Exp.EBinOp (e1, Exp.OpPlus,e2) }
| e1 = arith MINUS e2 = factor
    { Exp.EBinOp (e1, Exp.OpMinus, e2) }

factor:
| e = app
    { e }
| e1 = factor TIMES e2 = app
    { Exp.EBinOp (e1, Exp.OpTimes, e2) }

app:
| e = simple
    { e }
| e1 = app e2 = simple
    { Exp.EBinOp (e1, OpAp, e2) }
| MINUS e = simple
    { Exp.EUnOp (OpNeg, e) }
| e = simple LPRJ
    { Exp.EPrjL (e) }
| e = simple RPRJ
    { Exp.EPrjR (e) }
| e = simple LSQUARE AT t = ty RSQUARE
    { Exp.ETypAp (e, t) }

simple:
| e = id
    { Exp.EVar (e) }
| i = INT
    { Exp.ENumLiteral i }
| b = BOOLLIT
    { Exp.EBoolLiteral b }
| LPAREN e = expr RPAREN
    { e }
| LPAREN RPAREN
    { Exp.ETriv }
| LPAREN e1 = expr COMMA e2 = expr RPAREN
    { Exp.EPair (e1, e2) }

id:
| i = ID
    { i }

ty:
| t = ty_sum
    { t }
| t1 = base_ty ARROW t2 = ty
    { Typ.Arrow (t1, t2) }

ty_sum:
| t = ty_prod
    { t }
| t1 = ty_sum PLUS t2 = ty_prod
    { Typ.Sum (t1, t2) }

ty_prod:
| t = base_ty
    { t }
| t1 = ty_prod TIMES t2 = base_ty
    { Typ.Prod (t1, t2) }

base_ty:
| NUM
    { Typ.Num }
| BOOL
    { Typ.Bool }
| UNIT
    { Typ.Unit }
| TICK i = id
    { Typ.Poly (i)}
| REC LPAREN TICK i = id DOT t = ty RPAREN
    { Typ.Rec (i, t) }
| FORALLT LPAREN TICK i = id DOT t = ty RPAREN
    { Typ.Forall (i, t) }
