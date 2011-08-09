package ext.config {


/**
 *
 * <p>This class serves as a typed config object for constructor of class FlashComponent.</p>
 *
 * @see ext.FlashComponent
 */
[ExtConfig(target="ext.FlashComponent", xtype="flash")]
public class flash extends box {

  public function flash(config:Object = null) {

    super(config);
  }


  /**
   The background color of the chart. Defaults to <tt>'#ffffff'</tt>.
   */
  public native function get backgroundColor():String;

  /**
   * @private
   */
  public native function set backgroundColor(value:String):void;

  /**
   True to prompt the user to install flash if not installed. Note that this uses Ext.FlashComponent.EXPRESS_INSTALL_URL, which should be set to the local resource. Defaults to <tt>false</tt>.
   */
  public native function get expressInstall():Boolean;

  /**
   * @private
   */
  public native function set expressInstall(value:Boolean):void;

  /**
   A set of key value pairs to be passed to the flash object as parameters. Possible parameters can be found here: http://kb2.adobe.com/cps/127/tn_12701.html Defaults to <tt>undefined</tt>.
   */
  public native function get flashParams():Object;

  /**
   * @private
   */
  public native function set flashParams(value:Object):void;

  /**
   A set of key value pairs to be passed to the flash object as flash variables. Defaults to <tt>undefined</tt>.
   */
  public native function get flashVars():Object;

  /**
   * @private
   */
  public native function set flashVars(value:Object):void;

  /**
   Indicates the version the flash content was published for. Defaults to <tt>'9.0.115'</tt>.
   */
  public native function get flashVersion():String;

  /**
   * @private
   */
  public native function set flashVersion(value:String):void;

  /**
   The URL of the chart to include. Defaults to <tt>undefined</tt>.
   */
  public native function get url():String;

  /**
   * @private
   */
  public native function set url(value:String):void;

  /**
   The wmode of the flash object. This can be used to control layering. Defaults to <tt>'opaque'</tt>.
   */
  public native function get wmode():String;

  /**
   * @private
   */
  public native function set wmode(value:String):void;


}
}
    