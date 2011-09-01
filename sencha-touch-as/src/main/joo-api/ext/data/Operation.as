package ext.data {

import ext.config.operation;
import ext.form.Number;

/**
 * Represents a single read or write operation performed by a <a href="Ext.data.Proxy.html">Proxy</a>. Operation objects are used to enable communication between Stores and Proxies. Application developers should rarely need to interact with Operation objects directly.
 <p>Several Operations can be batched together in a <a href="Ext.data.Batch.html">batch</a>.</p>
 *
 * <p>Copyright &#169; 2011 Sencha Inc.</p>
 *

 * @see ext.config.operation
 * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/Operation.html#cls-Ext.data.Operation Ext JS source
 */
public class Operation {

  /**
   *
   *
   * @param config Optional config object
   * @see ext.config.operation
   */
  public function Operation(config:operation) {
    super();
  }

  /**
   Read-only property tracking the completion status of this Operation. Use <a href="output/Ext.data.Operation.html#Ext.data.Operation-isComplete">isComplete</a>.
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/Operation.html#prop-Ext.data.Operation-complete Ext JS source
   */
  public native function get complete():Boolean;

  /**
   * @private
   */
  public native function set complete(value:Boolean):void;

  /**
   The error object passed when <a href="output/Ext.data.Operation.html#Ext.data.Operation-setException">setException</a> was called. This could be any object or primitive.
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/Operation.html#prop-Ext.data.Operation-error Ext JS source
   */
  public native function get error():*;

  /**
   * @private
   */
  public native function set error(value:*):void;

  /**
   Read-only property tracking the exception status of this Operation. Use <a href="output/Ext.data.Operation.html#Ext.data.Operation-hasException">hasException</a> and see <a href="output/Ext.data.Operation.html#Ext.data.Operation-getError">getError</a>.
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/Operation.html#prop-Ext.data.Operation-exception Ext JS source
   */
  public native function get exception():Boolean;

  /**
   * @private
   */
  public native function set exception(value:Boolean):void;

  /**
   Read-only property tracking the run status of this Operation. Use <a href="output/Ext.data.Operation.html#Ext.data.Operation-isRunning">isRunning</a>.
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/Operation.html#prop-Ext.data.Operation-running Ext JS source
   */
  public native function get running():Boolean;

  /**
   * @private
   */
  public native function set running(value:Boolean):void;

  /**
   Read-only property tracking the start status of this Operation. Use <a href="output/Ext.data.Operation.html#Ext.data.Operation-isStarted">isStarted</a>.
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/Operation.html#prop-Ext.data.Operation-started Ext JS source
   */
  public native function get started():Boolean;

  /**
   * @private
   */
  public native function set started(value:Boolean):void;

  /**
   Read-only property tracking whether the Operation was successful or not. This starts as undefined and is set to true or false by the Proxy that is executing the Operation. It is also set to false by <a href="output/Ext.data.Operation.html#Ext.data.Operation-setException">setException</a>. Use <a href="output/Ext.data.Operation.html#Ext.data.Operation-wasSuccessful">wasSuccessful</a> to query success status.
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/Operation.html#prop-Ext.data.Operation-success Ext JS source
   */
  public native function get success():Boolean;

  /**
   * @private
   */
  public native function set success(value:Boolean):void;

  /**
   The action being performed by this Operation. Should be one of 'create', 'read', 'update' or 'destroy'
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/ Ext JS source
   */
  public native function get action():String;

  /**
   The batch that this Operation is a part of (optional)
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/ Ext JS source
   */
  public native function get batch():Batch;

  /**
   Optional array of filter objects. Only applies to 'read' actions.
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/ Ext JS source
   */
  public native function get filters():Array;

  /**
   Optional grouping configuration. Only applies to 'read' actions where grouping is desired.
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/ Ext JS source
   */
  public native function get group():Object;

  /**
   The number of records to load. Used on 'read' actions when paging is being used.
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/ Ext JS source
   */
  public native function get limit():ext.form.Number;

  /**
   Optional array of sorter objects. Only applies to 'read' actions.
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/ Ext JS source
   */
  public native function get sorters():Array;

  /**
   The start index (offset), used in paging when running a 'read' action.
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/ Ext JS source
   */
  public native function get start():ext.form.Number;

  /**
   True if this Operation is to be executed synchronously (defaults to true). This property is inspected by a <a href="Ext.data.Batch.html">Batch</a> to see if a series of Operations can be executed in parallel or not.
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/ Ext JS source
   */
  public native function get synchronous():Boolean;

  /**
   * Checks whether this operation should cause writing to occur.
   *
   * @return Whether the operation should cause a write to occur.
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/Operation.html#method-Ext.data.Operation-allowWrite Ext JS source
   */
  public native function allowWrite():Boolean;

  /**
   * Returns the error string or object that was set using <a href="output/Ext.data.Operation.html#Ext.data.Operation-setException">setException</a>
   *
   * @return The error object
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/Operation.html#method-Ext.data.Operation-getError Ext JS source
   */
  public native function getError():*;

  /**
   * Returns an array of Ext.data.Model instances as set by the Proxy.
   *
   * @return Any loaded Records
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/Operation.html#method-Ext.data.Operation-getRecords Ext JS source
   */
  public native function getRecords():Array;

  /**
   * Returns the ResultSet object (if set by the Proxy). This object will contain the <a href="Ext.data.Model.html">model</a> instances as well as meta data such as number of instances fetched, number available etc
   *
   * @return The ResultSet object
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/Operation.html#method-Ext.data.Operation-getResultSet Ext JS source
   */
  public native function getResultSet():ResultSet;

  /**
   * Returns true if this Operation encountered an exception (see also <a href="output/Ext.data.Operation.html#Ext.data.Operation-getError">getError</a>)
   *
   * @return True if there was an exception
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/Operation.html#method-Ext.data.Operation-hasException Ext JS source
   */
  public native function hasException():Boolean;

  /**
   * Returns true if the Operation has been completed
   *
   * @return True if the Operation is complete
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/Operation.html#method-Ext.data.Operation-isComplete Ext JS source
   */
  public native function isComplete():Boolean;

  /**
   * Returns true if the Operation has been started but has not yet completed.
   *
   * @return True if the Operation is currently running
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/Operation.html#method-Ext.data.Operation-isRunning Ext JS source
   */
  public native function isRunning():Boolean;

  /**
   * Returns true if the Operation has been started. Note that the Operation may have started AND completed, see <a href="output/Ext.data.Operation.html#Ext.data.Operation-isRunning">isRunning</a> to test if the Operation is currently running.
   *
   * @return True if the Operation has started
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/Operation.html#method-Ext.data.Operation-isStarted Ext JS source
   */
  public native function isStarted():Boolean;

  /**
   *
   *
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/Operation.html#method-Ext.data.Operation-markCompleted Ext JS source
   */
  public native function markCompleted():void;

  /**
   *
   *
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/Operation.html#method-Ext.data.Operation-markException Ext JS source
   */
  public native function markException():void;

  /**
   *
   *
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/Operation.html#method-Ext.data.Operation-markStarted Ext JS source
   */
  public native function markStarted():void;

  /**
   *
   *
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/Operation.html#method-Ext.data.Operation-markSuccessful Ext JS source
   */
  public native function markSuccessful():void;

  /**
   *
   *
   * @param batch The batch
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/Operation.html#method-Ext.data.Operation-setBatch Ext JS source
   */
  public native function setBatch(batch:Batch):void;

  /**
   * Marks the Operation as completed
   *
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/Operation.html#method-Ext.data.Operation-setCompleted Ext JS source
   */
  public native function setCompleted():void;

  /**
   * Marks the Operation as having experienced an exception. Can be supplied with an option error message/object.
   *
   * @param error Optional error string/object
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/Operation.html#method-Ext.data.Operation-setException Ext JS source
   */
  public native function setException(error:*):void;

  /**
   * Marks the Operation as started
   *
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/Operation.html#method-Ext.data.Operation-setStarted Ext JS source
   */
  public native function setStarted():void;

  /**
   * Marks the Operation as successful
   *
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/Operation.html#method-Ext.data.Operation-setSuccessful Ext JS source
   */
  public native function setSuccessful():void;

  /**
   * Returns true if the Operation has completed and was successful
   *
   * @return True if successful
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/Operation.html#method-Ext.data.Operation-wasSuccessful Ext JS source
   */
  public native function wasSuccessful():Boolean;

}
}
    