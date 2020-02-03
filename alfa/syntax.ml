type ty = 
    | Num
    | Bool 
    | Arrow of ty * ty
    | Prod of ty * ty
    | Unit
    | Sum of ty * ty
    | Void 
    | TVar of identifier
    | Rec of identifier * ty

type unop =
    | OpNeg

type binop =
    | OpAp
    | OpLt
    | OpGt
    | OpEq
    | OpPlus 
    | OpMinus 
    | OpTimes

type identifier = string

type expr =
    | EVar of identifier
    | ENumLiteral of int
    | EBoolLiteral of bool
    | EUnOp of unop * expr
    | EBinOp of expr * binop * expr
    | EIf of expr * expr * expr
    | EFun of identifier * ty option * expr
    | ELet of identifier * ty option * expr * expr
    | EFix of identifier * ty option * expr
    | EPair of expr * expr
    | ETriv
    | ELetPair of identifier * identifier * expr * expr
    | EPrjL of expr
    | EPrjR of expr
    | EInjL of expr
    | EInjR of expr
    | ECase of expr * identifier * expr * identifier * expr
    | ERoll of expr
    | EUnroll of expr
