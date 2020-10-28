package js{

[Native("JSON")]
public interface IJSON {

  function parse(jsonString:String) : Object;

  function stringify(json:Object) : String;

}
}