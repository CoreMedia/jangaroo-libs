package flash.ui {
/**
 * The Multitouch class manages and provides information about the current environment's support for handling contact from user input devices, including contact that has two or more touch points (such as a user's fingers on a touch screen). When a user interacts with a device such as a mobile phone or tablet with a touch screen, the user typically touches the screen with his or her fingers or a pointing device. While there is a broad range of pointing devices, such as a mouse or a stylus, many of these devices only have a single point of contact with an application. For pointing devices with a single point of contact, user interaction events can be handled as a mouse event, or using a basic set of touch events (called "touch point" events). However, for pointing devices that have several points of contact and perform complex movement, such as the human hand, Flash runtimes support an additional set of event handling API called gesture events. The API for handling user interaction with these gesture events includes the following classes:
 * <ul>
 * <li>flash.events.TouchEvent</li>
 * <li>flash.events.GestureEvent</li>
 * <li>flash.events.GesturePhase</li>
 * <li>flash.events.TransformGestureEvent</li>
 * <li>flash.events.PressAndTapGestureEvent</li></ul>
 * <p>Use the listed classes to write code that handles touch events. Use the Multitouch class to determine the current environment's support for touch interaction, and to manage the support of touch interaction if the current environment supports touch input.</p>
 * <p>You cannot create a Multitouch object directly from ActionScript code. If you call <code>new Multitouch()</code>, an exception is thrown.</p>
 * <p><b>Note:</b> The Multitouch feature is not supported for SWF files embedded in HTML running on Mac OS.</p>
 * <p><a href="http://help.adobe.com/en_US/FlashPlatform/reference/actionscript/3/flash/ui/Multitouch.html#includeExamplesSummary">View the examples</a></p>
 * @see flash.events.TouchEvent
 * @see flash.events.GestureEvent
 * @see flash.events.TransformGestureEvent
 * @see flash.events.GesturePhase
 * @see flash.events.PressAndTapGestureEvent
 * @see flash.events.MouseEvent
 * @see flash.events.EventDispatcher#addEventListener()
 * @see http://www.riagora.com/2010/05/tetris-touch-api-and-android/ Michael Chaize: Tetris, Touch API and Android
 * @see http://www.adobe.com/devnet/flash/articles/multitouch_gestures.html Christian Cantrell: Multitouch and gesture support on the Flash Platform
 * @see http://blog.theflashblog.com/?p=1678 Lee Brimelow: Flash Player 10.1 multi-touch FAQ
 * @see http://my.adobe.acrobat.com/p84912063/?launcher=false&fcsContent=true&pbMode=normal Piotr Walczyszyn: Multitouch development in Flex
 *
 */
public final class Multitouch {
  /**
   * Identifies the multi-touch mode for touch and gesture event handling. Use this property to manage whether or not events are dispatched as touch events with multiple points of contact and specific events for different gestures (such as rotation and pan), or only a single point of contact (such as tap), or none at all (contact is handled as a mouse event). To set this property, use values from the flash.ui.MultitouchInputMode class.
   * <p>The default value is <code>gesture.</code></p>
   * @see MultitouchInputMode
   *
   * @example The following example displays a message when the square drawn on mySprite is tapped on a touch-enabled screen:
   * <listing>
   * Multitouch.inputMode=MultitouchInputMode.TOUCH_POINT;
   *
   * var mySprite:Sprite = new Sprite();
   * var myTextField:TextField = new TextField();
   *
   * mySprite.graphics.beginFill(0x336699);
   * mySprite.graphics.drawRect(0,0,40,40);
   * addChild(mySprite);
   *
   * mySprite.addEventListener(TouchEvent.TOUCH_TAP, taphandler);
   *
   * function taphandler(e:TouchEvent): void {
   *     myTextField.text = "I've been tapped";
   *     myTextField.y = 50;
   *     addChild(myTextField);
   * }
   * </listing>
   */
  public static function get inputMode():String {
    throw new Error('not implemented'); // TODO: implement!
  }

  /**
   * @private
   */
  public static function set inputMode(value:String):void {
    throw new Error('not implemented'); // TODO: implement!
  }

  /**
   * The maximum number of concurrent touch points supported by the current environment.
   * @see flash.events.TouchEvent
   * @see flash.events.MouseEvent
   * @see flash.events.EventDispatcher#addEventListener()
   * @see flash.events.GestureEvent
   * @see flash.events.TransformGestureEvent
   *
   */
  public static function get maxTouchPoints():int {
    throw new Error('not implemented'); // TODO: implement!
  }

  /**
   * A Vector array (a typed array of string values) of multi-touch contact types supported in the current environment. The array of strings can be used as event types to register event listeners. Possible values are constants from the GestureEvent, PressAndTapGestureEvent, and TransformGestureEvent classes (such as <code>GESTURE_PAN</code>).
   * <p>If the Flash runtime is in an environment that does not support any multi-touch gestures, the value is <code>null</code>.</p>
   * <p><b>Note:</b> For Mac OS 10.5.3 and later, <code>Multitouch.supportedGestures</code> returns non-null values (possibly indicating incorrectly that gesture events are supported) even if the current hardware does not support gesture input.</p>
   * <p>Use this property to test for multi-touch gesture support. Then, use event handlers for the available multi-touch gestures. For those gestures that are not supported in the current evironment, you'll need to create alternative event handling.</p>
   * @see flash.events.TouchEvent
   * @see flash.events.MouseEvent
   * @see flash.events.EventDispatcher#addEventListener()
   * @see flash.events.GestureEvent
   * @see flash.events.PressAndTapGestureEvent
   * @see flash.events.TransformGestureEvent
   *
   * @example The following example adds the appropriate event listeners for each individual supported gesture in the current environment. The <code>Multitouch.supportedGestures</code> vector array contents change to include all the gestures available to the current software and hardware environment for the Flash runtime. If the <code>Multitouch.supportedGestures</code> vector array does not contain one of the TransformGestureEvent gestures, then no event listener is added for that gesture. This example comes from <a href="http://devgirl.wordpress.com/">Holly Schinsky</a>.
   * <listing>
   * Multitouch.inputMode = MultitouchInputMode.GESTURE;
   *
   *     for each (var item:String in Multitouch.supportedGestures) {
   *         trace("gesture " + item);
   *         if (item == TransformGestureEvent.GESTURE_PAN)
   *             img.addEventListener(TransformGestureEvent.GESTURE_PAN, onPan);
   *         else if (item == TransformGestureEvent.GESTURE_ROTATE)
   *             img.addEventListener(TransformGestureEvent.GESTURE_ROTATE, onRotate);
   *         else if (item == TransformGestureEvent.GESTURE_SWIPE)
   *             img.addEventListener(TransformGestureEvent.GESTURE_SWIPE, onSwipe);
   *         else if (item == TransformGestureEvent.GESTURE_ZOOM)
   *             img.addEventListener(TransformGestureEvent.GESTURE_ZOOM, onZoom);
   *     }
   * </listing>
   */
  public static function get supportedGestures():Vector.<String> {
    throw new Error('not implemented'); // TODO: implement!
  }

  /**
   * Indicates whether the current environment supports gesture input, such as rotating two fingers around a touch screen. Gesture events are listed in the TransformGestureEvent, PressAndTapGestureEvent, and GestureEvent classes.
   * <p><b>Note:</b> For Mac OS 10.5.3 and later, this value is always <code>true</code>. <code>Multitouch.supportsGestureEvent</code> returns <code>true</code> even if the hardware does not support gesture events.</p>
   * @see flash.events.TransformGestureEvent
   * @see flash.events.GestureEvent
   * @see flash.events.PressAndTapGestureEvent
   *
   */
  public static function get supportsGestureEvents():Boolean {
    throw new Error('not implemented'); // TODO: implement!
  }

  /**
   * Indicates whether the current environment supports basic touch input, such as a single finger tap. Touch events are listed in the TouchEvent class.
   * @see flash.events.TouchEvent
   *
   * @example The following example displays whether or not the current environment supports touch events:
   * <listing>
   * var myTextField:TextField = new TextField();
   * myTextField.width = 200;
   *
   * addEventListener(Event.ENTER_FRAME, enterhandler);
   *
   * function enterhandler(e:Event): void {
   * var support:Boolean = Multitouch.supportsTouchEvents;
   *     switch (support) {
   *        case true :
   *             myTextField.text = "Touch events supported";
   *         break;
   *     case false :
   *             myTextField.text = "Touch events not supported";
   *         break;
   *     default :
   *             myTextField.text = "unknown";
   *     }
   *
   *     addChild(myTextField);
   * }
   * </listing>
   */
  public static function get supportsTouchEvents():Boolean {
    throw new Error('not implemented'); // TODO: implement!
  }
}
}
