%token NUM
%token BOOL
%token ARROW
%token <int> INT
%token <string> VAR
%token <bool> BOOLLIT
%token IF THEN ELSE
%token FUN
%token LET OFTYPE BE IN
%token PLUS MINUS TIMES
%token GT LT EQ
%token LPAREN RPAREN
%token EOL

%left EQ GT LT
%left PLUS MINUS        /* lower precedence */
%left TIMES            
%nonassoc UMINUS        /* higher precedence */

%start <Syntax.expr> main
%{ open Syntax %}

%%

main:
| e = expr EOL
    { e }

expr:
| i = INT
    { ENumLiteral i }
| b = BOOLLIT
    { EBoolLiteral b }
| LPAREN e = expr RPAREN
    { e }
| e1 = expr PLUS e2 = expr
    { EBinOp (e1, OpPlus,e2) }
| e1 = expr MINUS e2 = expr
    { EBinOp (e1, OpMinus, e2) }
| e1 = expr TIMES e2 = expr
    { EBinOp (e1, OpTimes, e2) }
| e1 = expr GT e2 = expr
    { EBinOp (e1, OpGt, e2) }
| e1 = expr LT e2 = expr
    { EBinOp (e1, OpLt, e2) }
| e1 = expr EQ e2 = expr
    { EBinOp (e1, OpEq, e2) }
| MINUS e = expr %prec UMINUS
    { EUnOp (OpNeg, e) }
| IF e1 = expr THEN e2 = expr ELSE e3 = expr
    { EIf (e1, e2, e3) }
| FUN v = var ARROW e = expr
    { EFun (v, e) }
| LET v = var OFTYPE t = ty BE e1 = expr IN e2 = expr
    { ELet (v, Some(t), e1, e2) }
| LET v = var BE e1 = expr IN e2 = expr
    { ELet (v, None, e1, e2) }
| e1 = expr e2 = expr   
    { EBinOp (e1, OpAp, e2) }

var:
| v = VAR
    { v }

ty:
| NUM
    { Num }
| BOOL
    { Bool }
| t1 = ty ARROW t2 = ty
    { Arrow (t1, t2) }