package js{

public interface Window {

  function get top() : Window;



  function get parent() : Window;



  function get frameElement() : Element;



  function get status() : String;



  function set status(status : String) : void;



  function get document() : Document;



  function get navigator() : Navigator;



  function get location() : Location;



  function get event() : Event;



  function open(name : String = null, mode: String = null, windowFeatures : String = null) : Window;



  function focus() : void;



  function addEventListener(eventType : String, handler : Function, capture : Boolean = false) : void;



  function setTimeout(handler : * /* Function or String */, millies : Number) : Object;



  function clearTimeout(timer : Object) : void;



  function setInterval(handler : Function, millies : Number) : Object;



  function clearInterval(interval : Object) : void;



  function alert(message : String) : void;



  function confirm(message : String) : Boolean;



  function prompt(message : String, defaultValue : String) : String;



  function get innerWidth() : Number;



  function get innerHeight() : Number;



  function eval(expr : String) : *;



  function getComputedStyle(elem : Element, pseudoElt : String) : Style;



  function get screen() : Screen;



  function moveTo(x:int, y:int) : void;



  function get closed() : Boolean;



  function close() : void;


  /**
   * Scrolls to a particular set of coordinates in the document.
   * @param x is the pixel along the horizontal axis of the document that you want displayed in the upper left.
   * @param y is the pixel along the vertical axis of the document that you want displayed in the upper left.
   */
  function scrollTo(x:int, y:int):void;

  /**
   * Firefox only.
   */
  function getSelection() : Selection;

}

}

