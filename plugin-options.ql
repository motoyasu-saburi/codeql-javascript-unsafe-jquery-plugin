
import javascript

// from CallExpr dollarCallWithArgument, Expr dollarArg
// where dollarCallWithArgument.getCalleeName() = "$" and 
//     dollarArg = dollarCallWithArgument.getAnArgument()
// select dollarCallWithArgument

// from CallExpr dollarCallWithArgument
// where dollarCallWithArgument.getCalleeName() = "$" and
//     exists(Expr dollarArg | dollarArg = dollarCallWithArgument.getAnArgument())
// select dollarCallWithArgument

from CallExpr dollarCallWithArgument
where dollarCallWithArgument.getCalleeName() = "$" and 
    exists(dollarCallWithArgument.getAnArgument())
select dollarCallWithArgument