
import javascript

from DataFlow::FunctionNode function, DataFlow::ParameterNode parameter
where function = jquery().getAPropertyRead("fn").getAPropertySource() and
    parameter = function.getLastParameter()
select function, parameter