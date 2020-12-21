type typ =
    | Int
    | Bool
    | Void
    | Tab of typ

type expr =
    | Cst  of int
    | Cst_b of bool
    | Add  of expr * expr
    | Sub of expr * expr
    | Mul  of expr * expr
    | Div of expr * expr
    | Mod of expr * expr
    | And of expr * expr
    | Or of expr * expr
    | Lt   of expr * expr
    | Le of expr * expr
    | Gt of expr * expr
    | Ge of expr * expr
    | Eq of expr * expr
    | Ne of expr * expr
    | Not of expr
    | Get  of string
    | Call of string * expr list
type instr =
    | Putchar of expr
    | Set     of string * expr
    | If      of expr * seq * seq
    | While   of expr * seq
    | For of typ * string * expr * expr * instr * seq
    | Return  of expr
    | Expr    of expr
and seq = instr list



type fun_def = {
    name:   string;
    params: (string * typ) list;
    return: typ;
    locals: (string * typ * expr option) list;
    code:   seq;
  }

type prog = {
    globals:   (string * typ * expr option) list;
    functions: fun_def list;
  }
