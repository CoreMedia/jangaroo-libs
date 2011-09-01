package ext.util {


/**
 * Represents any object whose data can be saved by a <a href="Ext.data.Proxy.html">Proxy</a>. Ext.Model and Ext.View both inherit from this class as both can save state (Models save field state, Views save configuration)
 *
 * <p>Copyright &#169; 2011 Sencha Inc.</p>
 *

 * @see ext.config.stateful
 * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/Stateful.html#cls-Ext.util.Stateful Ext JS source
 */
public class Stateful extends Observable {

  /**
   *
   *
   * @see ext.config.stateful
   */
  public function Stateful() {
    super();
  }

  /**
   Readonly flag - true if this Record has been modified.
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/Stateful.html#prop-Ext.util.Stateful-dirty Ext JS source
   */
  public native function get dirty():Boolean;

  /**
   * @private
   */
  public native function set dirty(value:Boolean):void;

  /**
   Internal flag used to track whether or not the model instance is currently being edited. Read-only
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/Stateful.html#prop-Ext.util.Stateful-editing Ext JS source
   */
  public native function get editing():Boolean;

  /**
   * @private
   */
  public native function set editing(value:Boolean):void;

  /**
   Key: value pairs of all fields whose values have changed
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/Stateful.html#prop-Ext.util.Stateful-modified Ext JS source
   */
  public native function get modified():Object;

  /**
   * @private
   */
  public native function set modified(value:Object):void;

  /**
   The property on this Persistable object that its data is saved to. Defaults to 'data' (e.g. all persistable data resides in this.data.)
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/ Ext JS source
   */
  public native function get persistanceProperty():String;

  /**
   * Usually called by the <a href="Ext.data.Store.html">Ext.data.Store</a> which owns the model instance. Commits all changes made to the instance since either creation or the last commit operation. <p>Developers should subscribe to the <a href="output/Ext.data.Store.html#Ext.data.Store-update">Ext.data.Store.update</a> event to have their code notified of commit operations.</p>
   *
   * @param silent True to skip notification of the owning store of the change (defaults to false)
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/Stateful.html#method-Ext.util.Stateful-commit Ext JS source
   */
  public native function commit(silent:Boolean = false):void;

  /**
   * Creates a copy (clone) of this Model instance.
   *
   * @param id A new id, defaults to the id of the instance being copied. See <code><a href="output/Ext.util.Stateful.html#Ext.util.Stateful-id">id</a></code>. To generate a phantom instance with a new id use:<pre><code>var rec = record.copy(); // clone the record
   Ext.data.Model.id(rec); // automatically generate a unique sequential id
   </code></pre>
   * @return
    * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/Stateful.html#method-Ext.util.Stateful-copy Ext JS source
   */
  public native function copy(id:String = null):Record;

  /**
   * Returns the value of the given field
   *
   * @param fieldName The field to fetch the value for
   * @return The value
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/Stateful.html#method-Ext.util.Stateful-get Ext JS source
   */
  public native function get(fieldName:String):*;

  /**
   * Gets a hash of only the fields that have been modified since this Model was created or commited.
   *
   * @return
    * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/Stateful.html#method-Ext.util.Stateful-getChanges Ext JS source
   */
  public native function getChanges():Object;

  /**
   * Returns <tt>true</tt> if the passed field name has been <code><a href="output/Ext.util.Stateful.html#Ext.util.Stateful-modified">modified</a></code> since the load or last commit.
   *
   * @param fieldName <a href="output/Ext.data.Field.html#Ext.data.Field-name">Ext.data.Field.name</a>
   * @return
    * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/Stateful.html#method-Ext.util.Stateful-isModified Ext JS source
   */
  public native function isModified(fieldName:String):Boolean;

  /**
   * Usually called by the <a href="Ext.data.Store.html">Ext.data.Store</a> to which this model instance has been <a href="output/Ext.util.Stateful.html#Ext.util.Stateful-join">joined</a>. Rejects all changes made to the model instance since either creation, or the last commit operation. Modified fields are reverted to their original values. <p>Developers should subscribe to the <a href="output/Ext.data.Store.html#Ext.data.Store-update">Ext.data.Store.update</a> event to have their code notified of reject operations.</p>
   *
   * @param silent True to skip notification of the owning store of the change (defaults to false)
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/Stateful.html#method-Ext.util.Stateful-reject Ext JS source
   */
  public native function reject(silent:Boolean = false):void;

  /**
   * Sets the given field to the given value, marks the instance as dirty
   *
   * @param fieldName The field to set, or an object containing key/value pairs
   * @param value The value to set
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/Stateful.html#method-Ext.util.Stateful-set Ext JS source
   */
  public native function set(fieldName:*, value:*):void;

  /**
   * Marks this <b>Record</b> as <code><a href="output/Ext.util.Stateful.html#Ext.util.Stateful-dirty">dirty</a></code>. This method is used interally when adding <code><a href="output/Ext.util.Stateful.html#Ext.util.Stateful-phantom">phantom</a></code> records to a <a href="output/Ext.data.Store.html#Ext.data.Store-writer">writer enabled store</a>.
   <br/><p>Marking a record <code><a href="output/Ext.util.Stateful.html#Ext.util.Stateful-dirty">dirty</a></code> causes the phantom to be returned by <a href="output/Ext.data.Store.html#Ext.data.Store-getModifiedRecords">Ext.data.Store.getModifiedRecords</a> where it will have a create action composed for it during <a href="output/Ext.data.Store.html#Ext.data.Store-save">store save</a> operations.</p>
   *
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/Stateful.html#method-Ext.util.Stateful-setDirty Ext JS source
   */
  public native function setDirty():void;

}
}
    