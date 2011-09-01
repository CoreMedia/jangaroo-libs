package ext.config {


/**
 * Base Class for HBoxLayout and VBoxLayout Classes. Generally it should not need to be used directly.

 *
 * <p>This class serves as a
 * typed config object for constructor of class BoxLayout.</p>
 *
 * <p>Copyright &#169; 2011 Sencha Inc.</p>
 * @see ext.layout.BoxLayout
 */
[ExtConfig(target="ext.layout.BoxLayout")]
public class boxlayout extends containerlayout {

  public function boxlayout(config:Object = null) {

    super(config);
  }


  /**
   Specifies the direction in which child components are laid out. Defaults to <tt>'normal'</tt>, which means they are laid out in the order they are added. You can use the <tt>'reverse'</tt> option to have them laid out in reverse.
   */
  public native function get direction():String;

  /**
   * @private
   */
  public native function set direction(value:String):void;


}
}
    