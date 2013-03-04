package js{

public interface IJSON {

  function parse(jsonString:String) : Object;

  function stringify(json:Object) : String;

}
}