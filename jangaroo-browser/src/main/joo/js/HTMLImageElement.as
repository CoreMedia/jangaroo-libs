package js {

[Native("HTMLImageElement")]
public class HTMLImageElement extends HTMLElement {

  public native function get src() : String;

  public native function set src(url : String) : void;

  public native function get complete() : Boolean;

  public native function get width() : int;

  public native function set width(px : int) : void;

  public native function get height() : int;

  public native function set height(px : int) : void;

}
}
