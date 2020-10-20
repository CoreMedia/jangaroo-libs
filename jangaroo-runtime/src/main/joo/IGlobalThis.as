package {
public interface IGlobalThis {

  function setTimeout(handler : * /* Function or String */, millies : Number, ...parameters) : Object;

  [Parameter("timer", coerceTo="Number")]
  function clearTimeout(timer : Object) : void;

  function setInterval(handler : Function, millies : Number, ...parameters) : Object;

  [Parameter("interval", coerceTo="Number")]
  function clearInterval(interval : Object) : void;
}
}
