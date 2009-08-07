package {
public class ArgumentError extends Error {
  public function ArgumentError(msg : String = "", id : String = "") {
    // built-in class Error cannot be used in super-constructor call :-(
    this.name = "ArgumentError";
    this.message = "Error #"+id+": Parameter "+msg+" must have a legal value.";
  }

}
}