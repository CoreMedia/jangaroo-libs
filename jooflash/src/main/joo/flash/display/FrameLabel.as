package flash.display {


/**
 * The FrameLabel object contains properties that specify a frame number and the corresponding label name. The Scene class includes a <code>labels</code> property, which is an array of FrameLabel objects for the scene.
 * @see Scene#labels
 * @see MovieClip#currentLabel
 * @see MovieClip#currentScene
 * @see MovieClip#scenes
 * @see MovieClip#gotoAndPlay()
 * @see MovieClip#gotoAndStop()
 *
 */
public final class FrameLabel {
  /**
   * The frame number containing the label.
   */
    public function get frame():int {
      return _frame;
    }

  /**
   * The name of the label.
   */
  public function get name():String {
    return _name;
  }

  // ************************** Jangaroo part **************************

  /**
   * @private
   */
  public function FrameLabel() {
  }

  private var _frame:int;
  private var _name:String;

}
}