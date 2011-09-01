package ext.config {

import ext.data.Batch;
import ext.form.Number;

import joo.JavaScriptObject;

/**
 * Represents a single read or write operation performed by a <a href="Ext.data.Proxy.html">Proxy</a>. Operation objects are used to enable communication between Stores and Proxies. Application developers should rarely need to interact with Operation objects directly.
 <p>Several Operations can be batched together in a <a href="Ext.data.Batch.html">batch</a>.</p>
 *
 * <p>This class serves as a
 * typed config object for constructor of class Operation.</p>
 *
 * <p>Copyright &#169; 2011 Sencha Inc.</p>
 * @see ext.data.Operation
 */
[ExtConfig(target="ext.data.Operation")]
public class operation extends JavaScriptObject {

  public function operation(config:Object = null) {

    super(config);
  }


  /**
   The action being performed by this Operation. Should be one of 'create', 'read', 'update' or 'destroy'
   */
  public native function get action():String;

  /**
   * @private
   */
  public native function set action(value:String):void;

  /**
   The batch that this Operation is a part of (optional)
   */
  public native function get batch():Batch;

  /**
   * @private
   */
  public native function set batch(value:Batch):void;

  /**
   Optional array of filter objects. Only applies to 'read' actions.
   */
  public native function get filters():Array;

  /**
   * @private
   */
  public native function set filters(value:Array):void;

  /**
   Optional grouping configuration. Only applies to 'read' actions where grouping is desired.
   */
  public native function get group():Object;

  /**
   * @private
   */
  public native function set group(value:Object):void;

  /**
   The number of records to load. Used on 'read' actions when paging is being used.
   */
  public native function get limit():ext.form.Number;

  /**
   * @private
   */
  public native function set limit(value:ext.form.Number):void;

  /**
   Optional array of sorter objects. Only applies to 'read' actions.
   */
  public native function get sorters():Array;

  /**
   * @private
   */
  public native function set sorters(value:Array):void;

  /**
   The start index (offset), used in paging when running a 'read' action.
   */
  public native function get start():ext.form.Number;

  /**
   * @private
   */
  public native function set start(value:ext.form.Number):void;

  /**
   True if this Operation is to be executed synchronously (defaults to true). This property is inspected by a <a href="Ext.data.Batch.html">Batch</a> to see if a series of Operations can be executed in parallel or not.
   */
  public native function get synchronous():Boolean;

  /**
   * @private
   */
  public native function set synchronous(value:Boolean):void;


}
}
    