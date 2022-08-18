
import javascript

// from CallExpr dollarCallWithArgument, Expr dollarArg
// where dollarCallWithArgument.getCalleeName() = "$" and 
//     dollarArg = dollarCallWithArgument.getAnArgument()
// select dollarCallWithArgument

// from CallExpr dollarCallWithArgument
// where dollarCallWithArgument.getCalleeName() = "$" and
//     exists(Expr dollarArg | dollarArg = dollarCallWithArgument.getAnArgument())
// select dollarCallWithArgument

from DataFlow::FunctionNode function, DataFlow::ParameterNode parameter
where function = jquery().getAPropertyRead("fn").getAPropertySource() and
    parameter = function.getLastParameter()
select function, parameter