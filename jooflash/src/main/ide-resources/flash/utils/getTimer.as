package flash.utils {

public var getTimer : Function = (function(startTime : Number) : Function {
    return function() : Number {
        return new Date().getTime()-startTime;
    };
})(new Date().getTime());

}