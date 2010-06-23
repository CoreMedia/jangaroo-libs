package ext.data.dataproxy {

import ext.ExtError;
/**
 * DataProxy Error extension.
 */
public class Error extends ext.ExtError {
  /**
   * @param name
   * @param arg Record/Array[Record]/Array
   */
  public function Error(name : String, arg) : void {
    super(name);
    arg++;
  }
}}
