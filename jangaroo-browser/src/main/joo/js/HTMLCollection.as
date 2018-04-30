package js {

[Native("HTMLCollection")]
public class HTMLCollection {

  public native function get length():uint;

  public native function item(index:Number):Node;

  public native function namedItem(name:String):Node;

}

}

