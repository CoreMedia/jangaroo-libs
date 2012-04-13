package ext.config {

/**
 * Simple plugin for using an Ext.Tip with a slider to show the slider value. Example usage:
 * <pre>
 * new Ext.Slider({
 *   width: 214,
 *   minValue: 0,
 *   maxValue: 100,
 *   plugins: new Ext.slider.Tip()
 * });
 * </pre>
 * Optionally provide your own tip text by overriding getText:
 * <pre>
 * new Ext.Slider({
 *   width: 214,
 *   minValue: 0,
 *   maxValue: 100,
 *   plugins: new Ext.slider.Tip({
 *     getText: function(thumb){
 *       return String.format('<b>{0}% complete</b>', thumb.value);
 *     }
 *   })
 * });
 * </pre>
 *
 * <p>Copyright &#169; 2011 Sencha Inc.</p>
 *
 * @see ext.slider.Tip
 */
[ExtConfig(target="ext.slider.Tip")]
public class slidertip extends tip {

  public function slidertip(config:Object = null) {
    super(config || {});
  }

}
}
