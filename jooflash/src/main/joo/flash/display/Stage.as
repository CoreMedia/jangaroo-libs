package flash.display {
import flash.events.Event;
import flash.events.TimerEvent;
import flash.utils.Timer;

import js.Element;

/**
 * The Stage class represents the main drawing area. The Stage represents the entire area where Flash� content is shown.
 * <p>The Stage object is not globally accessible. You need to access it through the stage property of a DisplayObject
 * instance.
 * <p>The Stage class has several ancestor classes � DisplayObjectContainer, InteractiveObject, DisplayObject, and
 * EventDispatcher � from which it inherits properties and methods. Many of these properties and methods are either
 * inapplicable to Stage objects, or require security checks when called on a Stage object. The properties and methods
 * that require security checks are documented as part of the Stage class.
 * <p>In addition, the following inherited properties are inapplicable to Stage objects. If you try to set them, an
 * IllegalOperationError is thrown. These properties may always be read, but since they cannot be set, they will always
 * contain default values.
 * <ul>
 *   <li>accessibilityProperties
 *   <li>alpha
 *   <li>blendMode
 *   <li>cacheAsBitmap
 *   <li>contextMenu
 *   <li>filters
 *   <li>focusRect
 *   <li>loaderInfo
 *   <li>mask
 *   <li>mouseEnabled
 *   <li>name
 *   <li>opaqueBackground
 *   <li>rotation
 *   <li>scale9Grid
 *   <li>scaleX
 *   <li>scaleY
 *   <li>scrollRect
 *   <li>tabEnabled
 *   <li>tabIndex
 *   <li>transform
 *   <li>visible
 *   <li>x
 *   <li>y
 * </ul>
 */
public class Stage extends DisplayObjectContainer {

  private static var instance : Stage;
  public static function getInstance(id:String = "stage") : Stage {
    if (!instance) {
      new Stage(id);
    }
    return instance;
  }

  public function Stage(id : String) {
    this.id = id;
    instance = this;
    super();
    frameTimer = new Timer(1000/_frameRate);
    frameTimer.addEventListener(TimerEvent.TIMER, enterFrame);
    frameTimer.start();
  }

  override public function get x() : Number {
    // TODO: consider offsetParent(s)!
    return this.getElement().offsetLeft;
  }

  override public function get y() : Number {
    // TODO: consider offsetParent(s)!
    return this.getElement().offsetTop;
  }

  /// The current height, in pixels, of the Stage.
  public function get stageHeight () : int {
    return this.getElement().offsetHeight;
  }

  public function set stageHeight (value : int) : void {
    this.getElement()['offsetHeight'] = value; // TODO: setter for offsetHeight!
  }

  /// Specifies the current width, in pixels, of the Stage.
  public function get stageWidth () : int {
    return this.getElement().offsetWidth;    
  }

  public function set stageWidth (value : int) : void {
    this.getElement()['offsetWidth'] = value; // TODO: setter for offsetWidth
  }

  override protected function createElement():Element {
    var element : Element = window.document.getElementById(id);
    element.style.position = "relative";
    element.setAttribute("tabindex", "0");
    var width : Object = element.getAttribute("width");
    if (width) {
      element.style.width = width+"px";
    }
    var height : Object = element.getAttribute("height");
    if (height) {
      element.style.height = height + "px";
    }
    element.innerHTML = "";
    return element;
  }

  private function enterFrame() : void {
    this.dispatchEvent(new Event(Event.ENTER_FRAME, false, false));
  }

  /**
   * Gets the frame rate of the stage. The frame rate is defined as frames per second. By default the
   * rate is set to the frame rate of the first SWF file loaded. Valid range for the frame rate is from 0.01 to
   * 1000 frames per second.
   * @throws SecurityError Calling the frameRate property of a Stage object throws an exception for any
   *   caller that is not in the same security sandbox as the Stage owner (the main SWF file). To avoid this, the
   *   Stage owner can grant permission to the domain of the caller by calling the Security.allowDomain() method
   *   or the Security.allowInsecureDomain() method. For more information, see the "Security" chapter in
   *   Programming ActionScript 3.0.
   * @return the frame rate of the stage.
   */
  public function get frameRate() : Number {
    return _frameRate;
  }

  /**
   * Sets the frame rate of the stage. The frame rate is defined as frames per second. By default the
   * rate is set to the frame rate of the first SWF file loaded. Valid range for the frame rate is from 0.01 to
   * 1000 frames per second.
   * <p>Note: An application might not be able to follow high frame rate settings, either because the target
   * platform is not fast enough or the player is synchronized to the vertical blank timing of the display
   * device (usually 60 Hz on LCD devices). In some cases, a target platform might also choose to lower the
   * maximum frame rate if it anticipates high CPU usage.
   * <p>For content running in Adobe AIR, setting the frameRate property of one Stage object changes the frame
   * rate for all Stage objects (used by different NativeWindow objects).
   * @param value the new frame rate in frames per second.
   */
  public function set frameRate(value : Number) : void {
    _frameRate = value;
    frameTimer.delay = 1000/value;
  }

  /**
    A value from the StageQuality class that specifies which rendering quality is used.
    The following are valid values:</p>
    <ul>
      <li><code>StageQuality.LOW</code>—Low rendering quality. Graphics are not
        anti-aliased, and bitmaps are not smoothed, but runtimes still use mip-mapping. This setting is not supported in Adobe AIR.</li>
      <li><code>StageQuality.MEDIUM</code>—Medium rendering quality. Graphics are
        anti-aliased using a 2 x 2 pixel grid, bitmap smoothing is dependent on the <code>Bitmap.smoothing</code> setting.
        Runtimes use mip-mapping. This setting is suitable for movies that do not contain text.
        This setting is not supported in Adobe AIR.</li>
      <li><code>StageQuality.HIGH</code>—High rendering quality. Graphics are anti-aliased
        using a 4 x 4 pixel grid, and bitmap smoothing is dependent on the <code>Bitmap.smoothing</code> setting.
        Runtimes use mip-mapping. This is the default rendering quality setting that Flash Player uses.</li><li><code>StageQuality.BEST</code>—Very high rendering quality. Graphics are
        anti-aliased using a 4 x 4 pixel grid. If <code>Bitmap.smoothing</code> is <code>true</code> the runtime uses a high quality
        downscale algorithm that produces fewer artifacts (however, using <code>StageQuality.BEST</code> with <code>Bitmap.smoothing</code> set to <code>true</code>
        slows performance significantly and is not a recommended setting).</li>
    </ul>

    <p>Higher quality settings produce better rendering of scaled bitmaps. However, higher
    quality settings are computationally more expensive. In particular, when rendering scaled video,
    using higher quality settings can reduce the frame rate.</p>

    <p>For content running in Adobe AIR, <code>quality</code> can be set to <code>StageQuality.BEST</code>
    or <code>StageQuality.HIGH</code> (and the default value is <code>StageQuality.HIGH</code>).
    Attempting to set it to another value has no effect (and the property remains unchanged).</p>

    <p>For content running in Adobe AIR, setting the <code>quality</code> property of one Stage
    object changes the rendering quality for all Stage objects (used by different NativeWindow objects).</p>

    <b><i>Note:</i></b> The operating system draws the device fonts,
    which are therefore unaffected by the <code>quality</code> property.

    @throws SecurityError Calling the <code>quality</code> property of a Stage object throws an exception for
    any caller that is not in the same security sandbox as the Stage owner (the main SWF file).
    To avoid this, the Stage owner can grant permission to the domain of the caller by calling
    the <code>Security.allowDomain()</code> method or the <code>Security.allowInsecureDomain()</code> method.
    For more information, see the "Security" chapter in the <i>ActionScript 3.0 Developer's Guide</i>.

    @see flash.display.StageQuality
    @see flash.display.Bitmap#smoothing
   */
  public function get quality():String {
    return _quality;
  }

  public function set quality(value:String):void {
    _quality = value;
  }

  /**
    A value from the StageScaleMode class that specifies which scale mode to use.
    The following are valid values:</p>
    <ul>
      <li><code>StageScaleMode.EXACT_FIT</code>—The entire application is visible
        in the specified area without trying to preserve the original aspect ratio.
        Distortion can occur, and the application may appear stretched or compressed.
      </li>
      <li><code>StageScaleMode.SHOW_ALL</code>—The entire application is visible
        in the specified area without distortion while maintaining the original aspect ratio of the application.
        Borders can appear on two sides of the application.
      </li>
      <li><code>StageScaleMode.NO_BORDER</code>—The entire application fills the specified area,
        without distortion but possibly with some cropping, while maintaining the original aspect ratio
        of the application.
      </li>
      <li><code>StageScaleMode.NO_SCALE</code>—The entire application is fixed, so that
        it remains unchanged even as the size of the player window changes. Cropping might
        occur if the player window is smaller than the content.
      </li>
    </ul>

    @throws SecurityError Calling the <code>scaleMode</code> property of a Stage object throws an exception for
    any caller that is not in the same security sandbox as the Stage owner (the main SWF file).
    To avoid this, the Stage owner can grant permission to the domain of the caller by calling
    the <code>Security.allowDomain()</code> method or the <code>Security.allowInsecureDomain()</code> method.
    For more information, see the "Security" chapter in the <i>ActionScript 3.0 Developer's Guide</i>.

    @see flash.display.StageScaleMode
   */
  public function get scaleMode():String {
    return _scaleMode;
  }

  public function set scaleMode(value:String):void {
    _scaleMode = value;
  }

  /**
   * A value from the StageAlign class that specifies the alignment of the stage in
   * Flash Player or the browser. The following are valid values:</p>
   * <table>
   *   <tr><th>Value</th><th>Vertical Alignment</th><th>Horizontal</th></tr>
   *   <tr><td><code>StageAlign.TOP</code></td><td>Top</td><td>Center</td></tr>
   *   <tr><td><code>StageAlign.BOTTOM</code></td><td>Bottom</td><td>Center</td></tr>
   *   <tr><td><code>StageAlign.LEFT</code></td><td>Center</td><td>Left</td></tr>
   *   <tr><td><code>StageAlign.RIGHT</code></td><td>Center</td><td>Right</td></tr>
   *   <tr><td><code>StageAlign.TOP_LEFT</code></td><td>Top</td><td>Left</td></tr>
   *   <tr><td><code>StageAlign.TOP_RIGHT</code></td><td>Top</td><td>Right</td></tr>
   *   <tr><td><code>StageAlign.BOTTOM_LEFT</code></td><td>Bottom</td><td>Left</td></tr>
   *   <tr><td><code>StageAlign.BOTTOM_RIGHT</code></td><td>Bottom</td><td>Right</td></tr>
   * </table>
   * <p>The <code>align</code> property is only available to an object that is in the same security sandbox
   * as the Stage owner (the main SWF file).
   * To avoid this, the Stage owner can grant permission to the domain of the
   * calling object by calling the <code>Security.allowDomain()</code> method or the <code>Security.alowInsecureDomain()</code> method.
   * For more information, see the "Security" chapter in the <i>ActionScript 3.0 Developer's Guide</i>.</p>
   */
  public function get align():String {
    return _align;
  }

  public function set align(value:String):void {
    _align = value;
  }

  private var id : String;
  private var _frameRate : Number = 30;
  private var frameTimer : Timer;
  private var _quality : String = StageQuality.HIGH;
  private var _scaleMode : String = StageScaleMode.NO_SCALE;
  private var _align : String = StageAlign.TOP_LEFT;
}
}
