package ext.config {


/**
 * Creates draggable splitter bar functionality from two elements (element to be dragged and element to be resized). <br/><br/>Usage: <pre><code>var split = new Ext.SplitBar("elementToDrag", "elementToSize",
 Ext.SplitBar.HORIZONTAL, Ext.SplitBar.LEFT);
 split.setAdapter(new Ext.SplitBar.AbsoluteLayoutAdapter("container"));
 split.minSize = 100;
 split.maxSize = 600;
 split.animate = true;
 split.on('moved', splitterMoved);
 </code></pre>
 *
 * <p>This class serves as a
 * typed config object for constructor of class SplitBar.</p>
 *
 * <p>Copyright &#169; 2011 Sencha Inc.</p>
 * @see ext.SplitBar
 */
[ExtConfig(target="ext.SplitBar")]
public class splitbar extends observable {

  public function splitbar(config:Object = null) {

    super(config);
  }

  /**
   Whether to animate the transition to the new size
   * @see http://docs.sencha.com/ext-js/3-4/#!/api/Ext.SplitBar-property-animate Sencha Docs Ext JS 3.4
   */
  public native function get animate():Boolean;

  /**
   * @private
   */
  public native function set animate(value:Boolean):void;

  /**
   The maximum size of the resizing element. (Defaults to 2000)
   * @see http://docs.sencha.com/ext-js/3-4/#!/api/Ext.SplitBar-property-maxSize Sencha Docs Ext JS 3.4
   */
  public native function get maxSize():Number;

  /**
   * @private
   */
  public native function set maxSize(value:Number):void;

  /**
   The minimum size of the resizing element. (Defaults to 0)
   * @see http://docs.sencha.com/ext-js/3-4/#!/api/Ext.SplitBar-property-minSize Sencha Docs Ext JS 3.4
   */
  public native function get minSize():Number;

  /**
   * @private
   */
  public native function set minSize(value:Number):void;

  /**
   The increment, in pixels by which to move this SplitBar. When <i>undefined</i>, the SplitBar moves smoothly.
   * @see http://docs.sencha.com/ext-js/3-4/#!/api/Ext.SplitBar-property-tickSize Sencha Docs Ext JS 3.4
   */
  public native function get tickSize():Number;

  /**
   * @private
   */
  public native function set tickSize(value:Number):void;

  /**
   Whether to create a transparent shim that overlays the page when dragging, enables dragging across iframes.
   * @see http://docs.sencha.com/ext-js/3-4/#!/api/Ext.SplitBar-property-useShim Sencha Docs Ext JS 3.4
   */
  public native function get useShim():Boolean;

  /**
   * @private
   */
  public native function set useShim(value:Boolean):void;

}
}
    