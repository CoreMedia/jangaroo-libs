package ext.config {


/**
 * Interactions are very simple objects that represent an action performed by specific <a href="Ext.Controller.html">Ext.Controller</a> action. The must consist of the <a href="output/Ext.Interaction.html#Ext.Interaction-controller">controller</a> and <a href="output/Ext.Interaction.html#Ext.Interaction-action">action</a> to be called, but can contain any other data too. See <a href="Ext.Dispatcher.html">Ext.Dispatcher</a> for more details on how Interactions fit into the application ecosystem.
 <p>Interactions are an internal representation that most developers will not have much direct use for. They help provide a normalized API for controller actions - each action should simply be set up to receive an Interaction object. Because Interaction objects are always created when dispatching to a controller action, it is possible to store the Interaction objects that were created in a session to perform simple analytics on how the application is used. This is not built into the framework at the moment, but is left open for custom development if needed.</p>
 *
 * <p>This class serves as a
 * typed config object for constructor of class Interaction.</p>
 *
 * <p>Copyright &#169; 2011 Sencha Inc.</p>
 * @see ext.Interaction
 */
[ExtConfig(target="ext.Interaction")]
public class interaction extends observable {

  public function interaction(config:Object = null) {

    super(config);
  }


  /**
   The controller action to invoke
   */
  public native function get action():String;

  /**
   * @private
   */
  public native function set action(value:String):void;

  /**
   Any arguments to pass to the action
   */
  public native function get args():Array;

  /**
   * @private
   */
  public native function set args(value:Array):void;

  /**
   The controller to dispatch to
   */
  public native function get controller():String;

  /**
   * @private
   */
  public native function set controller(value:String):void;

  /**
   Optional scope to execute the controller action in
   */
  public native function get scope():Object;

  /**
   * @private
   */
  public native function set scope(value:Object):void;


}
}
    