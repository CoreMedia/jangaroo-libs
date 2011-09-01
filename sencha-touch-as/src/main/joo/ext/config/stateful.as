package ext.config {


/**
 * Represents any object whose data can be saved by a <a href="Ext.data.Proxy.html">Proxy</a>. Ext.Model and Ext.View both inherit from this class as both can save state (Models save field state, Views save configuration)
 *
 * <p>This class serves as a
 * typed config object for constructor of class Stateful.</p>
 *
 * <p>Copyright &#169; 2011 Sencha Inc.</p>
 * @see ext.util.Stateful
 */
[ExtConfig(target="ext.util.Stateful")]
public class stateful extends observable {

  public function stateful(config:Object = null) {

    super(config);
  }


  /**
   The property on this Persistable object that its data is saved to. Defaults to 'data' (e.g. all persistable data resides in this.data.)
   */
  public native function get persistanceProperty():String;

  /**
   * @private
   */
  public native function set persistanceProperty(value:String):void;


}
}
    