package ext {
/**
 * A specialized tooltip class for tooltips that can be specified in markup and automatically managed by the global
 * <b class='link'>ext.QuickTips</b> instance.  See the QuickTips class header for additional usage details and examples.
*/
public class QuickTip extends ToolTip {
/**
 * @constructor
 * Create a new Tip
 * @param config The configuration options
 */
public function QuickTip(config : Object) {
  super(config);
}
    /**
     * @cfg {Mixed} target The target HTMLElement, ext.Element or id to associate with this quicktip (defaults to the document).
     */
    /**
     * @cfg {Boolean} interceptTitles True to automatically use the element's DOM title value if available (defaults to false).
     */
    public var interceptTitles  : Boolean;
    protected var tagConfig ;
    override protected native function initComponent() : void;
    /**
     * Configures a new quick tip instance and assigns it to a target element.  The following config values are
     * supported (for example usage, see the <b class='link'>ext.QuickTips</b> class header):
     * <div class="mdetail-params"><ul>
     * <li>autoHide</li>
     * <li>cls</li>
     * <li>dismissDelay (overrides the singleton value)</li>
     * <li>target (required)</li>
     * <li>text (required)</li>
     * <li>title</li>
     * <li>width</li></ul></div>
     * @param config The config object
     */
    public native function register(config : Object) : void;
    /**
     * Removes this quick tip from its element and destroys it.
     * @param el The element from which the quick tip is to be removed.
     */
    public native function unregister(el : *) : void;
    /**
     * Hides a visible tip or cancels an impending show for a particular element.
     * @param el The element that is the target of the tip.
     */
    public native function cancelShow(el : *) : void;
    override protected native function onTargetOver(e) : void;
    override protected native function onTargetOut(e) : void;
    override public native function showAt(xy : Array) : void;
    override public native function hide() : Component;
}}
