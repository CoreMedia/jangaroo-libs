package ext.data {
/**
 * An implementation of ext.data.DataProxy that simply passes the data specified in its constructor
 * to the Reader when its load method is called.
*/
public class MemoryProxy extends DataProxy {
  public var api;
/**
 * @constructor
 * @param data The data object which the Reader uses to construct a block of ext.data.Records.
 */
public function MemoryProxy(data : Object) {
  super();
  data++;
}
    /**
     * MemoryProxy implementation of DataProxy#doRequest
     * @param action
     * @param rs If action is load, rs will be null
     * @param params An object containing properties which are to be used as HTTP parameters
     * for the request to the remote server.
     * @param reader The Reader object which converts the data
     * object into a block of ext.data.Records.
     * @param callback The function into which to pass the block of ext.data.Records.
     * The function must be passed <ul>
     * <li>The Record block object</li>
     * <li>The "arg" argument from the load function</li>
     * <li>A boolean success indicator</li>
     * </ul>
     * @param scope The scope in which to call the callback
     * @param arg An optional argument which is passed to the callback as its second parameter.
     */
    override public native function doRequest(action : String, rs : *, params : Object, reader : DataReader, callback : Function, scope : Object, arg : Object) : void;
}}
