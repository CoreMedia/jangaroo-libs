package flash.ui {
/**
 * The methods of the Mouse class are used to hide and show the mouse pointer, or to set the pointer to a specific style. The Mouse class is a top-level class whose properties and methods you can access without using a constructor. The pointer is visible by default, but you can hide it and implement a custom pointer.
 * <p><a href="http://help.adobe.com/en_US/FlashPlatform/reference/actionscript/3/flash/ui/Mouse.html#includeExamplesSummary">View the examples</a></p>
 * @see flash.events.MouseEvent
 * @see http://help.adobe.com/en_US/as3/dev/WS5b3ccc516d4fbf351e63e3d118a9b90204-7d00.html Capturing mouse input
 *
 */
public final class Mouse {
  /**
   * Sets or returns the type of cursor, or, for a native cursor, the cursor name.
   * <p>The default value is <code>flash.ui.MouseCursor.AUTO</code>.</p>
   * <p>To set values for this property, use the following string values:</p>
   * <table>
   * <tr><th>String value</th><th>Description</th></tr>
   * <tr>
   * <td><code>flash.ui.MouseCursor.AUTO</code></td>
   * <td>Mouse cursor will change automatically based on the object under the mouse.</td></tr>
   * <tr>
   * <td><code>flash.ui.MouseCursor.ARROW</code></td>
   * <td>Mouse cursor will be an arrow.</td></tr>
   * <tr>
   * <td><code>flash.ui.MouseCursor.BUTTON</code></td>
   * <td>Mouse cursor will be a button clicking hand.</td></tr>
   * <tr>
   * <td><code>flash.ui.MouseCursor.HAND</code></td>
   * <td>Mouse cursor will be a dragging hand.</td></tr>
   * <tr>
   * <td><code>flash.ui.MouseCursor.IBEAM</code></td>
   * <td>Mouse cursor will be an I-beam.</td></tr></table>
   * <p><b>Note:</b> For Flash Player 10.2 or AIR 2.6 and later versions, this property sets or gets the cursor name when you are using a native cursor. A native cursor name defined using <code>Mouse.registerCursor()</code> overwrites currently predefined cursor types (such as <code>flash.ui.MouseCursor.IBEAM</code>).</p>
   * @throws ArgumentError If set to any value which is not a member of <code>flash.ui.MouseCursor</code>, or is not a string specified using the <code>Mouse.registerCursor()</code> method.
   *
   * @see MouseCursor
   * @see #registerCursor()
   * @see MouseCursorData
   *
   */
  public static function get cursor():String {
    throw new Error('not implemented'); // TODO: implement!
  }

  /**
   * @private
   */
  public static function set cursor(value:String):void {
    throw new Error('not implemented'); // TODO: implement!
  }

  /**
   * Indicates whether the computer or device displays a persistent cursor.
   * <p>The <code>supportsCursor</code> property is <code>true</code> on most desktop computers and <code>false</code> on most mobile devices.</p>
   * <p><b>Note:</b> Mouse events can be dispatched whether or not this property is <code>true</code>. However, mouse events may behave differently depending on the physical characteristics of the pointing device.</p>
   * @see flash.system.Capabilities#touchscreenType
   *
   * @example The following example is a simple test that indicates current support for a persistent cursor, or not. When testing this example, click the text field to see the property value:
   * <listing>
   * import flash.events.*;
   * import flash.display.*;
   * import flash.ui.Mouse;
   * import flash.text.TextField;
   *
   * var supportsCursorTxt:TextField = new TextField();
   * supportsCursorTxt.width = 200;
   * supportsCursorTxt.border = true;
   * addChild(supportsCursorTxt);
   *
   * addEventListener (MouseEvent.CLICK, getScreenKeyboardType);
   *
   * function getScreenKeyboardType(e:MouseEvent):void{
   *     supportsCursorTxt.text= "Supports Cursor is : " + String(flash.ui.Mouse.supportsCursor);
   *
   * }
   * </listing>
   * <div>The following example tests and responds to different user input environments. This example assumes it is part of the code for a game that uses a cursor. First, the example tests to see if the environment supports a cursor. If not, it then tests to see if the environment supports interaction with a stylus. If so, then code can be inserted to customize the game for stylus use. If the environment supports finger interaction, code can be inserted to customize the program for the specific needs of finger touches. If no pointing device is supported at all, then the developer needs to create alternative cursors or some means of interaction, such as key presses.
   * <listing>
   * if(Mouse.supportsCursor) {
   *     //Game acts as before
   * } else {
   *     if(Capabilities.touchscreenType == TouchscreenType.STYLUS ){
   *         //The Game has to change so that the character is chasing the location of the stylus as
   *         //it's dragged around. Some of the animations will have to change
   *     }else if(Capabilities.touchscreenType = TouchscreenType.FINGER){
   *         //Same as above, except that the hit-area is larger for a finger.
   *     }else{
   *         //There's no pointing device at all. The developer designs some sort of custom cursor to
   *         //be controlled with key presses or similar input
   *     }
   * }
   * </listing></div>
   */
  public static function get supportsCursor():Boolean {
    throw new Error('not implemented'); // TODO: implement!
  }

  /**
   * Indicates whether the current configuration supports native cursors.
   */
  public static function get supportsNativeCursor():Boolean {
    throw new Error('not implemented'); // TODO: implement!
  }

  /**
   * Hides the pointer. The pointer is visible by default.
   * <p><b>Note:</b> You need to call <code>Mouse.hide()</code> only once, regardless of the number of previous calls to <code>Mouse.show()</code>.</p>
   * @see flash.display.DisplayObject#mouseX
   * @see flash.display.DisplayObject#mouseY
   *
   */
  public static function hide():void {
    // TODO: implement!
  }

  /**
   * Registers a native cursor under the given name, with the given data.
   * @param name The name to use as a reference to the native cursor instance.
   * @param cursor The properties for the native cursor, such as icon bitmap, specified as a MouseCursorData instance.
   *
   * @see MouseCursorData
   *
   */
  public static function registerCursor(name:String, cursor:MouseCursorData):void {
    throw new Error('not implemented'); // TODO: implement!
  }

  /**
   * Displays the pointer. The pointer is visible by default.
   * <p><b>Note:</b> You need to call <code>Mouse.show()</code> only once, regardless of the number of previous calls to <code>Mouse.hide()</code>.</p>
   * @see flash.display.DisplayObject#mouseX
   * @see flash.display.DisplayObject#mouseY
   *
   */
  public static function show():void {
    // TODO: implement!
  }

  /**
   * Unregisters the native cursor with the given name.
   * @param name The name referring to the native cursor instance.
   *
   */
  public static function unregisterCursor(name:String):void {
    throw new Error('not implemented'); // TODO: implement!
  }
}
}
