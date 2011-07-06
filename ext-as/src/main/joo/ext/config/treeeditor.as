package ext.config {


/**
 * Provides editor functionality for inline tree node editing. Any valid <a href="Ext.form.Field.html">Ext.form.Field</a> subclass can be used as the editor field.
 * <p>This class serves as a typed config object for constructor of class TreeEditor.</p>
 *
 * @see ext.tree.TreeEditor
 */
[ExtConfig(target="ext.tree.TreeEditor")]
public class treeeditor extends editor {

  public function treeeditor(config:Object = null) {

    super(config);
  }


  /**
   The position to align to (see <a href="output/Ext.Element.html#Ext.Element-alignTo">Ext.Element.alignTo</a> for more details, defaults to "l-l").
   */
  override public native function get alignment():String;

  /**
   * @private
   */
  override public native function set alignment(value:String):void;

  /**
   CSS class to apply to the editor (defaults to "x-small-editor x-tree-editor")
   */
  override public native function get cls():String;

  /**
   * @private
   */
  override public native function set cls(value:String):void;

  /**
   The number of milliseconds between clicks to register a double-click that will trigger editing on the current node (defaults to 350). If two clicks occur on the same node within this time span, the editor for the node will display, otherwise it will be processed as a regular click.
   */
  public native function get editDelay():Number;

  /**
   * @private
   */
  public native function set editDelay(value:Number):void;

  /**
   True to hide the bound element while the editor is displayed (defaults to false)
   */
  override public native function get hideEl():Boolean;

  /**
   * @private
   */
  override public native function set hideEl(value:Boolean):void;

  /**
   The maximum width in pixels of the editor field (defaults to 250). Note that if the maxWidth would exceed the containing tree element's size, it will be automatically limited for you to the container width, taking scroll and client offsets into account prior to each edit.
   */
  public native function get maxWidth():Number;

  /**
   * @private
   */
  public native function set maxWidth(value:Number):void;

  /**
   True to shim the editor if selects/iframes could be displayed beneath it (defaults to false)
   */
  public native function get shim():Boolean;

  /**
   * @private
   */
  public native function set shim(value:Boolean):void;


}
}
    