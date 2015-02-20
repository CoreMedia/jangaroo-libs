package js {

[Native(global="DOMParser")]
public class DOMParser {

  public native function DOMParser();

  public native function parseFromString(xml:String, mimeType:String):Document;
}
}