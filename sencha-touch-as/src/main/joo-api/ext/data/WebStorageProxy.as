package ext.data {

import ext.config.webstorageproxy;
import ext.form.Number;

/**
 * WebStorageProxy is simply a superclass for the <a href="Ext.data.LocalStorageProxy.html">localStorage</a> and <a href="Ext.data.SessionStorageProxy.html">sessionStorage</a> proxies. It uses the new HTML5 key/value client-side storage objects to save <a href="Ext.data.Model.html">model instances</a> for offline use.

 *
 * <p>Copyright &#169; 2011 Sencha Inc.</p>
 *

 * @see ext.config.webstorageproxy
 * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/WebStorageProxy.html#cls-Ext.data.WebStorageProxy Ext JS source
 */
public class WebStorageProxy extends ClientProxy {

  /**
   * Creates the proxy, throws an error if local storage is not supported in the current browser
   *
   * @param config Optional config object
   * @see ext.config.webstorageproxy
   */
  public function WebStorageProxy(config:webstorageproxy) {
    super();
  }

  /**
   Cached map of records already retrieved by this Proxy - ensures that the same instance is always retrieved
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/WebStorageProxy.html#prop-Ext.data.WebStorageProxy-cache Ext JS source
   */
  public native function get cache():Object;

  /**
   * @private
   */
  public native function set cache(value:Object):void;

  /**
   The unique ID used as the key in which all record data are stored in the local storage object
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/ Ext JS source
   */
  public native function get id():String;

  /**
   * Destroys all records stored in the proxy and removes all keys and values used to support the proxy from the storage object
   *
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/WebStorageProxy.html#method-Ext.data.WebStorageProxy-clear Ext JS source
   */
  override public native function clear():void;

  /**
   *
   *
   * @return The record IDs. Each is cast as a Number
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/WebStorageProxy.html#method-Ext.data.WebStorageProxy-getIds Ext JS source
   */
  public native function getIds():Array;

  /**
   *
   *
   * @return The id
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/WebStorageProxy.html#method-Ext.data.WebStorageProxy-getNextId Ext JS source
   */
  public native function getNextId():ext.form.Number;

  /**
   *
   *
   * @param id The record's unique ID
   * @return The model instance
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/WebStorageProxy.html#method-Ext.data.WebStorageProxy-getRecord Ext JS source
   */
  public native function getRecord(id:String):Model;

  /**
   *
   *
   * @return The counter key
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/WebStorageProxy.html#method-Ext.data.WebStorageProxy-getRecordCounterKey Ext JS source
   */
  public native function getRecordCounterKey():String;

  /**
   *
   *
   * @param id The record id, or a Model instance
   * @return The unique key for this record
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/WebStorageProxy.html#method-Ext.data.WebStorageProxy-getRecordKey Ext JS source
   */
  public native function getRecordKey(id:*):String;

  /**
   *
   *
   * @return The storage object
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/WebStorageProxy.html#method-Ext.data.WebStorageProxy-getStorageObject Ext JS source
   */
  public native function getStorageObject():Object;

  /**
   *
   *
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/WebStorageProxy.html#method-Ext.data.WebStorageProxy-initialize Ext JS source
   */
  public native function initialize():void;

  /**
   *
   *
   * @param id The id of the record to remove, or an Ext.data.Model instance
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/WebStorageProxy.html#method-Ext.data.WebStorageProxy-removeRecord Ext JS source
   */
  public native function removeRecord(id:*):void;

  /**
   *
   *
   * @param ids The ids to set
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/WebStorageProxy.html#method-Ext.data.WebStorageProxy-setIds Ext JS source
   */
  public native function setIds(ids:Array):void;

  /**
   * Saves the given record in the Proxy. Runs each field's encode function (if present) to encode the data
   *
   * @param record The model instance
   * @param id The id to save the record under (defaults to the value of the record's getId() function)
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/WebStorageProxy.html#method-Ext.data.WebStorageProxy-setRecord Ext JS source
   */
  public native function setRecord(record:Model, id:String):void;

}
}
    