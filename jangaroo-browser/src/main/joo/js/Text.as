package js{
public class Text extends Node {
  public native function get data() : String;

  public native function set data(data : String) : void;

  public native function appendData(data : String) : void;
}
}
