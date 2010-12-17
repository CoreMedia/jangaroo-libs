package flash.display {

/**
 * The MovieClip class inherits from the following classes: Sprite, DisplayObjectContainer,
 * InteractiveObject, DisplayObject, and EventDispatcher.
 *
 * <p>Unlike the Sprite object, a MovieClip object has a timeline.</p>
 *
 * <p>In Flash Professional, the methods for the MovieClip class provide the same functionality
 * as actions that target movie clips. Some additional methods do not have equivalent
 * actions in the Actions toolbox in the Actions panel in the Flash authoring tool. </p>
 *
 * <p>Children instances placed on the Stage in Flash Professional cannot be accessed by code from within the
 * constructor of a parent instance since they have not been created at that point in code execution.
 * Before accessing the child, the parent must instead either create the child instance
 * by code or delay access to a callback function that listens for the child to dispatch
 * its <code>Event.ADDED_TO_STAGE</code> event.</p>
 *
 * <p>If you modify any of the following properties of a MovieClip object that contains a motion tween,
 * the playhead is stopped in that MovieClip object: <code>alpha</code>, <code>blendMode</code>,
 * <code>filters</code>, <code>height</code>, <code>opaqueBackground</code>, <code>rotation</code>,
 * <code>scaleX</code>, <code>scaleY</code>, <code>scale9Grid</code>, <code>scrollRect</code>,
 * <code>transform</code>, <code>visible</code>, <code>width</code>, <code>x</code>,
 * or <code>y</code>. However, it does not stop the playhead in any child MovieClip objects of that
 * MovieClip object.</p>
 *
 * <p><b>Note:</b>Flash Lite 4 supports the MovieClip.opaqueBackground property only if
 * FEATURE_BITMAPCACHE is defined. The default configuration of Flash Lite 4 does not define
 * FEATURE_BITMAPCACHE. To enable the MovieClip.opaqueBackground property for a suitable device,
 * define FEATURE_BITMAPCACHE in your project.</p>
 *
 * @see http://help.adobe.com/en_US/as3/dev/WS5b3ccc516d4fbf351e63e3d118a9b90204-7e3c.html Core display classes
 * @see http://help.adobe.com/en_US/as3/dev/WS5b3ccc516d4fbf351e63e3d118a9b90204-7d9c.html Basics of movie clips
 */
public class MovieClip extends Sprite {

  public function MovieClip() {
    super();
  }

  /**
   * Stops the playhead in the movie clip.
   *
   * @example
   * The following example uses the MovieClipExample class to illustrate how
   * to monitor various properties of a MovieClip.  This task is accomplished by performing the following steps:

   *  <ol><li>The constructor function defines a text field, which is used to display values of properties
   *   of the MovieClipExample object (which extends MovieClip).</li><li>The return value of the <code>getPropertiesString()</code> method is used as text for the
   *   <code>outputText</code> text field. The <code>getPropertiesString()</code> method returns
   *   a string that is populated with values of the following properties of the movie clip:
   *   <code>currentFrame</code>, <code>currentLabel</code>, <code>currentScene</code>,
   *   <code>framesLoaded</code>, <code>totalFrames</code>, and <code>trackAsMenu</code>.</li><li>Two lines of code in the constructor function adjust the <code>width</code> and
   *   <code>height</code> properties of the <code>outputText</code> text field.</li><li>The last line of the constructor function adds the <code>outputText</code> text field
   *   to the display list.</li></ol>
   *
   * <div class="listing"><pre>
   * package {
   *     import flash.display.MovieClip;
   *     import flash.text.TextField;
   *
   *     public class MovieClipExample extends MovieClip {
   *
   *         public function MovieClipExample() {
   *             var outputText:TextField = new TextField();
   *             outputText.text = getPropertiesString();
   *             outputText.width = stage.stageWidth;
   *             outputText.height = outputText.textHeight;
   *             addChild(outputText);
   *         }
   *
   *         private function getPropertiesString():String {
   *             var str:String = ""
   *                 + "currentFrame: " + currentFrame + "\n"
   *                 + "currentLabel: " + currentLabel + "\n"
   *                 + "currentScene: " + currentScene + "\n"
   *                 + "framesLoaded: " + framesLoaded + "\n"
   *                 + "totalFrames: " + totalFrames + "\n"
   *                 + "trackAsMenu: " + trackAsMenu + "\n";
   *             return str;
   *         }
   *     }
   * }
   * </pre>
   */
  public function stop():void {
    // TODO
  }

  /**
   * The number of frames that are loaded from a streaming SWF file. You can use the <code>framesLoaded</code>
   property to determine whether the contents of a specific frame and all the frames before it
   loaded and are available locally in the browser. You can also use it to monitor the downloading
   of large SWF files. For example, you might want to display a message to users indicating that
   the SWF file is loading until a specified frame in the SWF file finishes loading.

   <p>If the movie clip contains multiple scenes, the <code>framesLoaded</code> property returns the number
   of frames loaded for <i>all</i> scenes in the movie clip.</p>

   @example
   The following code illustrates how to use the <code>framesLoaded</code>
   property and the <code>totalFrames</code> property to determine if a streaming MovieClip
   object named <code>mc1</code> is fully loaded:
   <pre>
   if (mc1.framesLoaded == mc1.totalFrames) {
       trace("OK.");
   }
   </pre>
   */
  public function get framesLoaded():int {
    // TODO
    return -1;
  }

  /**
   * The total number of frames in the MovieClip instance.

   <p>If the movie clip contains multiple frames, the <code>totalFrames</code> property returns
   the total number of frames in <i>all</i> scenes in the movie clip.</p>

   @example
   The following code illustrates the use of the <code>totalFrames</code>
   property of a MovieClip object named <code>mc1</code>:

   <pre>
     trace(mc1.totalFrames);
   </pre>
   */
  public function get totalFrames():int {
    // TODO
    return -1;
  }

  /**
   * Sends the playhead to the next frame and stops it.  This happens after all
   * remaining actions in the frame have finished executing.
   * @example
   * In the following example, two SimpleButton objects control the timeline. The <code>prev</code>
   * button moves the playhead to the previous frame, and the <code>nextBtn</code> button moves the playhead
   * to the next frame:
   * <pre>
   * import flash.events.MouseEvent;
   *
   * mc1.stop();
   * prevBtn.addEventListener(MouseEvent.CLICK, goBack);
   * nextBtn.addEventListener(MouseEvent.CLICK, goForward);
   *
   * function goBack(event:MouseEvent):void {
   *     mc1.prevFrame();
   * }
   *
   * function goForward(event:MouseEvent):void {
   *     mc1.nextFrame();
   * }
   * </pre>
   *
   * @see #prevFrame
   */
  public function nextFrame():void {
    // TODO
  }

  /**
   * Sends the playhead to the previous frame and stops it.  This happens after all
   * remaining actions in the frame have finished executing.
   * @example
   * In the following example, two SimpleButton objects control the timeline. The <code>prev</code>
   * button moves the playhead to the previous frame, and the <code>nextBtn</code> button moves the playhead
   * to the next frame:
   * <pre>
   * import flash.events.MouseEvent;
   *
   * mc1.stop();
   * prevBtn.addEventListener(MouseEvent.CLICK, goBack);
   * nextBtn.addEventListener(MouseEvent.CLICK, goForward);
   *
   * function goBack(event:MouseEvent):void {
   *     mc1.prevFrame();
   * }
   *
   * function goForward(event:MouseEvent):void {
   *     mc1.nextFrame();
   * }
   * </pre>
   * @see #nextFrame
   */
  public function prevFrame():void {
    // TODO
  }
}
}