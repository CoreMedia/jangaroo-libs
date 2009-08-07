package flash.display {

import flash.display.InteractiveObject;
import flash.display.DisplayObject;
//import flash.media.SoundTransform;

/**
 * The SimpleButton class lets you control all instances of button symbols in a SWF file.
 */
public class SimpleButton extends InteractiveObject {

  /**
   * Creates a new SimpleButton instance.
   * @param upState (default null) a display object that is used as the visual object for the button "Down" state
   * @param overState
   * @param downState
   * @param hitTestState
   */
  public function SimpleButton (upState:DisplayObject = null, overState:DisplayObject = null,
                                downState:DisplayObject = null, hitTestState:DisplayObject = null) {
    super();
    this._upState = upState;
    this._overState = overState;
    this._downState = downState;
    this._hitTestState = hitTestState;
  }

  override protected function getElementName():String {
    return "button";
  }

  /**
   * Specifies a display object that is used as the visual object for the button "Down" state&#8212;the state that the
   * button is in when the user clicks the hitTestState object.
   * @return the display object that is used as the visual object for the button "Down" state
   */
  public function get downState () : DisplayObject {
    return this._downState;
  }

  public function set downState (value:DisplayObject) : void {
    this._downState = value;
  }

  /**
   * A Boolean value that specifies whether a button is enabled.
   * @return whether a button is enabled.
   */
  public function get enabled () : Boolean {
    return this._enabled;
  }

  public function set enabled (value:Boolean) : void {
    this._enabled = value;
  }

  /// Specifies a display object that is used as the hit testing object for the button.
  public function get hitTestState () : DisplayObject {
    return this._hitTestState;
  }

  public function set hitTestState (value:DisplayObject) : void {
    this._hitTestState = value;
  }

  /// Specifies a display object that is used as the visual object for the button over state &#8212; the state that the button is in when the mouse is positioned over the button.
  public function get overState () : DisplayObject {
    return this._overState;
  }

  public function set overState (value:DisplayObject) : void {
    this._overState = value;
  }

  /// The SoundTransform object assigned to this button.
/*
  public function get soundTransform () : SoundTransform {
    return this._soundTransform;
  }

  public function set soundTransform (sndTransform:SoundTransform) : void {
    this._soundTransform = sndTransform;
  }
*/
  /// Indicates whether other display objects that are SimpleButton or MovieClip objects can receive mouse release events.
  public function get trackAsMenu () : Boolean {
    return this._trackAsMenu;
  }

  public function set trackAsMenu (value:Boolean) : void {
    this._trackAsMenu = value;
  }

  /// Specifies a display object that is used as the visual object for the button up state &#8212; the state that the button is in when the mouse is not positioned over the button.
  public function get upState () : DisplayObject {
    return this._upState;
  }

  public function set upState (value:DisplayObject) : void {
    this._upState = value;
  }

  /// A Boolean value that, when set to true, indicates whether Flash Player displays the hand cursor when the mouse rolls over a button.
  public function get useHandCursor () : Boolean {
    return this._useHandCursor;
  }

  public function set useHandCursor (value:Boolean) : void {
    this._useHandCursor = value;
  }

  private var _upState : DisplayObject;
  private var _overState : DisplayObject;
  private var _downState : DisplayObject;
  private var _hitTestState : DisplayObject;
//  private var _soundTransform : SoundTransform;
  private var _enabled : Boolean = true;
  private var _trackAsMenu : Boolean;
  private var _useHandCursor : Boolean;
}
}
