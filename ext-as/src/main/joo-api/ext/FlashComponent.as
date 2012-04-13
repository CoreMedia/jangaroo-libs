package ext {
/**
 *
 * Listeners will be called with the following arguments:
 * <ul>

 *       <li>
 *           <code>this_:ext.chart.Chart</code>

 *       </li>

 * </ul>
 */
[Event(name="initialize")]


/**
 *
 *
 * <p>Copyright &#169; 2011 Sencha Inc.</p>
 *

 * <p>This component is created by the xtype 'flash' / the EXML element &lt;flash>.</p>
 * @see ext.config.flash
 * @see http://docs.sencha.com/ext-js/3-4/#!/api/Ext.FlashComponent Sencha Docs Ext JS 3.4
 */
public class FlashComponent extends BoxComponent {

  /**
   *
   *
   * @see ext.config.flash
   */
  public function FlashComponent() {
    super(null);
  }

  /**
   Sets the url for installing flash if it doesn't exist. This should be set to a local resource.
   * @see http://docs.sencha.com/ext-js/3-4/#!/api/Ext.FlashComponent-property-EXPRESS_INSTALL_URL Sencha Docs Ext JS 3.4
   */
  public static const EXPRESS_INSTALL_URL:String;

  /**
   The background color of the chart. Defaults to <tt>'#ffffff'</tt>.
   */
  public native function get backgroundColor():String;

  /**
   True to prompt the user to install flash if not installed. Note that this uses Ext.FlashComponent.EXPRESS_INSTALL_URL, which should be set to the local resource. Defaults to <tt>false</tt>.
   */
  public native function get expressInstall():Boolean;

  /**
   A set of key value pairs to be passed to the flash object as parameters. Possible parameters can be found here: http://kb2.adobe.com/cps/127/tn_12701.html Defaults to <tt>undefined</tt>.
   */
  public native function get flashParams():Object;

  /**
   A set of key value pairs to be passed to the flash object as flash variables. Defaults to <tt>undefined</tt>.
   */
  public native function get flashVars():Object;

  /**
   Indicates the version the flash content was published for. Defaults to <tt>'9.0.115'</tt>.
   */
  public native function get flashVersion():String;

  /**
   The URL of the chart to include. Defaults to <tt>undefined</tt>.
   */
  public native function get url():String;

  /**
   The wmode of the flash object. This can be used to control layering. Defaults to <tt>'opaque'</tt>.
   */
  public native function get wmode():String;

}
}
    