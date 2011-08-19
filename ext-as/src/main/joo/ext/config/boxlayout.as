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
[ExtConfig(target="ext.layout.BoxLayout", type="box")]
public class boxlayout extends containerlayout {

  public function boxlayout(config:Object = null) {

    super(config);
  }


  /**
   If the individual contained items do not have a <tt>margins</tt> property specified, the default margins from this property will be applied to each item.
   <br/><p>This property may be specified as an object containing margins to apply in the format:</p><pre><code>{
   top: (top margin),
   right: (right margin),
   bottom: (bottom margin),
   left: (left margin)
   }</code></pre><p>This property may also be specified as a string containing space-separated, numeric margin values. The order of the sides associated with each value matches the way CSS processes margin values:</p><div class="mdetail-params"><ul><li>If there is only one value, it applies to all sides.</li><li>If there are two values, the top and bottom borders are set to the first value and the right and left are set to the second.</li><li>If there are three values, the top is set to the first value, the left and right are set to the second, and the bottom is set to the third.</li><li>If there are four values, they apply to the top, right, bottom, and left, respectively.</li></ul></div><p>Defaults to:</p><pre><code>{top:0, right:0, bottom:0, left:0}
   </code></pre>
   */
  public native function get defaultMargins():Object;

  /**
   * @private
   */
  public native function set defaultMargins(value:Object):void;

  /**
   Sets the padding to be applied to all child items managed by this layout.
   <p>This property must be specified as a string containing space-separated, numeric padding values. The order of the sides associated with each value matches the way CSS processes padding values:</p><div class="mdetail-params"><ul><li>If there is only one value, it applies to all sides.</li><li>If there are two values, the top and bottom borders are set to the first value and the right and left are set to the second.</li><li>If there are three values, the top is set to the first value, the left and right are set to the second, and the bottom is set to the third.</li><li>If there are four values, they apply to the top, right, bottom, and left, respectively.</li></ul></div><p>Defaults to: <code>"0"</code></p>
   */
  public native function get padding():String;

  /**
   * @private
   */
  public native function set padding(value:String):void;


}
}
    