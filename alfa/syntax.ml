module Identifier = struct
    type t = string
end

module Typ = struct
    type t = 
        | Num
        | Bool 
        | Arrow of t * t
        | Prod of t * t
        | Unit
        | Sum of t * t
        | Void 
        | TVar of identifier
        | Rec of identifier * t
end

module Exp = struct
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

    type t =
        | EVar of identifier
        | ENumLiteral of int
        | EBoolLiteral of bool
        | EUnOp of unop * t
        | EBinOp of t * binop * t
        | EIf of t * t * t
        | EFun of identifier * ty option * t
        | ELet of identifier * ty option * t * t
        | EFix of identifier * ty option * t
        | EPair of t * t
        | ETriv
        | ELetPair of identifier * identifier * t * t
        | EPrjL of t
        | EPrjR of t
        | EInjL of t
        | EInjR of t
        | ECase of t * identifier * t * identifier * t
        | ERoll of t
        | EUnroll of t
end
