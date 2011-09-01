package ext {

import ext.config.interaction;
import ext.util.Observable;

/**
 * Interactions are very simple objects that represent an action performed by specific <a href="Ext.Controller.html">Ext.Controller</a> action. The must consist of the <a href="output/Ext.Interaction.html#Ext.Interaction-controller">controller</a> and <a href="output/Ext.Interaction.html#Ext.Interaction-action">action</a> to be called, but can contain any other data too. See <a href="Ext.Dispatcher.html">Ext.Dispatcher</a> for more details on how Interactions fit into the application ecosystem.
 <p>Interactions are an internal representation that most developers will not have much direct use for. They help provide a normalized API for controller actions - each action should simply be set up to receive an Interaction object. Because Interaction objects are always created when dispatching to a controller action, it is possible to store the Interaction objects that were created in a session to perform simple analytics on how the application is used. This is not built into the framework at the moment, but is left open for custom development if needed.</p>
 *
 * <p>Copyright &#169; 2011 Sencha Inc.</p>
 *

 * @see ext.config.interaction
 * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/Interaction.html#cls-Ext.Interaction Ext JS source
 */
public class Interaction extends Observable {

  /**
   *
   *
   * @param config Options object containing at least a controller/action pair
   * @see ext.config.interaction
   */
  public function Interaction(config:interaction) {
    super();
  }

  /**
   True if this Interaction has already been dispatched
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/Interaction.html#prop-Ext.Interaction-dispatched Ext JS source
   */
  public native function get dispatched():Boolean;

  /**
   * @private
   */
  public native function set dispatched(value:Boolean):void;

  /**
   The controller action to invoke
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/ Ext JS source
   */
  public native function get action():String;

  /**
   Any arguments to pass to the action
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/ Ext JS source
   */
  public native function get args():Array;

  /**
   The controller to dispatch to
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/ Ext JS source
   */
  public native function get controller():String;

  /**
   Optional scope to execute the controller action in
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/ Ext JS source
   */
  public native function get scope():Object;

}
}
    