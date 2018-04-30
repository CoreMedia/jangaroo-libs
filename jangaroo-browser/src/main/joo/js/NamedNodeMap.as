package js {

[Native("NamedNodeMap")]
public class NamedNodeMap {

  public native function get length():uint;

  public native function item(index:Number):Attr;

  public native function getNamedItem(name : String) : Attr;

}

}

