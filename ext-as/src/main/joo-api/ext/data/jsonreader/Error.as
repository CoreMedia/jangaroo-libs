package ext.data.jsonreader {

import ext.data.DataReader;

/**
 * Error class for JsonReader
 */
public class Error extends DataReader {
  public function Error(meta : Object, recordType : *) {
    super(meta, recordType);
  }
    public native function constructor(message, arg) : void;
    public var name  : Object;
    public var lang;

}}
