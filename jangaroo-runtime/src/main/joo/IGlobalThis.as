package {
public interface IGlobalThis {

  function setTimeout(handler : * /* Function or String */, millies : Number, ...parameters) : Object;

  function clearTimeout(timer : Object) : void;

  function setInterval(handler : Function, millies : Number, ...parameters) : Object;

  function clearInterval(interval : Object) : void;
}
}
