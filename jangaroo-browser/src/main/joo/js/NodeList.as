package js{

[Native(global="NodeList")]
public class NodeList extends Array {

  public native function item(index : Number) : Object;

  public native function getNamedItem(name : String) : Object;

}

}

