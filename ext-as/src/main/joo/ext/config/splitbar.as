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


}
}
    