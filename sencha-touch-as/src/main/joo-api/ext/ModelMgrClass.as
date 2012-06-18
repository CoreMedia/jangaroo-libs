package ext {

import ext.form.Number;
import ext.util.MixedCollection;

/**
 *
 *
 * <p>Copyright &#169; 2011 Sencha Inc.</p>
 *

 * <p>This class defines the type of the singleton ModelMgr.</p>
 * @see ext.#ModelMgr ext.ModelMgr
 * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/ModelMgr.html#cls-Ext.ModelMgr Ext JS source
 */
[Native]
public class ModelMgrClass extends AbstractManager {

  /**
   * @private
   *
   */
  public function ModelMgrClass() {
    super();
  }

  /**
   Private stack of associations that must be created once their associated model has been defined
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/ModelMgr.html#prop-Ext.ModelMgr-associationStack Ext JS source
   */
  public native function get associationStack():Array;

  /**
   * @private
   */
  public native function set associationStack(value:Array):void;

  /**
   The string type of the default Model Proxy. Defaults to 'ajax'
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/ModelMgr.html#prop-Ext.ModelMgr-defaultProxyType Ext JS source
   */
  public native function get defaultProxyType():String;

  /**
   * @private
   */
  public native function set defaultProxyType(value:String):void;

  /**
   *
   *
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/ModelMgr.html#method-Ext.ModelMgr-addAssociation Ext JS source
   */
  public native function addAssociation():void;

  /**
   *
   *
   * @param associations The array of Association configs
   * @param name The string name of the owner model
   * @return The Mixed Collection
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/ModelMgr.html#method-Ext.ModelMgr-createAssociations Ext JS source
   */
  public native function createAssociations(associations:Array, name:String):MixedCollection;

  /**
   *
   *
   * @param fields The array of field configurations
   * @return The Mixed Collection
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/ModelMgr.html#method-Ext.ModelMgr-createFields Ext JS source
   */
  public native function createFields(fields:Array):MixedCollection;

  /**
   * Creates a new instance of a Model using the given data.
   *
   * @param data Data to initialize the Model's fields with
   * @param name The name of the model to create
   * @param id Optional unique id of the Model instance (see <a href="Ext.data.Model.html">Ext.data.Model</a>)
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/ModelMgr.html#method-Ext.ModelMgr-create Ext JS source
   */
  public native function createModelMgr(data:Object, name:String, id:ext.form.Number):void;

  /**
   * Returns the <a href="Ext.data.Model.html">Ext.data.Model</a> for a given model name
   *
   * @param id The id of the model or the model instance.
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/ModelMgr.html#method-Ext.ModelMgr-getModel Ext JS source
   */
  public native function getModel(id:*):void;

  /**
   *
   *
   * @param model The model that was just created
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/ModelMgr.html#method-Ext.ModelMgr-onModelDefined Ext JS source
   */
  public native function onModelDefined(model:Function):void;

  /**
   * Registers a model definition. All model plugins marked with isDefault: true are bootstrapped immediately, as are any addition plugins defined in the model config.
   *
   * @param xtype The mnemonic string by which the Component class may be looked up.
   * @param cls The new Component class.
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/ModelMgr.html#method-Ext.ModelMgr-registerType Ext JS source
   */
  override public native function registerType(xtype:String, cls:Class):void;

}
}
    