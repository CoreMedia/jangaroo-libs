package ext {

import ext.data.Model;
import ext.util.Observable;

/**
 * Fired when a new model instance has been successfully created by this controller
 * Listeners will be called with the following arguments:
 * <ul>

 *       <li>
 *           <code>instance:ext.data.Model</code>
 The newly-created model instance
 *       </li>

 * </ul>
 */
[Event(name="instance-created")]

/**
 * Fired when an attempt at saving a new instance failed
 * Listeners will be called with the following arguments:
 * <ul>

 *       <li>
 *           <code>instance:ext.data.Model</code>
 The instance that could not be saved
 *       </li>

 *       <li>
 *           <code>errors:Object</code>
 The set of errors (if any) that caused the failure
 *       </li>

 * </ul>
 */
[Event(name="instance-creation-failed")]

/**
 * Fired when an existing instance has been successfully destroyed by this controller
 * Listeners will be called with the following arguments:
 * <ul>

 *       <li>
 *           <code>instance:ext.data.Model</code>
 The instance that was destroyed
 *       </li>

 * </ul>
 */
[Event(name="instance-destroyed")]

/**
 * Fired when an existing instance could not be destroyed
 * Listeners will be called with the following arguments:
 * <ul>

 *       <li>
 *           <code>instance:ext.data.Model</code>
 The instance that could not be destroyed
 *       </li>

 *       <li>
 *           <code>errors:Object</code>
 The set of errors (if any) that caused the failure
 *       </li>

 * </ul>
 */
[Event(name="instance-destruction-failed")]

/**
 * Fired when an update to existing model instance could not be successfully completed
 * Listeners will be called with the following arguments:
 * <ul>

 *       <li>
 *           <code>instance:ext.data.Model</code>
 The instance that could not be updated
 *       </li>

 *       <li>
 *           <code>errors:Object</code>
 The set of errors (if any) that caused the failure
 *       </li>

 * </ul>
 */
[Event(name="instance-update-failed")]

/**
 * Fired when an existing model instance has been successfully updated by this controller
 * Listeners will be called with the following arguments:
 * <ul>

 *       <li>
 *           <code>instance:ext.data.Model</code>
 The instance that was updated
 *       </li>

 * </ul>
 */
[Event(name="instance-updated")]


/**
 *
 *
 * <p>Copyright &#169; 2011 Sencha Inc.</p>
 *

 * @see ext.config.controller
 * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/Controller.html#cls-Ext.Controller Ext JS source
 */
public class Controller extends Observable {

  /**
   *
   *
   * @see ext.config.controller
   */
  public function Controller() {
    super();
  }

  /**
   The current <a href="output/Ext.Controller.html#Ext.Controller-setRenderTarget">render target</a>. Read only
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/Controller.html#prop-Ext.Controller-renderTarget Ext JS source
   */
  public native function get renderTarget():Container;

  /**
   * @private
   */
  public native function set renderTarget(value:Container):void;

  /**
   * Callback automatically tied to the index view's 'build' event. By default this just renders the registered 'build' view
   *
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/Controller.html#method-Ext.Controller-build Ext JS source
   */
  public native function build():void;

  /**
   *
   *
   * @param view The component to close
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/Controller.html#method-Ext.Controller-closeView Ext JS source
   */
  public native function closeView(view:Component):void;

  /**
   * This function allows you to add listeners to a view in a convenient way
   *
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/Controller.html#method-Ext.Controller-control Ext JS source
   */
  public native function control():void;

  /**
   * Saves a phantom Model instance via its configured Proxy. Fires the 'instance-created' event if successful, the 'instance-creation-failed' event if not.
   *
   * @param data The data to create the instance from
   * @param options Optional options object containing callbacks for success and failure plus optional scope
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/Controller.html#method-Ext.Controller-create Ext JS source
   */
  public native function create(data:Object, options:Object):void;

  /**
   * Destroys one or more existing, previously saved model instances
   *
   * @param instance The model instance to destroy
   * @param options success and failure callbacks
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/Controller.html#method-Ext.Controller-destroy Ext JS source
   */
  public native function destroy(instance:Model, options:Object):void;

  /**
   * Renders the edit form for a given model instance
   *
   * @param instance The instance to edit
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/Controller.html#method-Ext.Controller-edit Ext JS source
   */
  public native function edit(instance:Model):void;

  /**
   * Returns the listeners to attach to the view rendered by the <a href="output/Ext.Controller.html#Ext.Controller-build">build</a> action. By default this returns listeners for save and cancel, but this can be overridden
   *
   * @return listeners
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/Controller.html#method-Ext.Controller-getBuildListeners Ext JS source
   */
  public native function getBuildListeners():Object;

  /**
   * Returns the listeners to attach to the view rendered by the <a href="output/Ext.Controller.html#Ext.Controller-edit">edit</a> action. By default this returns listeners for save and cancel, but this can be overridden
   *
   * @return listeners
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/Controller.html#method-Ext.Controller-getEditListeners Ext JS source
   */
  public native function getEditListeners():Object;

  /**
   * Returns the constructor for the model type linked to this controller
   *
   * @return The model constructor
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/Controller.html#method-Ext.Controller-getModel Ext JS source
   */
  public native function getModel():Model;

  /**
   * Handler for the 'cancel' event fired by an <a href="output/Ext.Controller.html#Ext.Controller-build">build</a> view. By default this just closes the view
   *
   * @param view The build form
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/Controller.html#method-Ext.Controller-onCancelBuild Ext JS source
   */
  public native function onCancelBuild(view:Component):void;

  /**
   * Handler for the 'cancel' event fired by an <a href="output/Ext.Controller.html#Ext.Controller-edit">edit</a> view. By default this just closes the view
   *
   * @param view The edit form
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/Controller.html#method-Ext.Controller-onCancelEdit Ext JS source
   */
  public native function onCancelEdit(view:Component):void;

  /**
   * Callback automatically tied to the index view's 'create' event. By default this just calls the controller's create function with the data and some basic callbacks to handle errors or show success. Can be overridden to provide custom behavior
   *
   * @param view The view instance that fired the event
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/Controller.html#method-Ext.Controller-onCreateInstance Ext JS source
   */
  public native function onCreateInstance(view:ext.View):void;

  /**
   * Callback automatically tied to the index view's 'destroy' event. By default that just calls the controller's destroy function with the model instance and some basic callbacks to handle errors or show success. Can be overridden to provide custom behavior.
   *
   * @param instance The instance to destroy
   * @param view The view instance that fired the event
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/Controller.html#method-Ext.Controller-onDestroyInstance Ext JS source
   */
  public native function onDestroyInstance(instance:Model, view:ext.View):void;

  /**
   * Callback automatically tied to the index view's 'update' event. By default this just calls the controller's update function with the data and some basic callbacks to handle errors or show success. Can be overridden to provide custom behavior
   *
   * @param view The view instance that fired the event
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/Controller.html#method-Ext.Controller-onUpdateInstance Ext JS source
   */
  public native function onUpdateInstance(view:Component):void;

  /**
   * Renders a given view based on a registered name
   *
   * @param viewName The name of the view to render
   * @param config Optional config object
   * @return The view instance
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/Controller.html#method-Ext.Controller-render Ext JS source
   */
  public native function render(viewName:String, config:Object):ext.View;

  /**
   * Sets the default container that components rendered using <a href="output/Ext.Controller.html#Ext.Controller-render">render</a> will be added to. In many applications there is a fixed navigation panel and a content panel - the content panel would usually form the render target in this type of setup.
   *
   * @param target The container to add rendered components to
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/Controller.html#method-Ext.Controller-setRenderTarget Ext JS source
   */
  public native function setRenderTarget(target:Container):void;

  /**
   * Updates an existing model instance by applying optional updates to it and attempting to save
   *
   * @param instance The existing instance
   * @param updates Optional additional updates to apply to the instance before saving
   * @param options success and failure callback functions
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/Controller.html#method-Ext.Controller-update Ext JS source
   */
  public native function update(instance:Model, updates:Object, options:Object):void;

}
}
    