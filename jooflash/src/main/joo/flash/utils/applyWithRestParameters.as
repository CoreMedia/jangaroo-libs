package flash.utils {

internal function applyWithRestParameters(closure:Function, parameters:Array):Function {
  switch (parameters.length) {
    case 0: return closure;
    case 1: return function():* {
      return closure(parameters[0]);
    };
    case 2: return function():* {
      return closure(parameters[0], parameters[1]);
    };
    case 3: return function():* {
      return closure(parameters[0], parameters[1], parameters[2]);
    };
    default: return function():* {
      closure.apply(null, parameters);
    };
  }
}

}