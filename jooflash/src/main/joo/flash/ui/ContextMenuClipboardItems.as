package flash.ui {


/**
 * The ContextMenuClipboardItems class lets you enable or disable the commands in the clipboard context menu.
 * <p>Enable or disable the context menu clipboard commands using the <code>clipboardItems</code> property of the ContextMenu object. The <code>clipboardItems</code> property is an instance of this ContextMenuClipboardItems class. The clipboard context menu is shown in a context menu when the <code>clipboardMenu</code> property of the context menu is <code>true</code>, unless the context menu is for a TextField object. TextField objects control the display of the context menu and the state of its clipboard items automatically.</p>
 * @see ContextMenu#clipboardMenu
 *
 */
public final class ContextMenuClipboardItems {
  /**
   * Enables or disables the 'Delete' or 'Clear' item on the clipboard menu. This should be enabled only if an object that can be cleared is selected.
   */
  public function get clear():Boolean {
    throw new Error('not implemented'); // TODO: implement!
  }

  /**
   * @private
   */
  public function set clear(value:Boolean):void {
    throw new Error('not implemented'); // TODO: implement!
  }

  /**
   * Enables or disables the 'Copy' item on the clipboard menu. This should be enabled only if an object that can be copied is selected.
   */
  public function get copy():Boolean {
    throw new Error('not implemented'); // TODO: implement!
  }

  /**
   * @private
   */
  public function set copy(value:Boolean):void {
    throw new Error('not implemented'); // TODO: implement!
  }

  /**
   * Enables or disables the 'Cut' item on the clipboard menu. This should be enabled only if an object that can be cut is selected.
   */
  public function get cut():Boolean {
    throw new Error('not implemented'); // TODO: implement!
  }

  /**
   * @private
   */
  public function set cut(value:Boolean):void {
    throw new Error('not implemented'); // TODO: implement!
  }

  /**
   * Enables or disables the 'Paste' item on the clipboard menu. This should be enabled only if pastable data is on the clipboard.
   */
  public function get paste():Boolean {
    throw new Error('not implemented'); // TODO: implement!
  }

  /**
   * @private
   */
  public function set paste(value:Boolean):void {
    throw new Error('not implemented'); // TODO: implement!
  }

  /**
   * Enables or disables the 'Select All' item on the clipboard menu. This should only be enabled in a context where a selection can be expanded to include all similar items, such as in a list or a text editing control.
   */
  public function get selectAll():Boolean {
    throw new Error('not implemented'); // TODO: implement!
  }

  /**
   * @private
   */
  public function set selectAll(value:Boolean):void {
    throw new Error('not implemented'); // TODO: implement!
  }

  /**
   * Creates a new ContextMenuClipboardItems object.
   */
  public function ContextMenuClipboardItems() {
    throw new Error('not implemented'); // TODO: implement!
  }
}
}
