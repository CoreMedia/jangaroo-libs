package js{

[Native("Window")]
public dynamic class Window implements IGlobalThis {



  public native function get top() : Window;



  public native function get parent() : Window;



  public native function get frames() : FrameList;



  public native function get frameElement() : Element;



  public native function get status() : String;



  public native function set status(status : String) : void;



  public native function get document() : Document;



  public native function get navigator() : Navigator;



  public native function get location() : Location;



  public native function get event() : Event;



  public native function open(name : String = null, mode: String = null, windowFeatures : String = null) : Window;



  public native function focus() : void;



  public native function addEventListener(eventType : String, handler : Function, capture : Boolean = false) : void;



  public native function setTimeout(handler : * /* Function or String */, millies : Number, ...parameters) : Object;



  [Parameter("timer", coerceTo="Number")]
  public native function clearTimeout(timer : Object) : void;



  public native function setInterval(handler : Function, millies : Number, ...parameters) : Object;



  [Parameter("interval", coerceTo="Number")]
  public native function clearInterval(interval : Object) : void;



  public native function alert(message : String) : void;



  public native function confirm(message : String) : Boolean;



  public native function prompt(message : String, defaultValue : String) : String;



  public native function get innerWidth() : Number;



  public native function get innerHeight() : Number;



  public native function eval(expr : String) : *;



  public native function getComputedStyle(elem : Element, pseudoElt : String) : CSS2Properties;



  public native function get screen() : Screen;



  public native function moveTo(x:int, y:int) : void;



  public native function get closed() : Boolean;



  public native function close() : void;


  /**
   * Scrolls to a particular set of coordinates in the document.
   * @param x is the pixel along the horizontal axis of the document that you want displayed in the upper left.
   * @param y is the pixel along the vertical axis of the document that you want displayed in the upper left.
   */
  public native function scrollTo(x:int, y:int):void;



  public native function getSelection() : Selection;



  public native function get sessionStorage():Storage;



  public native function get localStorage():Storage;

}

}

