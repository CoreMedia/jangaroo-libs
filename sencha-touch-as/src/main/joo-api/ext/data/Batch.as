package ext.data {

import ext.config.batch;
import ext.form.Number;
import ext.util.Observable;

/**
 * Fired when all operations of this batch have been completed
 * Listeners will be called with the following arguments:
 * <ul>

 *       <li>
 *           <code>batch:ext.data.Batch</code>
 The batch object
 *       </li>

 *       <li>
 *           <code>operation:Object</code>
 The last operation that was executed
 *       </li>

 * </ul>
 */
[Event(name="complete")]

/**
 * Fired when a operation encountered an exception
 * Listeners will be called with the following arguments:
 * <ul>

 *       <li>
 *           <code>batch:ext.data.Batch</code>
 The batch object
 *       </li>

 *       <li>
 *           <code>operation:Object</code>
 The operation that encountered the exception
 *       </li>

 * </ul>
 */
[Event(name="exception")]

/**
 * Fired when each operation of the batch completes
 * Listeners will be called with the following arguments:
 * <ul>

 *       <li>
 *           <code>batch:ext.data.Batch</code>
 The batch object
 *       </li>

 *       <li>
 *           <code>operation:Object</code>
 The operation that just completed
 *       </li>

 * </ul>
 */
[Event(name="operationcomplete")]


/**
 * Provides a mechanism to run one or more <a href="Ext.data.Operation.html">operations</a> in a given order. Fires the 'operationcomplete' event after the completion of each Operation, and the 'complete' event when all Operations have been successfully executed. Fires an 'exception' event if any of the Operations encounter an exception.
 <p>Usually these are only used internally by <a href="Ext.data.Proxy.html">Ext.data.Proxy</a> classes</p>
 *
 * <p>Copyright &#169; 2011 Sencha Inc.</p>
 *

 * @see ext.config.batch
 * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/Batch.html#cls-Ext.data.Batch Ext JS source
 */
public class Batch extends Observable {

  /**
   *
   *
   * @param config Optional config object
   * @see ext.config.batch
   */
  public function Batch(config:batch) {
    super();
  }

  /**
   True to immediately start processing the batch as soon as it is constructed (defaults to false)
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/Batch.html#prop-Ext.data.Batch-autoStart Ext JS source
   */
  public native function get autoStart():Boolean;

  /**
   * @private
   */
  public native function set autoStart(value:Boolean):void;

  /**
   The index of the current operation being executed
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/Batch.html#prop-Ext.data.Batch-current Ext JS source
   */
  public native function get current():ext.form.Number;

  /**
   * @private
   */
  public native function set current(value:ext.form.Number):void;

  /**
   True if this batch has encountered an exception. This is cleared at the start of each operation
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/Batch.html#prop-Ext.data.Batch-hasException Ext JS source
   */
  public native function get hasException():Boolean;

  /**
   * @private
   */
  public native function set hasException(value:Boolean):void;

  /**
   True if this batch has been executed completely
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/Batch.html#prop-Ext.data.Batch-isComplete Ext JS source
   */
  public native function get isComplete():Boolean;

  /**
   * @private
   */
  public native function set isComplete(value:Boolean):void;

  /**
   True if the batch is currently running
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/Batch.html#prop-Ext.data.Batch-isRunning Ext JS source
   */
  public native function get isRunning():Boolean;

  /**
   * @private
   */
  public native function set isRunning(value:Boolean):void;

  /**
   Ordered array of operations that will be executed by this batch
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/Batch.html#prop-Ext.data.Batch-operations Ext JS source
   */
  public native function get operations():Array;

  /**
   * @private
   */
  public native function set operations(value:Array):void;

  /**
   True to automatically pause the execution of the batch if any operation encounters an exception (defaults to true)
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/Batch.html#prop-Ext.data.Batch-pauseOnException Ext JS source
   */
  public native function get pauseOnException():Boolean;

  /**
   * @private
   */
  public native function set pauseOnException(value:Boolean):void;

  /**
   The total number of operations in this batch. Read only
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/Batch.html#prop-Ext.data.Batch-total Ext JS source
   */
  public native function get total():ext.form.Number;

  /**
   * @private
   */
  public native function set total(value:ext.form.Number):void;

  /**
   * Adds a new operation to this batch
   *
   * @param operation The <a href="Ext.data.Operation.html">Operation</a> object
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/Batch.html#method-Ext.data.Batch-add Ext JS source
   */
  public native function add(operation:Object):void;

  /**
   * Pauses execution of the batch, but does not cancel the current operation
   *
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/Batch.html#method-Ext.data.Batch-pause Ext JS source
   */
  public native function pause():void;

  /**
   *
   *
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/Batch.html#method-Ext.data.Batch-runNextOperation Ext JS source
   */
  public native function runNextOperation():void;

  /**
   * Executes a operation by its numeric index
   *
   * @param index The operation index to run
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/Batch.html#method-Ext.data.Batch-runOperation Ext JS source
   */
  public native function runOperation(index:ext.form.Number):void;

  /**
   * Kicks off the execution of the batch, continuing from the next operation if the previous operation encountered an exception, or if execution was paused
   *
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/Batch.html#method-Ext.data.Batch-start Ext JS source
   */
  public native function start():void;

}
}
    