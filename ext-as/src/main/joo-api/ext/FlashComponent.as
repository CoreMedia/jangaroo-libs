package ext {
/**
*/
public class FlashComponent extends BoxComponent {
/**
 * @constructor
 * @xtype flash
 */
public function FlashComponent() {
  super(null);
}
    /**
     * @cfg {String} flashVersion
     * Indicates the version the flash content was published for. Defaults to <tt>'9.0.45'</tt>.
     */
    public var flashVersion  : String;
    /**
     * @cfg {String} backgroundColor
     * The background color of the chart. Defaults to <tt>'#ffffff'</tt>.
     */
    public var backgroundColor : String;
    /**
     * @cfg {String} wmode
     * The wmode of the flash object. This can be used to control layering. Defaults to <tt>'opaque'</tt>.
     */
    public var wmode : String;
    /**
     * @cfg {String} url
     * The URL of the chart to include. Defaults to <tt>undefined</tt>.
     */
    public var url : String;
    public var swfId ;
    public var swfWidth;
    public var swfHeight;
    /**
     * @cfg {Boolean} expressInstall
     * True to prompt the user to install flash if not installed. Note that this uses
     * ext.FlashComponent.EXPRESS_INSTALL_URL, which should be set to the local resource. Defaults to <tt>false</tt>.
     */
    public var expressInstall : Boolean;
    override protected native function initComponent() : void;
    override protected native function onRender(container : Element, position : Element) : void;
    public native function getSwfId() : void;
    override public native function getId() : String;
    public native function onFlashEvent(e) : void;
    public native function initSwf() : void;
    override protected native function beforeDestroy() : void;
    protected native function onSwfReady(isReset : Boolean) : void;
/**
 * Sets the url for installing flash if it doesn't exist. This should be set to a local resource.
 * @static
 */
public static var EXPRESS_INSTALL_URL  : String = 'http:/' + '/swfobject.googlecode.com/svn/trunk/swfobject/expressInstall.swf';
}}
