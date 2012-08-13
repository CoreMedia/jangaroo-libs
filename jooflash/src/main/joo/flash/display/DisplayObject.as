package flash.display {
import flash.accessibility.AccessibilityProperties;
import flash.errors.IllegalOperationError;
import flash.events.Event;
import flash.events.EventDispatcher;
import flash.geom.Matrix;
import flash.geom.Point;
import flash.geom.Rectangle;
import flash.geom.Transform;
import flash.geom.Vector3D;

/**
 * Dispatched when a display object is added to the display list. The following methods trigger this event: <code>DisplayObjectContainer.addChild()</code>, <code>DisplayObjectContainer.addChildAt()</code>.
 * @eventType flash.events.Event.ADDED
 */
[Event(name="added", type="flash.events.Event")]
/**
 * Dispatched when a display object is added to the on stage display list, either directly or through the addition of a sub tree in which the display object is contained. The following methods trigger this event: <code>DisplayObjectContainer.addChild()</code>, <code>DisplayObjectContainer.addChildAt()</code>.
 * @eventType flash.events.Event.ADDED_TO_STAGE
 */
[Event(name="addedToStage", type="flash.events.Event")]
/**
 * [broadcast event] Dispatched when the playhead is entering a new frame. If the playhead is not moving, or if there is only one frame, this event is dispatched continuously in conjunction with the frame rate. This event is a broadcast event, which means that it is dispatched by all display objects with a listener registered for this event.
 * @eventType flash.events.Event.ENTER_FRAME
 */
[Event(name="enterFrame", type="flash.events.Event")]
/**
 * [broadcast event] Dispatched when the playhead is exiting the current frame. All frame scripts have been run. If the playhead is not moving, or if there is only one frame, this event is dispatched continuously in conjunction with the frame rate. This event is a broadcast event, which means that it is dispatched by all display objects with a listener registered for this event.
 * @eventType flash.events.Event.EXIT_FRAME
 */
[Event(name="exitFrame", type="flash.events.Event")]
/**
 * [broadcast event] Dispatched after the constructors of frame display objects have run but before frame scripts have run. If the playhead is not moving, or if there is only one frame, this event is dispatched continuously in conjunction with the frame rate. This event is a broadcast event, which means that it is dispatched by all display objects with a listener registered for this event.
 * @eventType flash.events.Event.FRAME_CONSTRUCTED
 */
[Event(name="frameConstructed", type="flash.events.Event")]
/**
 * Dispatched when a display object is about to be removed from the display list. Two methods of the DisplayObjectContainer class generate this event: <code>removeChild()</code> and <code>removeChildAt()</code>.
 * <p>The following methods of a DisplayObjectContainer object also generate this event if an object must be removed to make room for the new object: <code>addChild()</code>, <code>addChildAt()</code>, and <code>setChildIndex()</code>.</p>
 * @eventType flash.events.Event.REMOVED
 */
[Event(name="removed", type="flash.events.Event")]
/**
 * Dispatched when a display object is about to be removed from the display list, either directly or through the removal of a sub tree in which the display object is contained. Two methods of the DisplayObjectContainer class generate this event: <code>removeChild()</code> and <code>removeChildAt()</code>.
 * <p>The following methods of a DisplayObjectContainer object also generate this event if an object must be removed to make room for the new object: <code>addChild()</code>, <code>addChildAt()</code>, and <code>setChildIndex()</code>.</p>
 * @eventType flash.events.Event.REMOVED_FROM_STAGE
 */
[Event(name="removedFromStage", type="flash.events.Event")]
/**
 * [broadcast event] Dispatched when the display list is about to be updated and rendered. This event provides the last opportunity for objects listening for this event to make changes before the display list is rendered. You must call the <code>invalidate()</code> method of the Stage object each time you want a <code>render</code> event to be dispatched. <code>Render</code> events are dispatched to an object only if there is mutual trust between it and the object that called <code>Stage.invalidate()</code>. This event is a broadcast event, which means that it is dispatched by all display objects with a listener registered for this event.
 * <p><b>Note:</b> This event is not dispatched if the display is not rendering. This is the case when the content is either minimized or obscured.</p>
 * @eventType flash.events.Event.RENDER
 */
[Event(name="render", type="flash.events.Event")]

/**
 * The DisplayObject class is the base class for all objects that can be placed on the display list. The display list manages all objects displayed in the Flash runtimes. Use the DisplayObjectContainer class to arrange the display objects in the display list. DisplayObjectContainer objects can have child display objects, while other display objects, such as Shape and TextField objects, are "leaf" nodes that have only parents and siblings, no children.
 * <p>The DisplayObject class supports basic functionality like the <i>x</i> and <i>y</i> position of an object, as well as more advanced properties of the object such as its transformation matrix.</p>
 * <p>DisplayObject is an abstract base class; therefore, you cannot call DisplayObject directly. Invoking <code>new DisplayObject()</code> throws an <code>ArgumentError</code> exception.</p>
 * <p>All display objects inherit from the DisplayObject class.</p>
 * <p>The DisplayObject class itself does not include any APIs for rendering content onscreen. For that reason, if you want create a custom subclass of the DisplayObject class, you will want to extend one of its subclasses that do have APIs for rendering content onscreen, such as the Shape, Sprite, Bitmap, SimpleButton, TextField, or MovieClip class.</p>
 * <p>The DisplayObject class contains several broadcast events. Normally, the target of any particular event is a specific DisplayObject instance. For example, the target of an <code>added</code> event is the specific DisplayObject instance that was added to the display list. Having a single target restricts the placement of event listeners to that target and in some cases the target's ancestors on the display list. With broadcast events, however, the target is not a specific DisplayObject instance, but rather all DisplayObject instances, including those that are not on the display list. This means that you can add a listener to any DisplayObject instance to listen for broadcast events. In addition to the broadcast events listed in the DisplayObject class's Events table, the DisplayObject class also inherits two broadcast events from the EventDispatcher class: <code>activate</code> and <code>deactivate</code>.</p>
 * <p>Some properties previously used in the ActionScript 1.0 and 2.0 MovieClip, TextField, and Button classes (such as <code>_alpha</code>, <code>_height</code>, <code>_name</code>, <code>_width</code>, <code>_x</code>, <code>_y</code>, and others) have equivalents in the ActionScript 3.0 DisplayObject class that are renamed so that they no longer begin with the underscore (_) character.</p>
 * <p>For more information, see the "Display Programming" chapter of the <i>ActionScript 3.0 Developer's Guide</i>.</p>
 * <p><a href="http://help.adobe.com/en_US/FlashPlatform/reference/actionscript/3/flash/display/DisplayObject.html#includeExamplesSummary">View the examples</a></p>
 * @see DisplayObjectContainer
 * @see http://help.adobe.com/en_US/as3/dev/WS5b3ccc516d4fbf351e63e3d118a9b90204-7e3c.html Core display classes
 * @see http://help.adobe.com/en_US/as3/dev/WS5b3ccc516d4fbf351e63e3d118a9b90204-7e3d.html Working with display objects
 * @see http://help.adobe.com/en_US/as3/dev/WS5b3ccc516d4fbf351e63e3d118a9b90204-7dcb.html Geometry example: Applying a matrix transformation to a display object
 *
 */
public class DisplayObject extends EventDispatcher implements IBitmapDrawable {
  /**
   * The current accessibility options for this display object. If you modify the <code>accessibilityProperties</code> property or any of the fields within <code>accessibilityProperties</code>, you must call the <code>Accessibility.updateProperties()</code> method to make your changes take effect.
   * <p><b>Note</b>: For an object created in the Flash authoring environment, the value of <code>accessibilityProperties</code> is prepopulated with any information you entered in the Accessibility panel for that object.</p>
   * @see flash.accessibility.Accessibility#updateProperties()
   * @see flash.accessibility.AccessibilityProperties
   *
   * @example The following example shows how the to attach a simple AccessibilityProperties object to a TextField instance:
   * <listing>
   * import flash.text.TextField;
   * import flash.accessibility.AccessibilityProperties;
   * import flash.accessibility.Accessibility;
   * import flash.system.Capabilities;
   *
   * var tf:TextField = new TextField();
   * tf.text = "hello";
   *
   * var accessProps:AccessibilityProperties = new AccessibilityProperties();
   * accessProps.name = "Greeting";
   *
   * tf.accessibilityProperties = accessProps;
   *
   * if (Capabilities.hasAccessibility) {
   *     Accessibility.updateProperties();
   * }
   *
   * trace(tf.accessibilityProperties.name); // Greeting
   * </listing>
   */
  public function get accessibilityProperties():AccessibilityProperties {
    throw new Error('not implemented'); // TODO: implement!
  }

  /**
   * @private
   */
  public function set accessibilityProperties(value:AccessibilityProperties):void {
    throw new Error('not implemented'); // TODO: implement!
  }

  /**
   * Indicates the alpha transparency value of the object specified. Valid values are 0 (fully transparent) to 1 (fully opaque). The default value is 1. Display objects with <code>alpha</code> set to 0 <i>are</i> active, even though they are invisible.
   * @example The following code sets the <code>alpha</code> property of a sprite to 50% when the mouse rolls over the sprite:
   * <listing>
   * import flash.display.Sprite;
   * import flash.events.MouseEvent;
   *
   * var circle:Sprite = new Sprite();
   * circle.graphics.beginFill(0xFF0000);
   * circle.graphics.drawCircle(40, 40, 40);
   * addChild(circle);
   *
   * circle.addEventListener(MouseEvent.MOUSE_OVER, dimObject);
   * circle.addEventListener(MouseEvent.MOUSE_OUT, restoreObject);
   *
   * function dimObject(event:MouseEvent):void {
   *     event.target.alpha = 0.5;
   * }
   *
   * function restoreObject(event:MouseEvent):void {
   *     event.target.alpha = 1.0;
   * }
   * </listing>
   */
  public function get alpha():Number {
    return _alpha;
  }

  /**
   * @private
   */
  public function set alpha(value:Number):void {
    _alpha = value;
  }

  /**
   * A value from the BlendMode class that specifies which blend mode to use. A bitmap can be drawn internally in two ways. If you have a blend mode enabled or an external clipping mask, the bitmap is drawn by adding a bitmap-filled square shape to the vector render. If you attempt to set this property to an invalid value, Flash runtimes set the value to <code>BlendMode.NORMAL</code>.
   * <p>The <code>blendMode</code> property affects each pixel of the display object. Each pixel is composed of three constituent colors (red, green, and blue), and each constituent color has a value between 0x00 and 0xFF. Flash Player or Adobe AIR compares each constituent color of one pixel in the movie clip with the corresponding color of the pixel in the background. For example, if <code>blendMode</code> is set to <code>BlendMode.LIGHTEN</code>, Flash Player or Adobe AIR compares the red value of the display object with the red value of the background, and uses the lighter of the two as the value for the red component of the displayed color.</p>
   * <p>The following table describes the <code>blendMode</code> settings. The BlendMode class defines string values you can use. The illustrations in the table show <code>blendMode</code> values applied to a circular display object (2) superimposed on another display object (1).</p>
   * <p><img src="http://help.adobe.com/en_US/FlashPlatform/reference/actionscript/3/images/blendMode-0a.jpg" /> <img src="http://help.adobe.com/en_US/FlashPlatform/reference/actionscript/3/images/blendMode-0b.jpg" /></p>
   * <table>
   * <tr><th>BlendMode Constant</th><th>Illustration</th><th>Description</th></tr>
   * <tr>
   * <td><code>BlendMode.NORMAL</code></td>
   * <td><img src="http://help.adobe.com/en_US/FlashPlatform/reference/actionscript/3/images/blendMode-1.jpg" /></td>
   * <td>The display object appears in front of the background. Pixel values of the display object override those of the background. Where the display object is transparent, the background is visible.</td></tr>
   * <tr>
   * <td><code>BlendMode.LAYER</code></td>
   * <td><img src="http://help.adobe.com/en_US/FlashPlatform/reference/actionscript/3/images/blendMode-2.jpg" /></td>
   * <td>Forces the creation of a transparency group for the display object. This means that the display object is pre-composed in a temporary buffer before it is processed further. This is done automatically if the display object is pre-cached using bitmap caching or if the display object is a display object container with at least one child object with a <code>blendMode</code> setting other than <code>BlendMode.NORMAL</code>. Not supported under GPU rendering.</td></tr>
   * <tr>
   * <td><code>BlendMode.MULTIPLY</code></td>
   * <td><img src="http://help.adobe.com/en_US/FlashPlatform/reference/actionscript/3/images/blendMode-3.jpg" /></td>
   * <td>Multiplies the values of the display object constituent colors by the colors of the background color, and then normalizes by dividing by 0xFF, resulting in darker colors. This setting is commonly used for shadows and depth effects.
   * <p>For example, if a constituent color (such as red) of one pixel in the display object and the corresponding color of the pixel in the background both have the value 0x88, the multiplied result is 0x4840. Dividing by 0xFF yields a value of 0x48 for that constituent color, which is a darker shade than the color of the display object or the color of the background.</p></td></tr>
   * <tr>
   * <td><code>BlendMode.SCREEN</code></td>
   * <td><img src="http://help.adobe.com/en_US/FlashPlatform/reference/actionscript/3/images/blendMode-4.jpg" /></td>
   * <td>Multiplies the complement (inverse) of the display object color by the complement of the background color, resulting in a bleaching effect. This setting is commonly used for highlights or to remove black areas of the display object.</td></tr>
   * <tr>
   * <td><code>BlendMode.LIGHTEN</code></td>
   * <td><img src="http://help.adobe.com/en_US/FlashPlatform/reference/actionscript/3/images/blendMode-5.jpg" /></td>
   * <td>Selects the lighter of the constituent colors of the display object and the color of the background (the colors with the larger values). This setting is commonly used for superimposing type.
   * <p>For example, if the display object has a pixel with an RGB value of 0xFFCC33, and the background pixel has an RGB value of 0xDDF800, the resulting RGB value for the displayed pixel is 0xFFF833 (because 0xFF > 0xDD, 0xCC &lt; 0xF8, and 0x33 > 0x00 = 33). Not supported under GPU rendering.</p></td></tr>
   * <tr>
   * <td><code>BlendMode.DARKEN</code></td>
   * <td><img src="http://help.adobe.com/en_US/FlashPlatform/reference/actionscript/3/images/blendMode-6.jpg" /></td>
   * <td>Selects the darker of the constituent colors of the display object and the colors of the background (the colors with the smaller values). This setting is commonly used for superimposing type.
   * <p>For example, if the display object has a pixel with an RGB value of 0xFFCC33, and the background pixel has an RGB value of 0xDDF800, the resulting RGB value for the displayed pixel is 0xDDCC00 (because 0xFF > 0xDD, 0xCC &lt; 0xF8, and 0x33 > 0x00 = 33). Not supported under GPU rendering.</p></td></tr>
   * <tr>
   * <td><code>BlendMode.DIFFERENCE</code></td>
   * <td><img src="http://help.adobe.com/en_US/FlashPlatform/reference/actionscript/3/images/blendMode-7.jpg" /></td>
   * <td>Compares the constituent colors of the display object with the colors of its background, and subtracts the darker of the values of the two constituent colors from the lighter value. This setting is commonly used for more vibrant colors.
   * <p>For example, if the display object has a pixel with an RGB value of 0xFFCC33, and the background pixel has an RGB value of 0xDDF800, the resulting RGB value for the displayed pixel is 0x222C33 (because 0xFF - 0xDD = 0x22, 0xF8 - 0xCC = 0x2C, and 0x33 - 0x00 = 0x33).</p></td></tr>
   * <tr>
   * <td><code>BlendMode.ADD</code></td>
   * <td><img src="http://help.adobe.com/en_US/FlashPlatform/reference/actionscript/3/images/blendMode-8.jpg" /></td>
   * <td>Adds the values of the constituent colors of the display object to the colors of its background, applying a ceiling of 0xFF. This setting is commonly used for animating a lightening dissolve between two objects.
   * <p>For example, if the display object has a pixel with an RGB value of 0xAAA633, and the background pixel has an RGB value of 0xDD2200, the resulting RGB value for the displayed pixel is 0xFFC833 (because 0xAA + 0xDD > 0xFF, 0xA6 + 0x22 = 0xC8, and 0x33 + 0x00 = 0x33).</p></td></tr>
   * <tr>
   * <td><code>BlendMode.SUBTRACT</code></td>
   * <td><img src="http://help.adobe.com/en_US/FlashPlatform/reference/actionscript/3/images/blendMode-9.jpg" /></td>
   * <td>Subtracts the values of the constituent colors in the display object from the values of the background color, applying a floor of 0. This setting is commonly used for animating a darkening dissolve between two objects.
   * <p>For example, if the display object has a pixel with an RGB value of 0xAA2233, and the background pixel has an RGB value of 0xDDA600, the resulting RGB value for the displayed pixel is 0x338400 (because 0xDD - 0xAA = 0x33, 0xA6 - 0x22 = 0x84, and 0x00 - 0x33 &lt; 0x00).</p></td></tr>
   * <tr>
   * <td><code>BlendMode.INVERT</code></td>
   * <td><img src="http://help.adobe.com/en_US/FlashPlatform/reference/actionscript/3/images/blendMode-10.jpg" /></td>
   * <td>Inverts the background.</td></tr>
   * <tr>
   * <td><code>BlendMode.ALPHA</code></td>
   * <td><img src="http://help.adobe.com/en_US/FlashPlatform/reference/actionscript/3/images/blendMode-11.jpg" /></td>
   * <td>Applies the alpha value of each pixel of the display object to the background. This requires the <code>blendMode</code> setting of the parent display object to be set to <code>BlendMode.LAYER</code>. For example, in the illustration, the parent display object, which is a white background, has <code>blendMode = BlendMode.LAYER</code>. Not supported under GPU rendering.</td></tr>
   * <tr>
   * <td><code>BlendMode.ERASE</code></td>
   * <td><img src="http://help.adobe.com/en_US/FlashPlatform/reference/actionscript/3/images/blendMode-12.jpg" /></td>
   * <td>Erases the background based on the alpha value of the display object. This requires the <code>blendMode</code> of the parent display object to be set to <code>BlendMode.LAYER</code>. For example, in the illustration, the parent display object, which is a white background, has <code>blendMode = BlendMode.LAYER</code>. Not supported under GPU rendering.</td></tr>
   * <tr>
   * <td><code>BlendMode.OVERLAY</code></td>
   * <td><img src="http://help.adobe.com/en_US/FlashPlatform/reference/actionscript/3/images/blendMode-13.jpg" /></td>
   * <td>Adjusts the color of each pixel based on the darkness of the background. If the background is lighter than 50% gray, the display object and background colors are screened, which results in a lighter color. If the background is darker than 50% gray, the colors are multiplied, which results in a darker color. This setting is commonly used for shading effects. Not supported under GPU rendering.</td></tr>
   * <tr>
   * <td><code>BlendMode.HARDLIGHT</code></td>
   * <td><img src="http://help.adobe.com/en_US/FlashPlatform/reference/actionscript/3/images/blendMode-14.jpg" /></td>
   * <td>Adjusts the color of each pixel based on the darkness of the display object. If the display object is lighter than 50% gray, the display object and background colors are screened, which results in a lighter color. If the display object is darker than 50% gray, the colors are multiplied, which results in a darker color. This setting is commonly used for shading effects. Not supported under GPU rendering.</td></tr>
   * <tr>
   * <td><code>BlendMode.SHADER</code></td>
   * <td>N/A</td>
   * <td>Adjusts the color using a custom shader routine. The shader that is used is specified as the Shader instance assigned to the <code>blendShader</code> property. Setting the <code>blendShader</code> property of a display object to a Shader instance automatically sets the display object's <code>blendMode</code> property to <code>BlendMode.SHADER</code>. If the <code>blendMode</code> property is set to <code>BlendMode.SHADER</code> without first setting the <code>blendShader</code> property, the <code>blendMode</code> property is set to <code>BlendMode.NORMAL</code>. Not supported under GPU rendering.</td></tr></table>
   * @see BlendMode
   * @see #blendShader
   *
   * @example The following code creates two sprite objects, a square and a circle, and sets the blend mode of the circle (in the foreground) to <code>BlendMode.SUBTRACT</code> when the pointer rolls over the circle:
   * <listing>
   * import flash.display.Sprite;
   * import flash.display.BlendMode;
   * import flash.events.MouseEvent;
   *
   * var square:Sprite = new Sprite();
   * square.graphics.beginFill(0xFF88CC);
   * square.graphics.drawRect(0, 0, 80, 80);
   * addChild(square);
   *
   * var circle:Sprite = new Sprite();
   * circle.graphics.beginFill(0xAA0022);
   * circle.graphics.drawCircle(40, 40, 40);
   * addChild(circle);
   *
   * circle.addEventListener(MouseEvent.MOUSE_OVER, dimObject);
   * circle.addEventListener(MouseEvent.MOUSE_OUT, restoreObject);
   *
   * function dimObject(event:MouseEvent):void {
   *     event.target.blendMode = BlendMode.SUBTRACT;
   * }
   *
   * function restoreObject(event:MouseEvent):void {
   *     event.target.blendMode = BlendMode.NORMAL;
   * }
   * </listing>
   */
  public function get blendMode():String {
    return _blendMode;
  }

  /**
   * @private
   */
  public function set blendMode(value:String):void {
    _blendMode = value;
  }

  /**
   * Sets a shader that is used for blending the foreground and background. When the <code>blendMode</code> property is set to <code>BlendMode.SHADER</code>, the specified Shader is used to create the blend mode output for the display object.
   * <p>Setting the <code>blendShader</code> property of a display object to a Shader instance automatically sets the display object's <code>blendMode</code> property to <code>BlendMode.SHADER</code>. If the <code>blendShader</code> property is set (which sets the <code>blendMode</code> property to <code>BlendMode.SHADER</code>), then the value of the <code>blendMode</code> property is changed, the blend mode can be reset to use the blend shader simply by setting the <code>blendMode</code> property to <code>BlendMode.SHADER</code>. The <code>blendShader</code> property does not need to be set again except to change the shader that's used for the blend mode.</p>
   * <p>The Shader assigned to the <code>blendShader</code> property must specify at least two <code>image4</code> inputs. The inputs <b>do not</b> need to be specified in code using the associated ShaderInput objects' <code>input</code> properties. The background display object is automatically used as the first input (the input with <code>index</code> 0). The foreground display object is used as the second input (the input with <code>index</code> 1). A shader used as a blend shader can specify more than two inputs. In that case any additional input must be specified by setting its ShaderInput instance's <code>input</code> property.</p>
   * <p>When you assign a Shader instance to this property the shader is copied internally. The blend operation uses that internal copy, not a reference to the original shader. Any changes made to the shader, such as changing a parameter value, input, or bytecode, are not applied to the copied shader that's used for the blend mode.</p>
   * @throws ArgumentError When the shader output type is not compatible with this operation (the shader must specify a <code>pixel4</code> output).
   * @throws ArgumentError When the shader specifies fewer than two image inputs or the first two inputs are not an <code>image4</code> inputs.
   * @throws ArgumentError When the shader specifies an image input that isn't provided.
   * @throws ArgumentError When a ByteArray or Vector.&lt;Number> instance is used as an input and the <code>width</code> and <code>height</code> properties aren't specified for the ShaderInput, or the specified values don't match the amount of data in the input object. See the <code>ShaderInput.input</code> property for more information.
   *
   * @see BlendMode
   * @see Shader
   * @see ShaderInput
   *
   */
  public function set blendShader(value:Shader):void {
    throw new Error('not implemented'); // TODO: implement!
  }

  /**
   * If set to <code>true</code>, Flash runtimes cache an internal bitmap representation of the display object. This caching can increase performance for display objects that contain complex vector content.
   * <p>All vector data for a display object that has a cached bitmap is drawn to the bitmap instead of the main display. If <code>cacheAsBitmapMatrix</code> is null or unsupported, the bitmap is then copied to the main display as unstretched, unrotated pixels snapped to the nearest pixel boundaries. Pixels are mapped 1 to 1 with the parent object. If the bounds of the bitmap change, the bitmap is recreated instead of being stretched.</p>
   * <p>If <code>cacheAsBitmapMatrix</code> is non-null and supported, the object is drawn to the off-screen bitmap using that matrix and the stretched and/or rotated results of that rendering are used to draw the object to the main display.</p>
   * <p>No internal bitmap is created unless the <code>cacheAsBitmap</code> property is set to <code>true</code>.</p>
   * <p>After you set the <code>cacheAsBitmap</code> property to <code>true</code>, the rendering does not change, however the display object performs pixel snapping automatically. The animation speed can be significantly faster depending on the complexity of the vector content.</p>
   * <p>The <code>cacheAsBitmap</code> property is automatically set to <code>true</code> whenever you apply a filter to a display object (when its <code>filter</code> array is not empty), and if a display object has a filter applied to it, <code>cacheAsBitmap</code> is reported as <code>true</code> for that display object, even if you set the property to <code>false</code>. If you clear all filters for a display object, the <code>cacheAsBitmap</code> setting changes to what it was last set to.</p>
   * <p>A display object does not use a bitmap even if the <code>cacheAsBitmap</code> property is set to <code>true</code> and instead renders from vector data in the following cases:</p>
   * <ul>
   * <li>The bitmap is too large. In AIR 1.5 and Flash Player 10, the maximum size for a bitmap image is 8,191 pixels in width or height, and the total number of pixels cannot exceed 16,777,215 pixels. (So, if a bitmap image is 8,191 pixels wide, it can only be 2,048 pixels high.) In Flash Player 9 and earlier, the limitation is is 2880 pixels in height and 2,880 pixels in width.</li>
   * <li>The bitmap fails to allocate (out of memory error).</li></ul>
   * <p>The <code>cacheAsBitmap</code> property is best used with movie clips that have mostly static content and that do not scale and rotate frequently. With such movie clips, <code>cacheAsBitmap</code> can lead to performance increases when the movie clip is translated (when its <i>x</i> and <i>y</i> position is changed).</p>
   * @see #cacheAsBitmapMatrix
   * @see #opaqueBackground
   *
   * @example The following example applies a drop shadow to a Shape instance. It then traces the value of the <code>cacheAsBitmap</code> property, which is set to <code>true</code> when the filter is applied:
   * <listing>
   * import flash.display.Sprite;
   * import flash.filters.DropShadowFilter
   *
   * var circle:Sprite = new Sprite();
   * circle.graphics.beginFill(0xAA0022);
   * circle.graphics.drawCircle(40, 40, 40);
   *
   * addChild(circle);
   *
   * trace(circle.cacheAsBitmap); // false
   *
   * var filter:DropShadowFilter = new DropShadowFilter();
   * circle.filters = [filter];
   *
   * trace(circle.cacheAsBitmap); // true
   * </listing>
   */
  public function get cacheAsBitmap():Boolean {
    return _cacheAsBitmap;
  }

  /**
   * @private
   */
  public function set cacheAsBitmap(value:Boolean):void {
    _cacheAsBitmap = value; // TODO: implement!
  }

  /**
   * An indexed array that contains each filter object currently associated with the display object. The flash.filters package contains several classes that define specific filters you can use.
   * <p>Filters can be applied in Flash Professional at design time, or at run time by using ActionScript code. To apply a filter by using ActionScript, you must make a temporary copy of the entire <code>filters</code> array, modify the temporary array, then assign the value of the temporary array back to the <code>filters</code> array. You cannot directly add a new filter object to the <code>filters</code> array.</p>
   * <p>To add a filter by using ActionScript, perform the following steps (assume that the target display object is named <code>myDisplayObject</code>):</p><ol>
   * <li>Create a new filter object by using the constructor method of your chosen filter class.</li>
   * <li>Assign the value of the <code>myDisplayObject.filters</code> array to a temporary array, such as one named <code>myFilters</code>.</li>
   * <li>Add the new filter object to the <code>myFilters</code> temporary array.</li>
   * <li>Assign the value of the temporary array to the <code>myDisplayObject.filters</code> array.</li></ol>
   * <p>If the <code>filters</code> array is undefined, you do not need to use a temporary array. Instead, you can directly assign an array literal that contains one or more filter objects that you create. The first example in the Examples section adds a drop shadow filter by using code that handles both defined and undefined <code>filters</code> arrays.</p>
   * <p>To modify an existing filter object, you must use the technique of modifying a copy of the <code>filters</code> array:</p><ol>
   * <li>Assign the value of the <code>filters</code> array to a temporary array, such as one named <code>myFilters</code>.</li>
   * <li>Modify the property by using the temporary array, <code>myFilters</code>. For example, to set the quality property of the first filter in the array, you could use the following code: <code>myFilters[0].quality = 1;</code></li>
   * <li>Assign the value of the temporary array to the <code>filters</code> array.</li></ol>
   * <p>At load time, if a display object has an associated filter, it is marked to cache itself as a transparent bitmap. From this point forward, as long as the display object has a valid filter list, the player caches the display object as a bitmap. This source bitmap is used as a source image for the filter effects. Each display object usually has two bitmaps: one with the original unfiltered source display object and another for the final image after filtering. The final image is used when rendering. As long as the display object does not change, the final image does not need updating.</p>
   * <p>The flash.filters package includes classes for filters. For example, to create a DropShadow filter, you would write:</p>
   * <listing>
   *      import flash.filters.DropShadowFilter
   *      var myFilter:DropShadowFilter = new DropShadowFilter (distance, angle, color, alpha, blurX, blurY, quality, inner, knockout)
   *     </listing>
   * <p>You can use the <code>is</code> operator to determine the type of filter assigned to each index position in the <code>filter</code> array. For example, the following code shows how to determine the position of the first filter in the <code>filters</code> array that is a DropShadowFilter:</p>
   * <listing>
   *      import flash.text.TextField;
   *      import flash.filters.*;
   *      var tf:TextField = new TextField();
   *      var filter1:DropShadowFilter = new DropShadowFilter();
   *      var filter2:GradientGlowFilter = new GradientGlowFilter();
   *      tf.filters = [filter1, filter2];
   *
   *      tf.text = "DropShadow index: " + filterPosition(tf, DropShadowFilter).toString(); // 0
   *      addChild(tf)
   *
   *      function filterPosition(displayObject:DisplayObject, filterClass:Class):int {
   *          for (var i:uint = 0; i &lt; displayObject.filters.length; i++) {
   *              if (displayObject.filters[i] is filterClass) {
   *                  return i;
   *              }
   *          }
   *          return -1;
   *      }
   *     </listing>
   * <p><b>Note:</b> Since you cannot directly add a new filter object to the <code>DisplayObject.filters</code> array, the following code has no effect on the target display object, named <code>myDisplayObject</code>:</p>
   * <listing>
   *      myDisplayObject.filters.push(myDropShadow);
   *     </listing>
   * @throws ArgumentError When <code>filters</code> includes a ShaderFilter and the shader output type is not compatible with this operation (the shader must specify a <code>pixel4</code> output).
   * @throws ArgumentError When <code>filters</code> includes a ShaderFilter and the shader doesn't specify any image input or the first input is not an <code>image4</code> inputs.
   * @throws ArgumentError When <code>filters</code> includes a ShaderFilter and the shader specifies an image input that isn't provided.
   * @throws ArgumentError When <code>filters</code> includes a ShaderFilter, a ByteArray or Vector.&lt;Number> instance as a shader input, and the <code>width</code> and <code>height</code> properties aren't specified for the ShaderInput object, or the specified values don't match the amount of data in the input data. See the <code>ShaderInput.input</code> property for more information.
   *
   * @see flash.filters
   * @see ShaderInput#input
   *
   */
  public function get filters():Array {
    return _filters.concat();
  }

  /**
   * @private
   */
  public function set filters(value:Array):void {
    _filters = value.concat();
    if (value.length > 0) {
      // see documentation of "cacheAsBitmap": "automatically set to true when filter is set"
      _cacheAsBitmap = true;
    }
    // TODO: use when rendering!
  }

  /**
   * Indicates the height of the display object, in pixels. The height is calculated based on the bounds of the content of the display object. When you set the <code>height</code> property, the <code>scaleY</code> property is adjusted accordingly, as shown in the following code:
   * <listing>
   *     var rect:Shape = new Shape();
   *     rect.graphics.beginFill(0xFF0000);
   *     rect.graphics.drawRect(0, 0, 100, 100);
   *     trace(rect.scaleY) // 1;
   *     rect.height = 200;
   *     trace(rect.scaleY) // 2;</listing>
   * <p>Except for TextField and Video objects, a display object with no content (such as an empty sprite) has a height of 0, even if you try to set <code>height</code> to a different value.</p>
   * @example The following code creates two TextField objects and adjusts the <code>height</code> property of each based on the <code>textHeight</code> property of each; it also positions the second text field by setting its <code>y</code> property:
   * <listing>
   * import flash.text.TextField;
   *
   * var tf1:TextField = new TextField();
   * tf1.text = "Text Field 1";
   * tf1.border = true;
   * tf1.wordWrap = true;
   * tf1.width = 40;
   * tf1.height = tf1.textHeight + 5;
   * addChild(tf1);
   *
   * var tf2:TextField = new TextField();
   * tf2.text = "Text Field 2";
   * tf2.border = true;
   * tf2.wordWrap = true;
   * tf2.width = 40;
   * tf2.height = tf2.textHeight + 5;
   * tf2.y = tf1.y + tf1.height + 5;
   * addChild(tf2);
   * </listing>
   */
  public function get height():Number {
    return getBoundsTransformed(transform.matrix).height;
  }

  /**
   * @private
   */
  public function set height(value:Number):void {
    scaleY = 1;
    var normalHeight:Number = height;
    scaleY = normalHeight ? value / normalHeight : 1;
  }

  /**
   * Returns a LoaderInfo object containing information about loading the file to which this display object belongs. The <code>loaderInfo</code> property is defined only for the root display object of a SWF file or for a loaded Bitmap (not for a Bitmap that is drawn with ActionScript). To find the <code>loaderInfo</code> object associated with the SWF file that contains a display object named <code>myDisplayObject</code>, use <code>myDisplayObject.root.loaderInfo</code>.
   * <p>A large SWF file can monitor its download by calling <code>this.root.loaderInfo.addEventListener(Event.COMPLETE, func)</code>.</p>
   * @see LoaderInfo
   *
   * @example The following code assumes that <code>this</code> refers to a display object. The code outputs the URL of the root SWF file for the display object:
   * <listing>
   *  trace (this.loaderInfo.url);
   *
   * </listing>
   */
  public native function get loaderInfo():LoaderInfo;

  /**
   * The calling display object is masked by the specified <code>mask</code> object. To ensure that masking works when the Stage is scaled, the <code>mask</code> display object must be in an active part of the display list. The <code>mask</code> object itself is not drawn. Set <code>mask</code> to <code>null</code> to remove the mask.
   * <p>To be able to scale a mask object, it must be on the display list. To be able to drag a mask Sprite object (by calling its <code>startDrag()</code> method), it must be on the display list. To call the <code>startDrag()</code> method for a mask sprite based on a <code>mouseDown</code> event being dispatched by the sprite, set the sprite's <code>buttonMode</code> property to <code>true</code>.</p>
   * <p>When display objects are cached by setting the <code>cacheAsBitmap</code> property to <code>true</code> an the <code>cacheAsBitmapMatrix</code> property to a Matrix object, both the mask and the display object being masked must be part of the same cached bitmap. Thus, if the display object is cached, then the mask must be a child of the display object. If an ancester of the display object on the display list is cached, then the mask must be a child of that ancestor or one of its descendents. If more than one ancestor of the masked object is cached, then the mask must be a descendent of the cached container closest to the masked object in the display list.</p>
   * <p><b>Note:</b> A single <code>mask</code> object cannot be used to mask more than one calling display object. When the <code>mask</code> is assigned to a second display object, it is removed as the mask of the first object, and that object's <code>mask</code> property becomes <code>null</code>.</p>
   * @example The following code creates a TextField object as well as a Sprite object that is set as a mask for the TextField object. When the user clicks the text field, the <code>drag()</code> event listener function calls the <code>startDrag()</code> method of the mask Sprite object:
   * <listing>
   * import flash.text.TextField;
   * import flash.display.Sprite;
   * import flash.events.MouseEvent;
   *
   * var tf:TextField = new TextField();
   * tf.text = "Lorem ipsum dolor sit amet, consectetur adipisicing elit, "
   *             + "sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. "
   * tf.selectable = false;
   * tf.wordWrap = true;
   * tf.width = 150;
   * addChild(tf);
   *
   * var square:Sprite = new Sprite();
   * square.graphics.beginFill(0xFF0000);
   * square.graphics.drawRect(0, 0, 40, 40);
   * addChild(square);
   *
   * tf.mask = square;
   *
   * tf.addEventListener(MouseEvent.MOUSE_DOWN, drag);
   * tf.addEventListener(MouseEvent.MOUSE_UP, noDrag);
   *
   * function drag(event:MouseEvent):void {
   *     square.startDrag();
   * }
   * function noDrag(event:MouseEvent):void {
   *     square.stopDrag();
   * }
   * </listing>
   */
  public function get mask():DisplayObject {
    return _mask;
  }

  /**
   * @private
   */
  public function set mask(value:DisplayObject):void {
    _mask = value;
  }

  /**
   * Indicates the x coordinate of the mouse or user input device position, in pixels.
   * <p><b>Note</b>: For a DisplayObject that has been rotated, the returned x coordinate will reflect the non-rotated object.</p>
   * @example The following code creates a Sprite object and traces the <code>mouseX</code> and <code>mouseY</code> positions when the user clicks the sprite:
   * <listing>
   * import flash.display.Sprite;
   * import flash.events.MouseEvent;
   *
   * var square:Sprite = new Sprite();
   * square.graphics.beginFill(0xFF0000);
   * square.graphics.drawRect(0, 0, 200, 200);
   * addChild(square);
   *
   * square.addEventListener(MouseEvent.CLICK, traceCoordinates);
   *
   * function traceCoordinates(event:MouseEvent):void {
   *     trace(square.mouseX, square.mouseY);
   * }
   * </listing>
   */
  public function get mouseX():Number {
    return stage ? stage.mouseX / _scaleX : NaN;
  }

  /**
   * Indicates the y coordinate of the mouse or user input device position, in pixels.
   * <p><b>Note</b>: For a DisplayObject that has been rotated, the returned y coordinate will reflect the non-rotated object.</p>
   * @example The following code creates a Sprite object and traces the <code>mouseX</code> and <code>mouseY</code> positions when the user clicks the sprite:
   * <listing>
   * import flash.display.Sprite;
   * import flash.events.MouseEvent;
   *
   * var square:Sprite = new Sprite();
   * square.graphics.beginFill(0xFF0000);
   * square.graphics.drawRect(0, 0, 200, 200);
   * addChild(square);
   *
   * square.addEventListener(MouseEvent.CLICK, traceCoordinates);
   *
   * function traceCoordinates(event:MouseEvent):void {
   *     trace(square.mouseX, square.mouseY);
   * }
   * </listing>
   */
  public function get mouseY():Number {
    return stage ? stage.mouseY / _scaleY : NaN;
  }

  /**
   * Indicates the instance name of the DisplayObject. The object can be identified in the child list of its parent display object container by calling the <code>getChildByName()</code> method of the display object container.
   * @throws flash.errors.IllegalOperationError If you are attempting to set this property on an object that was placed on the timeline in the Flash authoring tool.
   *
   * @example The following code creates two Sprite object and traces the associated <code>name</code> property when the user clicks either of the objects:
   * <listing>
   * import flash.display.Sprite;
   * import flash.events.MouseEvent;
   *
   * var circle1:Sprite = new Sprite();
   * circle1.graphics.beginFill(0xFF0000);
   * circle1.graphics.drawCircle(40, 40, 40);
   * circle1.name = "circle1";
   * addChild(circle1);
   * circle1.addEventListener(MouseEvent.CLICK, traceName);
   *
   * var circle2:Sprite = new Sprite();
   * circle2.graphics.beginFill(0x0000FF);
   * circle2.graphics.drawCircle(140, 40, 40);
   * circle2.name = "circle2";
   * addChild(circle2);
   * circle2.addEventListener(MouseEvent.CLICK, traceName);
   *
   * function traceName(event:MouseEvent):void {
   *     trace(event.target.name);
   * }
   * </listing>
   */
  public native function get name():String;

  /**
   * @private
   */
  public native function set name(value:String):void;

  /**
   * Specifies whether the display object is opaque with a certain background color. A transparent bitmap contains alpha channel data and is drawn transparently. An opaque bitmap has no alpha channel (and renders faster than a transparent bitmap). If the bitmap is opaque, you specify its own background color to use.
   * <p>If set to a number value, the surface is opaque (not transparent) with the RGB background color that the number specifies. If set to <code>null</code> (the default value), the display object has a transparent background.</p>
   * <p>The <code>opaqueBackground</code> property is intended mainly for use with the <code>cacheAsBitmap</code> property, for rendering optimization. For display objects in which the <code>cacheAsBitmap</code> property is set to true, setting <code>opaqueBackground</code> can improve rendering performance.</p>
   * <p>The opaque background region is <i>not</i> matched when calling the <code>hitTestPoint()</code> method with the <code>shapeFlag</code> parameter set to <code>true</code>.</p>
   * <p>The opaque background region does not respond to mouse events.</p>
   * @see #cacheAsBitmap
   * @see #hitTestPoint()
   *
   * @example The following code creates a Shape object with a blue circle and sets its <code>opaqueBackground</code> property to red (0xFF0000):
   * <listing>
   * import flash.display.Shape;
   *
   * var circle:Shape = new Shape();
   * circle.graphics.beginFill(0x0000FF);
   * circle.graphics.drawCircle(40, 40, 40);
   * circle.opaqueBackground = 0xFF0000;
   * addChild(circle);
   * </listing>
   */
  public function get opaqueBackground():Object {
    throw new Error('not implemented'); // TODO: implement!
  }

  /**
   * @private
   */
  public function set opaqueBackground(value:Object):void {
    throw new Error('not implemented'); // TODO: implement!
  }

  /**
   * Indicates the DisplayObjectContainer object that contains this display object. Use the <code>parent</code> property to specify a relative path to display objects that are above the current display object in the display list hierarchy.
   * <p>You can use <code>parent</code> to move up multiple levels in the display list as in the following:</p>
   * <listing>
   *      this.parent.parent.alpha = 20;
   *     </listing>
   * @throws SecurityError The parent display object belongs to a security sandbox to which you do not have access. You can avoid this situation by having the parent movie call the <code>Security.allowDomain()</code> method.
   *
   * @example The following code creates three Sprite objects and shows how the <code>parent</code> property reflects the display list hierarchy:
   * <listing>
   * import flash.display.Sprite;
   *
   * var sprite1:Sprite = new Sprite();
   * sprite1.name = "sprite1";
   * var sprite2:Sprite = new Sprite();
   * sprite2.name = "sprite2";
   * var sprite3:Sprite = new Sprite();
   * sprite3.name = "sprite3";
   *
   * sprite1.addChild(sprite2);
   * sprite2.addChild(sprite3);
   *
   * trace(sprite2.parent.name); // sprite1
   * trace(sprite3.parent.name); // sprite2
   * trace(sprite3.parent.parent.name); // sprite1
   * </listing>
   */
  public native function get parent():DisplayObjectContainer;

  /**
   * For a display object in a loaded SWF file, the <code>root</code> property is the top-most display object in the portion of the display list's tree structure represented by that SWF file. For a Bitmap object representing a loaded image file, the <code>root</code> property is the Bitmap object itself. For the instance of the main class of the first SWF file loaded, the <code>root</code> property is the display object itself. The <code>root</code> property of the Stage object is the Stage object itself. The <code>root</code> property is set to <code>null</code> for any display object that has not been added to the display list, unless it has been added to a display object container that is off the display list but that is a child of the top-most display object in a loaded SWF file.
   * <p>For example, if you create a new Sprite object by calling the <code>Sprite()</code> constructor method, its <code>root</code> property is <code>null</code> until you add it to the display list (or to a display object container that is off the display list but that is a child of the top-most display object in a SWF file).</p>
   * <p>For a loaded SWF file, even though the Loader object used to load the file may not be on the display list, the top-most display object in the SWF file has its <code>root</code> property set to itself. The Loader object does not have its <code>root</code> property set until it is added as a child of a display object for which the <code>root</code> property is set.</p>
   * @example The following code shows the difference between the <code>root</code> property for the Stage object, for a display object (a Loader object) that is not loaded (both before and after it has been added to the display list), and for a loaded object (a loaded Bitmap object):
   * <listing>
   * import flash.display.Loader;
   * import flash.net.URLRequest;
   * import flash.events.Event;
   *
   * trace(stage.root); // [object Stage]
   *
   * var ldr:Loader = new Loader();
   * trace (ldr.root); // null
   *
   * addChild(ldr);
   * trace (ldr.root); // [object ...]
   *
   * var urlReq:URLRequest = new URLRequest("example.jpg");
   * ldr.load(urlReq);
   *
   * ldr.contentLoaderInfo.addEventListener(Event.COMPLETE, loaded);
   *
   * function loaded(event:Event):void {
   *     trace(ldr.content.root); // [object Bitmap]
   * }
   * </listing>
   */
  public function get root():DisplayObject {
    var root:DisplayObject = this;
    while (root.parent) {
      root = root.parent;
    }
    return root;
  }

  /**
   * Indicates the rotation of the DisplayObject instance, in degrees, from its original orientation. Values from 0 to 180 represent clockwise rotation; values from 0 to -180 represent counterclockwise rotation. Values outside this range are added to or subtracted from 360 to obtain a value within the range. For example, the statement <code>my_video.rotation = 450</code> is the same as <code>my_video.rotation = 90</code>.
   * @example The following code creates a Sprite object and rotates the object when the user clicks it:
   * <listing>
   * import flash.display.Sprite;
   * import flash.events.MouseEvent;
   *
   * var square:Sprite = new Sprite();
   * square.graphics.beginFill(0xFFCC00);
   * square.graphics.drawRect(-50, -50, 100, 100);
   * square.x = 150;
   * square.y = 150;
   * addChild(square);
   *
   * square.addEventListener(MouseEvent.CLICK, rotate);
   *
   * function rotate(event:MouseEvent):void {
   *         square.rotation += 15;
   * }
   * </listing>
   */
  public function get rotation():Number {
    return _rotation;
  }

  /**
   * @private
   */
  public function set rotation(value:Number):void {
    if (_rotation !== value) {
      _rotation = value;
      _transformationMatrixCacheDirty = true;
    }
  }

  protected function get vertical():Boolean {
    return _rotation === 90 || _rotation === 270;
  }

  /**
   * Indicates the x-axis rotation of the DisplayObject instance, in degrees, from its original orientation relative to the 3D parent container. Values from 0 to 180 represent clockwise rotation; values from 0 to -180 represent counterclockwise rotation. Values outside this range are added to or subtracted from 360 to obtain a value within the range.
   * @example In this example, two ellipses rotate using their <code>rotationX</code> and <code>rotationY</code> properties. The first ellipse's registration point is set to its center. It rotates around itself. The second ellipse rotates around an external point.
   * <listing>
   * package {
   *     import flash.display.MovieClip;
   *     import flash.display.Shape;
   *     import flash.geom.*;
   *     import flash.display.Graphics;
   *     import flash.events.TimerEvent;
   *     import flash.utils.Timer;
   *
   *     public class RotationExample1 extends MovieClip {
   *         private var ellipse:Shape = new Shape();
   *         private var speed:int = 10;
   *         private var ellipse1:Shape;
   *         private var ellipse2:Shape;
   *
   *         public function RotationExample1():void {
   *
   *             ellipse1 = drawEllipse(-50, -40, (this.stage.stageWidth / 2),
   *                                     (this.stage.stageHeight / 2));
   *
   *             ellipse2 = drawEllipse(30, 40, (this.stage.stageWidth / 2),
   *                                           (this.stage.stageHeight / 2));
   *
   *             this.addChild(ellipse1);
   *             this.addChild(ellipse2);
   *
   *             var t:Timer = new Timer(50);
   *             t.addEventListener(TimerEvent.TIMER, timerHandler);
   *             t.start();
   *         }
   *
   *         private function drawEllipse(x1, y1, x2, y2):Shape {
   *
   *             var e:Shape = new Shape();
   *             e.graphics.beginFill(0xFF0000);
   *             e.graphics.lineStyle(2);
   *             e.graphics.drawEllipse(x1, y1, 100, 80);
   *             e.graphics.endFill();
   *
   *             e.x  = x2;
   *             e.y  = y2;
   *             e.z = 1;
   *             return e;
   *         }
   *
   *         private function timerHandler(event:TimerEvent):void {
   *             ellipse1.rotationY += speed;
   *             ellipse1.rotationX -= speed;
   *
   *             ellipse2.rotationY += speed;
   *             ellipse2.rotationX -= speed;
   *         }
   *     }
   * }
   * </listing>
   * <div>The following example shows how you can 3D rotate a Sprite object around its x-axis with Flash Professional, ActionScript 3.0, and Flash Player 10 by setting the object's rotationX property. Example provided by <a href="http://actionscriptexamples.com/2009/02/26/rotating-a-sprite-object-around-its-x-axis-in-flash-using-actionscript-30-and-flash-player-10/">ActionScriptExamples.com</a>.
   * <listing>
   * //Requires:
   * //  - Slider control UI component in Flash library.
   * //  - Publish for Flash Player 10.
   * //
   *
   * [SWF(width="400", height="300")]
   *
   * import fl.controls.Slider;
   * import fl.controls.SliderDirection;
   * import fl.events.SliderEvent;
   *
   * var slider:Slider = new Slider();
   * slider.direction = SliderDirection.HORIZONTAL;
   * slider.minimum = 0;
   * slider.maximum = 360;
   * slider.value = 45;
   * slider.tickInterval = 45;
   * slider.snapInterval = 1;
   * slider.liveDragging = true;
   * slider.addEventListener(SliderEvent.CHANGE, slider_change);
   * slider.move(10, 10);
   * addChild(slider);
   *
   * var spr:Sprite = new Sprite();
   * spr.graphics.lineStyle(2, 0xFF0000);
   * spr.graphics.drawRect(0, 0, 100, 80);
   * spr.x = Math.round((stage.stageWidth - spr.width)/2);
   * spr.y = Math.round((stage.stageHeight - spr.height)/2);
   * spr.rotationX = 45;
   * addChild(spr);
   *
   * function slider_change(evt:SliderEvent):void {
   *     spr.rotationX = evt.value;
   * }
   * </listing></div>
   */
  public function get rotationX():Number {
    throw new Error('not implemented'); // TODO: implement!
  }

  /**
   * @private
   */
  public function set rotationX(value:Number):void {
    throw new Error('not implemented'); // TODO: implement!
  }

  /**
   * Indicates the y-axis rotation of the DisplayObject instance, in degrees, from its original orientation relative to the 3D parent container. Values from 0 to 180 represent clockwise rotation; values from 0 to -180 represent counterclockwise rotation. Values outside this range are added to or subtracted from 360 to obtain a value within the range.
   * @example In this example, two ellipses rotate using their <code>rotationX</code> and <code>rotationY</code> properties. The first ellipse's registration point is set to its center. It rotates around itself. The second ellipse rotates around an external point.
   * <listing>
   * package {
   *     import flash.display.MovieClip;
   *     import flash.display.Shape;
   *     import flash.geom.*;
   *     import flash.display.Graphics;
   *     import flash.events.TimerEvent;
   *     import flash.utils.Timer;
   *
   *     public class RotationExample1 extends MovieClip {
   *         private var ellipse:Shape = new Shape();
   *         private var speed:int = 10;
   *         private var ellipse1:Shape;
   *         private var ellipse2:Shape;
   *
   *         public function RotationExample1():void {
   *
   *             ellipse1 = drawEllipse(-50, -40, (this.stage.stageWidth / 2),
   *                                     (this.stage.stageHeight / 2));
   *
   *             ellipse2 = drawEllipse(30, 40, (this.stage.stageWidth / 2),
   *                                           (this.stage.stageHeight / 2));
   *
   *             this.addChild(ellipse1);
   *             this.addChild(ellipse2);
   *
   *             var t:Timer = new Timer(50);
   *             t.addEventListener(TimerEvent.TIMER, timerHandler);
   *             t.start();
   *         }
   *
   *         private function drawEllipse(x1, y1, x2, y2):Shape {
   *
   *             var e:Shape = new Shape();
   *             e.graphics.beginFill(0xFF0000);
   *             e.graphics.lineStyle(2);
   *             e.graphics.drawEllipse(x1, y1, 100, 80);
   *             e.graphics.endFill();
   *
   *             e.x  = x2;
   *             e.y  = y2;
   *             e.z = 1;
   *             return e;
   *         }
   *
   *         private function timerHandler(event:TimerEvent):void {
   *             ellipse1.rotationY += speed;
   *             ellipse1.rotationX -= speed;
   *
   *             ellipse2.rotationY += speed;
   *             ellipse2.rotationX -= speed;
   *         }
   *     }
   * }
   * </listing>
   */
  public function get rotationY():Number {
    throw new Error('not implemented'); // TODO: implement!
  }

  /**
   * @private
   */
  public function set rotationY(value:Number):void {
    throw new Error('not implemented'); // TODO: implement!
  }

  /**
   * Indicates the z-axis rotation of the DisplayObject instance, in degrees, from its original orientation relative to the 3D parent container. Values from 0 to 180 represent clockwise rotation; values from 0 to -180 represent counterclockwise rotation. Values outside this range are added to or subtracted from 360 to obtain a value within the range.
   */
  public function get rotationZ():Number {
    throw new Error('not implemented'); // TODO: implement!
  }

  /**
   * @private
   */
  public function set rotationZ(value:Number):void {
    throw new Error('not implemented'); // TODO: implement!
  }

  /**
   * The current scaling grid that is in effect. If set to <code>null</code>, the entire display object is scaled normally when any scale transformation is applied.
   * <p>When you define the <code>scale9Grid</code> property, the display object is divided into a grid with nine regions based on the <code>scale9Grid</code> rectangle, which defines the center region of the grid. The eight other regions of the grid are the following areas:</p>
   * <ul>
   * <li>The upper-left corner outside of the rectangle</li>
   * <li>The area above the rectangle</li>
   * <li>The upper-right corner outside of the rectangle</li>
   * <li>The area to the left of the rectangle</li>
   * <li>The area to the right of the rectangle</li>
   * <li>The lower-left corner outside of the rectangle</li>
   * <li>The area below the rectangle</li>
   * <li>The lower-right corner outside of the rectangle</li></ul>
   * <p>You can think of the eight regions outside of the center (defined by the rectangle) as being like a picture frame that has special rules applied to it when scaled.</p>
   * <p>When the <code>scale9Grid</code> property is set and a display object is scaled, all text and gradients are scaled normally; however, for other types of objects the following rules apply:</p>
   * <ul>
   * <li>Content in the center region is scaled normally.</li>
   * <li>Content in the corners is not scaled.</li>
   * <li>Content in the top and bottom regions is scaled horizontally only. Content in the left and right regions is scaled vertically only.</li>
   * <li>All fills (including bitmaps, video, and gradients) are stretched to fit their shapes.</li></ul>
   * <p>If a display object is rotated, all subsequent scaling is normal (and the <code>scale9Grid</code> property is ignored).</p>
   * <p>For example, consider the following display object and a rectangle that is applied as the display object's <code>scale9Grid</code>:</p>
   * <table>
   * <tr>
   * <td><img src="http://help.adobe.com/en_US/FlashPlatform/reference/actionscript/3/images/scale9Grid-a.jpg" />
   * <p>The display object.</p></td>
   * <td><img src="http://help.adobe.com/en_US/FlashPlatform/reference/actionscript/3/images/scale9Grid-b.jpg" />
   * <p>The red rectangle shows the <code>scale9Grid</code>.</p></td></tr></table>
   * <p>When the display object is scaled or stretched, the objects within the rectangle scale normally, but the objects outside of the rectangle scale according to the <code>scale9Grid</code> rules:</p>
   * <table>
   * <tr>
   * <td>Scaled to 75%:</td>
   * <td><img src="http://help.adobe.com/en_US/FlashPlatform/reference/actionscript/3/images/scale9Grid-c.jpg" /></td></tr>
   * <tr>
   * <td>Scaled to 50%:</td>
   * <td><img src="http://help.adobe.com/en_US/FlashPlatform/reference/actionscript/3/images/scale9Grid-d.jpg" /></td></tr>
   * <tr>
   * <td>Scaled to 25%:</td>
   * <td><img src="http://help.adobe.com/en_US/FlashPlatform/reference/actionscript/3/images/scale9Grid-e.jpg" /></td></tr>
   * <tr>
   * <td>Stretched horizontally 150%:</td>
   * <td><img src="http://help.adobe.com/en_US/FlashPlatform/reference/actionscript/3/images/scale9Grid-f.jpg" /></td></tr></table>
   * <p>A common use for setting <code>scale9Grid</code> is to set up a display object to be used as a component, in which edge regions retain the same width when the component is scaled.</p>
   * @throws ArgumentError If you pass an invalid argument to the method.
   *
   * @see flash.geom.Rectangle
   *
   * @example The following code creates a Shape object with a rectangle drawn in its <code>graphics</code> property. The rectangle has a 20-pixel-thick line as the border and it is filled with a gradient. The timer event calls the <code>scale()</code> function, which scales the Shape object by adjusting the <code>scaleX</code> and <code>scaleY</code> properties. The <code>scale9Grid</code> applied to the Shape object prevents the rectangle's border line from scaling — only the gradient fill scales:
   * <listing>
   * import flash.display.Shape;
   * import flash.display.GradientType;
   * import flash.display.SpreadMethod;
   * import flash.display.InterpolationMethod;
   * import flash.geom.Matrix;
   * import flash.geom.Rectangle;
   * import flash.utils.Timer;
   * import flash.events.TimerEvent;
   *
   * var square:Shape = new Shape();
   * square.graphics.lineStyle(20, 0xFFCC00);
   * var gradientMatrix:Matrix = new Matrix();
   * gradientMatrix.createGradientBox(15, 15, Math.PI, 10, 10);
   * square.graphics.beginGradientFill(GradientType.RADIAL,
   *             [0xffff00, 0x0000ff],
   *             [100, 100],
   *             [0, 0xFF],
   *             gradientMatrix,
   *             SpreadMethod.REFLECT,
   *             InterpolationMethod.RGB,
   *             0.9);
   * square.graphics.drawRect(0, 0, 100, 100);
   *
   * var grid:Rectangle = new Rectangle(20, 20, 60, 60);
   * square.scale9Grid = grid ;
   *
   * addChild(square);
   *
   * var tim:Timer = new Timer(100);
   * tim.start();
   * tim.addEventListener(TimerEvent.TIMER, scale);
   *
   * var scaleFactor:Number = 1.01;
   *
   * function scale(event:TimerEvent):void {
   *     square.scaleX *= scaleFactor;
   *     square.scaleY *= scaleFactor;
   *
   *     if (square.scaleX > 2.0) {
   *         scaleFactor = 0.99;
   *     }
   *     if (square.scaleX &lt; 1.0) {
   *         scaleFactor = 1.01;
   *     }
   * }
   * </listing>
   */
  public function get scale9Grid():Rectangle {
    throw new Error('not implemented'); // TODO: implement!
  }

  /**
   * @private
   */
  public function set scale9Grid(value:Rectangle):void {
    throw new Error('not implemented'); // TODO: implement!
  }

  /**
   * Indicates the horizontal scale (percentage) of the object as applied from the registration point. The default registration point is (0,0). 1.0 equals 100% scale.
   * <p>Scaling the local coordinate system changes the <code>x</code> and <code>y</code> property values, which are defined in whole pixels.</p>
   * @example The following code creates a Sprite object with a rectangle drawn in its <code>graphics</code> property. When the user clicks the sprite, it scales by 10%:
   * <listing>
   * import flash.display.Sprite;
   * import flash.events.MouseEvent;
   *
   * var square:Sprite = new Sprite();
   * square.graphics.beginFill(0xFFCC00);
   * square.graphics.drawRect(0, 0, 100, 100);
   * addChild(square);
   *
   * square.addEventListener(MouseEvent.CLICK, scale);
   *
   * function scale(event:MouseEvent):void {
   *     square.scaleX *= 1.10;
   *     square.scaleY *= 1.10;
   * }
   * </listing>
   */
  public function get scaleX():Number {
    return _scaleX;
  }

  /**
   * @private
   */
  public function set scaleX(value:Number):void {
    if (_scaleX !== value) {
      _scaleX = value;
      _transformationMatrixCacheDirty = true;
    }
  }

  /**
   * Indicates the vertical scale (percentage) of an object as applied from the registration point of the object. The default registration point is (0,0). 1.0 is 100% scale.
   * <p>Scaling the local coordinate system changes the <code>x</code> and <code>y</code> property values, which are defined in whole pixels.</p>
   * @example The following code creates a Sprite object with a rectangle drawn in its <code>graphics</code> property. When the user clicks the sprite, it scales by 10%:
   * <listing>
   * import flash.display.Sprite;
   * import flash.events.MouseEvent;
   *
   * var square:Sprite = new Sprite();
   * square.graphics.beginFill(0xFFCC00);
   * square.graphics.drawRect(0, 0, 100, 100);
   * addChild(square);
   *
   * square.addEventListener(MouseEvent.CLICK, scale);
   *
   * function scale(event:MouseEvent):void {
   *     square.scaleX *= 1.10;
   *     square.scaleY *= 1.10;
   * }
   * </listing>
   */
  public function get scaleY():Number {
    return _scaleY;
  }

  /**
   * @private
   */
  public function set scaleY(value:Number):void {
    if (_scaleY !== value) {
      _scaleY = value;
      _transformationMatrixCacheDirty = true;
    }
  }

  /**
   * Indicates the depth scale (percentage) of an object as applied from the registration point of the object. The default registration point is (0,0). 1.0 is 100% scale.
   * <p>Scaling the local coordinate system changes the <code>x</code>, <code>y</code> and <code>z</code> property values, which are defined in whole pixels.</p>
   * @see #z
   *
   */
  public function get scaleZ():Number {
    throw new Error('not implemented'); // TODO: implement!
  }

  /**
   * @private
   */
  public function set scaleZ(value:Number):void {
    throw new Error('not implemented'); // TODO: implement!
  }

  /**
   * The scroll rectangle bounds of the display object. The display object is cropped to the size defined by the rectangle, and it scrolls within the rectangle when you change the <code>x</code> and <code>y</code> properties of the <code>scrollRect</code> object.
   * <p>The properties of the <code>scrollRect</code> Rectangle object use the display object's coordinate space and are scaled just like the overall display object. The corner bounds of the cropped window on the scrolling display object are the origin of the display object (0,0) and the point defined by the width and height of the rectangle. They are not centered around the origin, but use the origin to define the upper-left corner of the area. A scrolled display object always scrolls in whole pixel increments.</p>
   * <p>You can scroll an object left and right by setting the <code>x</code> property of the <code>scrollRect</code> Rectangle object. You can scroll an object up and down by setting the <code>y</code> property of the <code>scrollRect</code> Rectangle object. If the display object is rotated 90° and you scroll it left and right, the display object actually scrolls up and down.</p>
   * @see flash.geom.Rectangle
   *
   * @example The following example shows how the <code>scrollRect</code> property defines the scrolling area for a display object, <code>circle</code>. When you click the <code>circle</code> object, the <code>clicked()</code> event handler method adjusts the <code>y</code> property of the <code>scrollRect</code> property of the <code>circle</code> object, causing the object to scroll down:
   * <listing>
   * import flash.display.Sprite;
   * import flash.geom.Rectangle;
   * import flash.events.MouseEvent;
   *
   * var circle:Sprite = new Sprite();
   * circle.graphics.beginFill(0xFFCC00);
   * circle.graphics.drawCircle(200, 200, 200);
   * circle.scrollRect = new Rectangle(0, 0, 200, 200);
   * addChild(circle);
   *
   * circle.addEventListener(MouseEvent.CLICK, clicked);
   *
   * function clicked(event:MouseEvent):void {
   *     var rect:Rectangle = event.target.scrollRect;
   *     rect.y -= 5;
   *     event.target.scrollRect = rect;
   * }
   * </listing>
   */
  public function get scrollRect():Rectangle {
    throw new Error('not implemented'); // TODO: implement!
  }

  /**
   * @private
   */
  public function set scrollRect(value:Rectangle):void {
    throw new Error('not implemented'); // TODO: implement!
  }

  /**
   * The Stage of the display object. A Flash runtime application has only one Stage object. For example, you can create and load multiple display objects into the display list, and the <code>stage</code> property of each display object refers to the same Stage object (even if the display object belongs to a loaded SWF file).
   * <p>If a display object is not added to the display list, its <code>stage</code> property is set to <code>null</code>.</p>
   * @example The following code creates two TextField objects and uses the <code>width</code> property of the Stage object to position the text fields:
   * <listing>
   * import flash.text.TextField;
   *
   * var tf1:TextField = new TextField();
   * tf1.text = "Text Field 1";
   * tf1.border = true;
   * tf1.x = 10;
   * addChild(tf1);
   * tf1.width = tf1.stage.stageWidth / 2 - 10;
   *
   * var tf2:TextField = new TextField();
   * tf2.text = "Text Field 2";
   * tf2.border = true;
   * tf2.x = tf1.x + tf1.width + 5;
   * addChild(tf2);
   * tf2.width = tf2.stage.stageWidth / 2 - 10;
   *
   * trace(stage.stageWidth);
   * </listing>
   */
  public function get stage():Stage {
    return parent ? parent.stage : null;
  }

  /**
   * An object with properties pertaining to a display object's matrix, color transform, and pixel bounds. The specific properties — matrix, colorTransform, and three read-only properties (<code>concatenatedMatrix</code>, <code>concatenatedColorTransform</code>, and <code>pixelBounds</code>) — are described in the entry for the Transform class.
   * <p>Each of the transform object's properties is itself an object. This concept is important because the only way to set new values for the matrix or colorTransform objects is to create a new object and copy that object into the transform.matrix or transform.colorTransform property.</p>
   * <p>For example, to increase the <code>tx</code> value of a display object's matrix, you must make a copy of the entire matrix object, then copy the new object into the matrix property of the transform object:</p>
   * <pre><code>   var myMatrix:Matrix = myDisplayObject.transform.matrix;
   myMatrix.tx += 10;
   myDisplayObject.transform.matrix = myMatrix;
   </code></pre>
   * <p>You cannot directly set the <code>tx</code> property. The following code has no effect on <code>myDisplayObject</code>:</p>
   * <pre><code>   myDisplayObject.transform.matrix.tx += 10;
   </code></pre>
   * <p>You can also copy an entire transform object and assign it to another display object's transform property. For example, the following code copies the entire transform object from <code>myOldDisplayObj</code> to <code>myNewDisplayObj</code>:</p><code>myNewDisplayObj.transform = myOldDisplayObj.transform;</code>
   * <p>The resulting display object, <code>myNewDisplayObj</code>, now has the same values for its matrix, color transform, and pixel bounds as the old display object, <code>myOldDisplayObj</code>.</p>
   * <p>Note that AIR for TV devices use hardware acceleration, if it is available, for color transforms.</p>
   * @see flash.geom.Transform
   * @see http://help.adobe.com/en_US/as3/dev/WS5b3ccc516d4fbf351e63e3d118a9b90204-7ddb.html Using Matrix objects
   *
   * @example The following code sets up a <code>square</code> Sprite object. When the user clicks the sprite, the <code>transformer()</code> method adjusts the <code>colorTransform</code> and <code>matrix</code> properties of the <code>transform</code> property of the sprite:
   * <listing>
   * import flash.display.Sprite;
   * import flash.geom.ColorTransform;
   * import flash.geom.Matrix;
   * import flash.geom.Transform;
   * import flash.events.MouseEvent;
   *
   * var square:Sprite = new Sprite();
   * square.graphics.lineStyle(20, 0xFF2200);
   * square.graphics.beginFill(0x0000DD);
   * square.graphics.drawRect(0, 0, 100, 100);
   * addChild(square);
   *
   * var resultColorTransform:ColorTransform = new ColorTransform();
   * resultColorTransform.alphaMultiplier = 0.5;
   * resultColorTransform.redOffset = 155;
   * resultColorTransform.greenMultiplier = 0.5;
   *
   * var skewMatrix:Matrix = new Matrix(1, 1, 0, 1);
   *
   * square.addEventListener(MouseEvent.CLICK, transformer);
   *
   * function transformer(event:MouseEvent):void {
   *     var transformation:Transform = square.transform;
   *     var tempMatrix:Matrix = square.transform.matrix;
   *     tempMatrix.concat(skewMatrix);
   *     square.transform.colorTransform = resultColorTransform;
   *
   *     square.transform.matrix = tempMatrix;
   * }
   * </listing>
   */
  public function get transform():Transform {
    if (!_transform) {
      _transform = new Transform(this);
    }
    return _transform;
  }

  /**
   * @private
   */
  public function set transform(value:Transform):void {
    _transform = value;
  }

  internal function transformationMatrixTo(targetSpace:DisplayObject):Matrix {
    if (targetSpace == parent) {
      return _transformationMatrix; //.clone();
    }

    if (targetSpace.parent == this) {
      var result:Matrix = _transformationMatrix; //.clone();
      result.invert();
      return result;
    }

    //------------------------------------------------

    var resultMatrix:Matrix = new Matrix();
    var resultObject:DisplayObject = this;

    while(resultObject != targetSpace && resultObject.parent != null) {
      resultMatrix.concat(resultObject._transformationMatrix);
      resultObject = resultObject.parent;
    }

    if (targetSpace == null && resultObject != null) {
      resultMatrix.concat(resultObject._transformationMatrix);
      resultObject = null;
    }

    if (resultObject == targetSpace)
      return resultMatrix;

    //------------------------------------------------

    var targetMatrix:Matrix = new Matrix();
    var targetObject:DisplayObject = targetSpace;

    while(targetObject != this && targetObject.parent != null) {
      targetMatrix.concat(targetObject._transformationMatrix);
      targetObject = targetObject.parent;
    }

    targetMatrix.invert();

    if (targetObject == this)
      return targetMatrix;

    if (targetObject != resultObject) {
      //throw new IllegalOperationError
      trace("Error #9001: The supplied DisplayObject has no relationship to the caller.");
    }

    resultMatrix.concat(targetMatrix);

    return resultMatrix;
  }
  
  /**
   * Whether or not the display object is visible. Display objects that are not visible are disabled. For example, if <code>visible=false</code> for an InteractiveObject instance, it cannot be clicked.
   * @example The following code uses a Timer object to call a function that periodically changes the <code>visible</code> property of a display object, resulting in a blinking effect:
   * <listing>
   * import flash.text.TextField;
   * import flash.utils.Timer;
   * import flash.events.TimerEvent;
   *
   * var tf:TextField = new TextField();
   * tf.text = "Hello.";
   * addChild(tf);
   *
   * var tim:Timer = new Timer(250);
   * tim.start();
   * tim.addEventListener(TimerEvent.TIMER, blinker);
   *
   * function blinker(event:TimerEvent):void {
   *     tf.visible = !tf.visible;
   * }
   * </listing>
   */
  public function get visible():Boolean {
    return _visible;
  }

  /**
   * @private
   */
  public function set visible(value:Boolean):void {
    _visible = value;
  }

  /**
   * Indicates the width of the display object, in pixels. The width is calculated based on the bounds of the content of the display object. When you set the <code>width</code> property, the <code>scaleX</code> property is adjusted accordingly, as shown in the following code:
   * <listing>
   *     var rect:Shape = new Shape();
   *     rect.graphics.beginFill(0xFF0000);
   *     rect.graphics.drawRect(0, 0, 100, 100);
   *     trace(rect.scaleX) // 1;
   *     rect.width = 200;
   *     trace(rect.scaleX) // 2;</listing>
   * <p>Except for TextField and Video objects, a display object with no content (such as an empty sprite) has a width of 0, even if you try to set <code>width</code> to a different value.</p>
   * @example The following code sets up a <code>square</code> Sprite object. When the user clicks the sprite, the <code>widen()</code> method increases the <code>width</code> property of the sprite:
   * <listing>
   * import flash.display.Sprite;
   * import flash.events.MouseEvent;
   *
   * var square:Sprite = new Sprite();
   * square.graphics.beginFill(0xFF0000);
   * square.graphics.drawRect(0, 0, 100, 100);
   * addChild(square);
   *
   * square.addEventListener(MouseEvent.CLICK, widen);
   *
   * function widen(event:MouseEvent):void {
   *     square.width += 10;
   * }
   * </listing>
   */
  public function get width():Number {
    return getBoundsTransformed(_transformationMatrix).width;
  }

  private static const ARC_TO_RAD_FACTOR:int = Math.PI / 180;

  public function get _transformationMatrix():Matrix {
    if (_transformationMatrixCacheDirty) {
      _transformationMatrixCacheDirty = false;
      if (_rotation === 0) {
        _transformationMatrixCache.setTo(_scaleX, 0, 0, _scaleY, _x, _y);
      } else {
//      var m:Matrix = new Matrix();
//      m.scale(_scaleX, _scaleY);
//      m.rotate(_rotation);
//      m.translate(_x, _y);
//      return m;
        var rad:Number = _rotation * ARC_TO_RAD_FACTOR;
        var cos:Number = Math.cos(rad);
        var sin:Number = Math.sin(rad);
        _transformationMatrixCache.setTo(_scaleX * cos, _scaleX * sin, - _scaleY * sin, _scaleY * cos, _x, _y);
      }
    }
    return _transformationMatrixCache;
  }

  /**
   * @private
   */
  public function set width(value:Number):void {
    scaleX = 1;
    var normalWidth:Number = width;
    scaleX = normalWidth ? value / normalWidth : 1;
  }

  /**
   * Indicates the <i>x</i> coordinate of the DisplayObject instance relative to the local coordinates of the parent DisplayObjectContainer. If the object is inside a DisplayObjectContainer that has transformations, it is in the local coordinate system of the enclosing DisplayObjectContainer. Thus, for a DisplayObjectContainer rotated 90° counterclockwise, the DisplayObjectContainer's children inherit a coordinate system that is rotated 90° counterclockwise. The object's coordinates refer to the registration point position.
   * @example The following code sets up a <code>circle</code> Sprite object. A Timer object is used to change the <code>x</code> property of the sprite every 50 milliseconds:
   * <listing>
   * import flash.display.Sprite;
   * import flash.utils.Timer;
   * import flash.events.TimerEvent;
   *
   * var circle:Sprite = new Sprite();
   * circle.graphics.beginFill(0xFF0000);
   * circle.graphics.drawCircle(100, 100, 100);
   * addChild(circle);
   *
   * var tim:Timer = new Timer(50);
   * tim.start();
   * tim.addEventListener(TimerEvent.TIMER, bounce);
   *
   * var xInc:Number = 2;
   *
   * function bounce(event:TimerEvent):void {
   *     circle.x += xInc;
   *     if (circle.x > circle.width) {
   *         xInc = -2;
   *     }
   *     if (circle.x &lt; 0) {
   *         xInc = 2;
   *     }
   * }
   * </listing>
   */
  public function get x():Number {
    return _x;
  }

  /**
   * @private
   */
  public function set x(value:Number):void {
    if (_x !== value) {
      _x = value;
      _transformationMatrixCacheDirty = true;
    }
  }

  /**
   * Indicates the <i>y</i> coordinate of the DisplayObject instance relative to the local coordinates of the parent DisplayObjectContainer. If the object is inside a DisplayObjectContainer that has transformations, it is in the local coordinate system of the enclosing DisplayObjectContainer. Thus, for a DisplayObjectContainer rotated 90° counterclockwise, the DisplayObjectContainer's children inherit a coordinate system that is rotated 90° counterclockwise. The object's coordinates refer to the registration point position.
   * @example The following code creates two TextField objects and adjusts the <code>height</code> property of each based on the <code>textHeight</code> property of each; it also positions the second text field by setting its <code>y</code> property:
   * <listing>
   * import flash.text.TextField;
   *
   * var tf1:TextField = new TextField();
   * tf1.text = "Text Field 1";
   * tf1.border = true;
   * tf1.wordWrap = true;
   * tf1.width = 40;
   * tf1.height = tf1.textHeight + 5;
   * addChild(tf1);
   *
   * var tf2:TextField = new TextField();
   * tf2.text = "Text Field 2";
   * tf2.border = true;
   * tf2.wordWrap = true;
   * tf2.width = 40;
   * tf2.height = tf2.textHeight + 5;
   * tf2.y = tf1.y + tf1.height + 5;
   * addChild(tf2);
   * </listing>
   */
  public function get y():Number {
    return _y;
  }

  /**
   * @private
   */
  public function set y(value:Number):void {
    if (_y !== value) {
      _y = value;
      _transformationMatrixCacheDirty = true;
    }
  }

  /**
   * Indicates the z coordinate position along the z-axis of the DisplayObject instance relative to the 3D parent container. The z property is used for 3D coordinates, not screen or pixel coordinates.
   * <p>When you set a <code>z</code> property for a display object to something other than the default value of <code>0</code>, a corresponding Matrix3D object is automatically created. for adjusting a display object's position and orientation in three dimensions. When working with the z-axis, the existing behavior of x and y properties changes from screen or pixel coordinates to positions relative to the 3D parent container.</p>
   * <p>For example, a child of the <code>_root</code> at position x = 100, y = 100, z = 200 is not drawn at pixel location (100,100). The child is drawn wherever the 3D projection calculation puts it. The calculation is:</p>
   * <p><code>(x*cameraFocalLength/cameraRelativeZPosition, y*cameraFocalLength/cameraRelativeZPosition)</code></p>
   * @see flash.geom.PerspectiveProjection
   * @see flash.geom.Matrix3D
   * @see #transform
   *
   * @example This example draws two ellipses and has them go back and forth (down and up the <code>z</code> axis) toward the vanishing point. One ellipse is set to move faster than the other.
   * <listing>
   * package {
   *     import flash.display.MovieClip;
   *     import flash.display.Shape;
   *     import flash.display.Graphics;
   *     import flash.events.Event;
   *     import flash.geom.*;
   *
   *     public class ZAxisExample1 extends MovieClip {
   *         private var ellipse1Back:int = 1;
   *         private var ellipse2Back:int = 1;
   *         private var depth:int = 1000;
   *
   *         public function ZAxisExample1():void {
   *
   *             var ellipse1 = drawEllipse((this.stage.stageWidth / 2) - 100,
   *                                       (this.stage.stageHeight / 2), 100, 80, 10);
   *             var ellipse2 = drawEllipse((this.stage.stageWidth / 2) + 100,
   *                                       (this.stage.stageHeight / 2), 100, 80, 300);
   *
   *             this.addChild(ellipse1);
   *             this.addChild(ellipse2);
   *
   *             ellipse1.addEventListener(Event.ENTER_FRAME, ellipse1FrameHandler);
   *             ellipse2.addEventListener(Event.ENTER_FRAME, ellipse2FrameHandler);
   *         }
   *
   *         private function drawEllipse(x:Number, y:Number, w:Number, h:Number, z:Number):Shape {
   *             var s:Shape = new Shape();
   *             s.z = z;
   *             s.graphics.beginFill(0xFF0000);
   *             s.graphics.lineStyle(2);
   *             s.graphics.drawEllipse(x, y, w, h);
   *             s.graphics.endFill();
   *             return s;
   *         }
   *
   *         private function ellipse1FrameHandler(e:Event):void {
   *             ellipse1Back = setDepth(e, ellipse1Back);
   *             e.currentTarget.z += ellipse1Back * 10;
   *         }
   *
   *         private function ellipse2FrameHandler(e:Event):void {
   *             ellipse2Back = setDepth(e, ellipse2Back);
   *             e.currentTarget.z += ellipse2Back * 20;
   *         }
   *
   *         private function setDepth(e:Event, d:int):int {
   *             if(e.currentTarget.z > depth) {
   *                 e.currentTarget.z = depth;
   *                 d = -1;
   *             }else if (e.currentTarget.z &lt;  0) {
   *                 e.currentTarget.z = 0;
   *                 d = 1;
   *             }
   *             return d;
   *         }
   *     }
   * }
   * </listing>
   */
  public function get z():Number {
    throw new Error('not implemented'); // TODO: implement!
  }

  /**
   * @private
   */
  public function set z(value:Number):void {
    throw new Error('not implemented'); // TODO: implement!
  }

  protected function getBoundsTransformed(matrix:Matrix, resultRectangle:Rectangle = null):Rectangle {
    if (resultRectangle) {
      resultRectangle.width = 0;
      resultRectangle.height = 0;
    } else {
      resultRectangle = new Rectangle();
    }
    resultRectangle.x = matrix.tx;
    resultRectangle.y = matrix.ty;
    return resultRectangle;
  }

  /**
   * Returns a rectangle that defines the area of the display object relative to the coordinate system of the <code>targetCoordinateSpace</code> object. Consider the following code, which shows how the rectangle returned can vary depending on the <code>targetCoordinateSpace</code> parameter that you pass to the method:
   * <listing>
   *      var container:Sprite = new Sprite();
   *      container.x = 100;
   *      container.y = 100;
   *      this.addChild(container);
   *      var contents:Shape = new Shape();
   *      contents.graphics.drawCircle(0,0,100);
   *      container.addChild(contents);
   *      trace(contents.getBounds(container));
   *       // (x=-100, y=-100, w=200, h=200)
   *      trace(contents.getBounds(this));
   *       // (x=0, y=0, w=200, h=200)
   *     </listing>
   * <p><b>Note:</b> Use the <code>localToGlobal()</code> and <code>globalToLocal()</code> methods to convert the display object's local coordinates to display coordinates, or display coordinates to local coordinates, respectively.</p>
   * <p>The <code>getBounds()</code> method is similar to the <code>getRect()</code> method; however, the Rectangle returned by the <code>getBounds()</code> method includes any strokes on shapes, whereas the Rectangle returned by the <code>getRect()</code> method does not. For an example, see the description of the <code>getRect()</code> method.</p>
   * @param targetCoordinateSpace The display object that defines the coordinate system to use.
   *
   * @return The rectangle that defines the area of the display object relative to the <code>targetCoordinateSpace</code> object's coordinate system.
   *
   * @see #getRect()
   * @see #globalToLocal()
   * @see #localToGlobal()
   *
   */
  public function getBounds(targetCoordinateSpace:DisplayObject):Rectangle {
    var matrix:Matrix = targetCoordinateSpace == null ? _transformationMatrix : transformationMatrixTo(targetCoordinateSpace);

    return getBoundsTransformed(matrix);
  }

  /**
   * Returns a rectangle that defines the boundary of the display object, based on the coordinate system defined by the <code>targetCoordinateSpace</code> parameter, excluding any strokes on shapes. The values that the <code>getRect()</code> method returns are the same or smaller than those returned by the <code>getBounds()</code> method.
   * <p><b>Note:</b> Use <code>localToGlobal()</code> and <code>globalToLocal()</code> methods to convert the display object's local coordinates to Stage coordinates, or Stage coordinates to local coordinates, respectively.</p>
   * @param targetCoordinateSpace The display object that defines the coordinate system to use.
   *
   * @return The rectangle that defines the area of the display object relative to the <code>targetCoordinateSpace</code> object's coordinate system.
   *
   * @see #getBounds()
   *
   * @example The following example shows how the <code>getBounds()</code> method can return a larger rectangle than the <code>getRect()</code> method does, because of the additional area taken up by strokes. In this case, the <code>triangle</code> sprite includes extra strokes because of the <code>width</code> and <code>jointStyle</code> parameters of the <code>lineStyle()</code> method. The <code>trace()</code> output (in the last two lines) shows the differences between the <code>getRect()</code> and <code>getBounds()</code> rectangles:
   * <listing>
   * import flash.display.CapsStyle;
   * import flash.display.JointStyle;
   * import flash.display.LineScaleMode;
   * import flash.display.Sprite;
   * import flash.geom.Rectangle;
   *
   * var triangle:Sprite = new Sprite();
   * var color:uint = 0xFF0044;
   * var width:Number = 20;
   * var alpha:Number = 1.0;
   * var pixelHinting:Boolean = true;
   * var scaleMode:String = LineScaleMode.NORMAL;
   * var caps:String = CapsStyle.SQUARE;
   * var joints:String = JointStyle.MITER;
   * triangle.graphics.lineStyle(width, color, alpha, pixelHinting, scaleMode, caps, joints);
   *
   * var triangleSide:Number = 100;
   * triangle.graphics.moveTo(0, 0);
   * triangle.graphics.lineTo(0, triangleSide);
   * triangle.graphics.lineTo(triangleSide, triangleSide);
   * triangle.graphics.lineTo(0, 0);
   *
   * addChild(triangle);
   *
   * trace(triangle.getBounds(this)); // (x=-10, y=-24.1, w=134.10000000000002, h=134.1)
   * trace(triangle.getRect(this));     // (x=0, y=0, w=100, h=100)
   * </listing>
   */
  public function getRect(targetCoordinateSpace:DisplayObject):Rectangle {
    throw new Error('not implemented'); // TODO: implement!
  }

  /**
   * Converts the <code>point</code> object from the Stage (global) coordinates to the display object's (local) coordinates.
   * <p>To use this method, first create an instance of the Point class. The <i>x</i> and <i>y</i> values that you assign represent global coordinates because they relate to the origin (0,0) of the main display area. Then pass the Point instance as the parameter to the <code>globalToLocal()</code> method. The method returns a new Point object with <i>x</i> and <i>y</i> values that relate to the origin of the display object instead of the origin of the Stage.</p>
   * @param point An object created with the Point class. The Point object specifies the <i>x</i> and <i>y</i> coordinates as properties.
   *
   * @return A Point object with coordinates relative to the display object.
   *
   * @see #localToGlobal()
   * @see flash.geom.Point
   *
   * @example The following code creates a Shape object and shows the result of calling the <code>hitTestPoint()</code> method, using different points as parameters. The <code>globalToLocal()</code> method converts the point from Stage coordinates to the coordinate space of the shape:
   * <listing>
   * import flash.display.Shape;
   * import flash.geom.Point;
   *
   * var circle:Shape = new Shape();
   * circle.graphics.beginFill(0x0000FF);
   * circle.graphics.drawCircle(40, 40, 40);
   * circle.x = 10;
   * addChild(circle);
   *
   * var point1:Point = new Point(0, 0);
   * trace(circle.hitTestPoint(point1.x, point1.y, true)); // false
   * trace(circle.hitTestPoint(point1.x, point1.y, false)); // false
   * trace(circle.globalToLocal(point1)); // [x=-10, y=0]
   *
   * var point2:Point = new Point(10, 1);
   * trace(circle.hitTestPoint(point2.x, point2.y, true)); // false
   * trace(circle.hitTestPoint(point2.x, point2.y, false)); // true
   * trace(circle.globalToLocal(point2)); // [x=0, y=1]
   *
   * var point3:Point = new Point(30, 20);
   * trace(circle.hitTestPoint(point3.x, point3.y, true)); // true
   * trace(circle.hitTestPoint(point3.x, point3.y, false)); // true
   * trace(circle.globalToLocal(point3)); // [x=20, y=20]
   * </listing>
   */
  public function globalToLocal(point:Point):Point {
    _tmpMatrix.identity();

    for (var displayObject:DisplayObject = this; displayObject != null; displayObject = displayObject.parent) {
      _tmpMatrix.concat(displayObject._transformationMatrix);
    }

    _tmpMatrix.invert();

    return _tmpMatrix.transformPoint(point);
  }

  /**
   * Converts a two-dimensional point from the Stage (global) coordinates to a three-dimensional display object's (local) coordinates.
   * <p>To use this method, first create an instance of the Point class. The x and y values that you assign to the Point object represent global coordinates because they are relative to the origin (0,0) of the main display area. Then pass the Point object to the <code>globalToLocal3D()</code> method as the <code>point</code> parameter. The method returns three-dimensional coordinates as a Vector3D object containing <code>x</code>, <code>y</code>, and <code>z</code> values that are relative to the origin of the three-dimensional display object.</p>
   * @param point A two dimensional Point object representing global x and y coordinates.
   *
   * @return A Vector3D object with coordinates relative to the three-dimensional display object.
   *
   */
  public function globalToLocal3D(point:Point):Vector3D {
    throw new Error('not implemented'); // TODO: implement!
  }

  /**
   * Evaluates the bounding box of the display object to see if it overlaps or intersects with the bounding box of the <code>obj</code> display object.
   * @param obj The display object to test against.
   *
   * @return <code>true</code> if the bounding boxes of the display objects intersect; <code>false</code> if not.
   *
   * @example The following code creates three Shape objects and shows the result of calling the <code>hitTestObject()</code> method. Note that although circle2 and circle3 do not overlap, their bounding boxes do. Thus, the hit test of circle2 and circle3 returns <code>true</code>.
   * <listing>
   * import flash.display.Shape;
   *
   * var circle1:Shape = new Shape();
   * circle1.graphics.beginFill(0x0000FF);
   * circle1.graphics.drawCircle(40, 40, 40);
   * addChild(circle1);
   *
   * var circle2:Shape = new Shape();
   * circle2.graphics.beginFill(0x00FF00);
   * circle2.graphics.drawCircle(40, 40, 40);
   * circle2.x = 50;
   * addChild(circle2);
   *
   * var circle3:Shape = new Shape();
   * circle3.graphics.beginFill(0xFF0000);
   * circle3.graphics.drawCircle(40, 40, 40);
   * circle3.x = 100;
   * circle3.y = 67;
   * addChild(circle3);
   *
   * trace(circle1.hitTestObject(circle2)); // true
   * trace(circle1.hitTestObject(circle3)); // false
   * trace(circle2.hitTestObject(circle3)); // true
   * </listing>
   */
  public function hitTestObject(obj:DisplayObject):Boolean {
    throw new Error('not implemented'); // TODO: implement!
  }

  /**
   * Evaluates the display object to see if it overlaps or intersects with the point specified by the <code>x</code> and <code>y</code> parameters. The <code>x</code> and <code>y</code> parameters specify a point in the coordinate space of the Stage, not the display object container that contains the display object (unless that display object container is the Stage).
   * @param x The <i>x</i> coordinate to test against this object.
   * @param y The <i>y</i> coordinate to test against this object.
   * @param shapeFlag Whether to check against the actual pixels of the object (<code>true</code>) or the bounding box (<code>false</code>).
   *
   * @return <code>true</code> if the display object overlaps or intersects with the specified point; <code>false</code> otherwise.
   *
   * @see #opaqueBackground
   *
   * @example The following code creates a Shape object and shows the result of calling the <code>hitTestPoint()</code> method, using different points as parameters. The <code>globalToLocal()</code> method converts the point from Stage coordinates to the coordinate space of the shape:
   * <listing>
   * import flash.display.Shape;
   * import flash.geom.Point;
   *
   * var circle:Shape = new Shape();
   * circle.graphics.beginFill(0x0000FF);
   * circle.graphics.drawCircle(40, 40, 40);
   * circle.x = 10;
   * addChild(circle);
   *
   * var point1:Point = new Point(0, 0);
   * trace(circle.hitTestPoint(point1.x, point1.y, true)); // false
   * trace(circle.hitTestPoint(point1.x, point1.y, false)); // false
   * trace(circle.globalToLocal(point1)); // [x=-10, y=0]
   *
   * var point2:Point = new Point(10, 1);
   * trace(circle.hitTestPoint(point2.x, point2.y, true)); // false
   * trace(circle.hitTestPoint(point2.x, point2.y, false)); // true
   * trace(circle.globalToLocal(point2)); // [x=0, y=1]
   *
   * var point3:Point = new Point(30, 20);
   * trace(circle.hitTestPoint(point3.x, point3.y, true)); // true
   * trace(circle.hitTestPoint(point3.x, point3.y, false)); // true
   * trace(circle.globalToLocal(point3)); // [x=20, y=20]
   * </listing>
   */
  public function hitTestPoint(x:Number, y:Number, shapeFlag:Boolean = false):Boolean {
    if (stage == null) {
      return false;
    }

    var matrix:Matrix  = transformationMatrixTo(stage);
    matrix.invert();

    var point:Point = matrix.transformPoint(new Point(x, y));

    return getBoundsTransformed(Matrix.IDENTITY).contains(point.x, point.y);
  }

  /**
   * Converts a three-dimensional point of the three-dimensional display object's (local) coordinates to a two-dimensional point in the Stage (global) coordinates.
   * <p>For example, you can only use two-dimensional coordinates (x,y) to draw with the <code>display.Graphics</code> methods. To draw a three-dimensional object, you need to map the three-dimensional coordinates of a display object to two-dimensional coordinates. First, create an instance of the Vector3D class that holds the x-, y-, and z- coordinates of the three-dimensional display object. Then pass the Vector3D object to the <code>local3DToGlobal()</code> method as the <code>point3d</code> parameter. The method returns a two-dimensional Point object that can be used with the Graphics API to draw the three-dimensional object.</p>
   * @param point3d A Vector3D object containing either a three-dimensional point or the coordinates of the three-dimensional display object.
   *
   * @return A two-dimensional point representing a three-dimensional point in two-dimensional space.
   *
   * @example This example draws a simple three-dimensional cube in a two dimensional space using <code>display.Graphics</code> methods. The location of <code>this</code> display object is offset, so the cube's registration point is in its center. A vector of Vector3D objects holds the cube's three dimensional coordinates. The top of the cube is draw first, the bottom is drawn second, and then the top and bottom four corners are connected. You need to add the cube to the display object container before drawing the cube in order to use the <code>local3DToGlobal()</code> method.
   * <listing>
   * package {
   *     import flash.display.MovieClip;
   *     import flash.display.Sprite;
   *     import flash.display.Graphics;
   *     import flash.geom.*;
   *
   *     public class Local3DToGlobalExample extends MovieClip {
   *         private var myCube:Sprite = new Sprite();
   *         private var v8:Vector.&lt;Vector3D> = new Vector.&lt;Vector3D>(8);
   *
   *         public function Local3DToGlobalExample():void {
   *             this.x = -(this.stage.stageWidth / 2);
   *             this.y = -(this.stage.stageWidth / 2);
   *
   *             v8[0] = new Vector3D(-40,-40,-40);
   *             v8[1] = new Vector3D(40,-40,-40);
   *             v8[2] = new Vector3D(40,-40,40);
   *             v8[3] = new Vector3D(-40,-40,40);
   *             v8[4] = new Vector3D(-40,100,-40);
   *             v8[5] = new Vector3D(40,100,-40);
   *             v8[6] = new Vector3D(40,100,40);
   *             v8[7] = new Vector3D(-40,100,40);
   *
   *             myCube.x = (this.stage.stageWidth / 2);
   *             myCube.y = (this.stage.stageWidth / 2);
   *             myCube.z = 1;
   *             addChild(myCube);
   *
   *             Cube();
   *         }
   *
   *         private function Cube():void {
   *             var ps:Point = new Point(0,0);
   *
   *             myCube.graphics.lineStyle(2,0xFF0000);
   *
   *             ps = myCube.local3DToGlobal(v8[0]);
   *             myCube.graphics.moveTo(ps.x, ps.y);
   *             ps = myCube.local3DToGlobal(v8[1]);
   *             myCube.graphics.lineTo(ps.x, ps.y);
   *             ps = myCube.local3DToGlobal(v8[2]);
   *             myCube.graphics.lineTo(ps.x, ps.y);
   *             ps = myCube.local3DToGlobal(v8[3]);
   *             myCube.graphics.lineTo(ps.x, ps.y);
   *             ps = myCube.local3DToGlobal(v8[0]);
   *             myCube.graphics.lineTo(ps.x, ps.y);
   *
   *             ps = myCube.local3DToGlobal(v8[4]);
   *             myCube.graphics.moveTo(ps.x, ps.y);
   *             ps = myCube.local3DToGlobal(v8[5]);
   *             myCube.graphics.lineTo(ps.x, ps.y);
   *             ps = myCube.local3DToGlobal(v8[6]);
   *             myCube.graphics.lineTo(ps.x, ps.y);
   *             ps = myCube.local3DToGlobal(v8[7]);
   *             myCube.graphics.lineTo(ps.x, ps.y);
   *             ps = myCube.local3DToGlobal(v8[4]);
   *             myCube.graphics.lineTo(ps.x, ps.y);
   *
   *             ps = myCube.local3DToGlobal(v8[0]);
   *             myCube.graphics.moveTo(ps.x, ps.y);
   *             ps = myCube.local3DToGlobal(v8[4]);
   *             myCube.graphics.lineTo(ps.x, ps.y);
   *             ps = myCube.local3DToGlobal(v8[1]);
   *             myCube.graphics.moveTo(ps.x, ps.y);
   *             ps = myCube.local3DToGlobal(v8[5]);
   *             myCube.graphics.lineTo(ps.x, ps.y);
   *             ps = myCube.local3DToGlobal(v8[2]);
   *             myCube.graphics.moveTo(ps.x, ps.y);
   *             ps = myCube.local3DToGlobal(v8[6]);
   *             myCube.graphics.lineTo(ps.x, ps.y);
   *             ps = myCube.local3DToGlobal(v8[3]);
   *             myCube.graphics.moveTo(ps.x, ps.y);
   *             ps = myCube.local3DToGlobal(v8[7]);
   *             myCube.graphics.lineTo(ps.x, ps.y);
   *         }
   *     }
   * }
   * </listing>
   */
  public function local3DToGlobal(point3d:Vector3D):Point {
    throw new Error('not implemented'); // TODO: implement!
  }

  /**
   * Converts the <code>point</code> object from the display object's (local) coordinates to the Stage (global) coordinates.
   * <p>This method allows you to convert any given <i>x</i> and <i>y</i> coordinates from values that are relative to the origin (0,0) of a specific display object (local coordinates) to values that are relative to the origin of the Stage (global coordinates).</p>
   * <p>To use this method, first create an instance of the Point class. The <i>x</i> and <i>y</i> values that you assign represent local coordinates because they relate to the origin of the display object.</p>
   * <p>You then pass the Point instance that you created as the parameter to the <code>localToGlobal()</code> method. The method returns a new Point object with <i>x</i> and <i>y</i> values that relate to the origin of the Stage instead of the origin of the display object.</p>
   * @param point The name or identifier of a point created with the Point class, specifying the <i>x</i> and <i>y</i> coordinates as properties.
   *
   * @return A Point object with coordinates relative to the Stage.
   *
   * @see #globalToLocal()
   * @see flash.geom.Point
   * @see http://help.adobe.com/en_US/as3/dev/WS5b3ccc516d4fbf351e63e3d118a9b90204-7dca.html Using Point objects
   *
   * @example The following code creates a Sprite object. The <code>mouseX</code> and <code>mouseY</code> properties of the sprite are in the coordinate space of the display object. This code uses the <code>localToGlobal()</code> method to translate these properties to the global (Stage) coordinates:
   * <listing>
   * import flash.display.Sprite;
   * import flash.events.MouseEvent;
   * import flash.geom.Point;
   *
   * var square:Sprite = new Sprite();
   * square.graphics.beginFill(0xFFCC00);
   * square.graphics.drawRect(0, 0, 100, 100);
   * square.x = 100;
   * square.y = 200;
   *
   * addChild(square);
   *
   * square.addEventListener(MouseEvent.CLICK, traceCoordinates)
   *
   * function traceCoordinates(event:MouseEvent):void {
   *     var clickPoint:Point = new Point(square.mouseX, square.mouseY);
   *     trace("display object coordinates:", clickPoint);
   *     trace("stage coordinates:", square.localToGlobal(clickPoint));
   * }
   * </listing>
   */
  public function localToGlobal(point:Point):Point {
    _tmpMatrix.identity();

    for (var displayObject:DisplayObject = this; displayObject != null; displayObject = displayObject.parent) {
      _tmpMatrix.concat(displayObject._transformationMatrix);
    }

    return _tmpMatrix.transformPoint(point);
  }

  // ************************** Jangaroo part **************************

  /**
   * @private
   */
  protected function setParent(parent:DisplayObjectContainer):void {
    this['parent'] = parent;
  }

  /**
   * @private
   */
  public function broadcastEvent(event:flash.events.Event):Boolean {
    return dispatchEvent(event);
  }

  /**
   * @private
   */
  override public function createAncestorChain():Array {
    var arr:Array = [];

    var p:DisplayObjectContainer = this.parent;
    while (p != null) {
      arr.push(p);
      p = p.parent;
    }

    return arr;
  }

  /**
   * @private
   */
  public function DisplayObject() {
    super();
    _filters = [];
    _blendMode = BlendMode.NORMAL;
    _transformationMatrixCache = new Matrix();
  }

  private var _transformationMatrixCacheDirty:Boolean = true;
  private var _transformationMatrixCache:Matrix;
  private var _tmpMatrix:Matrix; // for internal use only to minimize memory allocations.
  private var _x:Number = 0, _y:Number = 0;
  private var _scaleX:Number = 1;
  private var _scaleY:Number = 1;
  private var _transform:Transform;
  private var _rotation:Number = 0;
  private var _visible:Boolean = true;
  private var _alpha:Number = 1;
  private var _filters:Array;
  private var _cacheAsBitmap:Boolean;
  private var _mask:DisplayObject;
  private var _blendMode:String;

  public function _render(renderState:RenderState):void {
    // empty / abstract
  }
}
}