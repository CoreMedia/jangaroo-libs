package ext.data.dataproxy {

import ext.Error;
/**
 * DataProxy Error extension.
 */
public class Error extends ext.Error {
  /**
   * @param name
   * @param arg Record/Array[Record]/Array
   */
  public function Error(name : String, arg) : void {
    super(name);
    arg++;
  }
}}
