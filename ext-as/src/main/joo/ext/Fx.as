package ext {
/**
 * A class to provide basic animation and visual effects support. <b>Note:</b> This class is automatically applied to the <a href="Ext.Element.html">Ext.Element</a> interface when included, so all effects calls should be performed via <a href="Ext.Element.html">Ext.Element</a>. Conversely, since the effects are not actually defined in <a href="Ext.Element.html">Ext.Element</a>, Ext.Fx <b>must</b> be <a href="output/Ext.html#Ext-enableFx">included</a> in order for the Element effects to work.
 <br/><p style="font-weight: bold"><u>Method Chaining</u></p><p>It is important to note that although the Fx methods and many non-Fx Element methods support "method chaining" in that they return the Element object itself as the method return value, it is not always possible to mix the two in a single method chain. The Fx methods use an internal effects queue so that each effect can be properly timed and sequenced. Non-Fx methods, on the other hand, have no such internal queueing and will always execute immediately. For this reason, while it may be possible to mix certain Fx and non-Fx method calls in a single chain, it may not always provide the expected results and should be done with care. Also see <tt><a href="output/Ext.Fx.html#Ext.Fx-callback">callback</a></tt>.</p><br/><p style="font-weight: bold"><u>Anchor Options for Motion Effects</u></p><p>Motion effects support 8-way anchoring, meaning that you can choose one of 8 different anchor points on the Element that will serve as either the start or end point of the animation. Following are all of the supported anchor positions:</p><pre>Value  Description
 -----  -----------------------------
 tl     The top left corner
 t      The center of the top edge
 tr     The top right corner
 l      The center of the left edge
 r      The center of the right edge
 bl     The bottom left corner
 b      The center of the bottom edge
 br     The bottom right corner
 </pre><b>Note</b>: some Fx methods accept specific custom config parameters. The options shown in the Config Options section below are common options that can be passed to any Fx method unless otherwise noted.
 *
 * <p>Copyright &#169; 2011 Sencha Inc.</p>
 *

 * @see ext.config.fx
 * @see http://docs.sencha.com/ext-js/3-4/#!/api/Ext.Fx Sencha Docs Ext JS 3.4
 */
[Native(amd="ext-as.module", "Fx")]
public class Fx
 {

  /**
   *
   *
   * @see ext.config.fx
   */
  public function Fx() {
    super();
  }

  /**
   A css class to apply after the effect
   */
  public native function get afterCls():String;

  /**
   A style specification string, e.g. <tt>"width:100px"</tt>, or an object in the form <tt>{width:"100px"}</tt>, or a function which returns such a specification that will be applied to the Element after the effect finishes.
   */
  public native function get afterStyle():*;

  /**
   Whether the effect should block other effects from queueing while it runs
   */
  public native function get block():Boolean;

  /**
   Whether to allow subsequently-queued effects to run at the same time as the current effect, or to ensure that they run in sequence
   */
  public native function get concurrent():Boolean;

  /**
   The length of time (in seconds) that the effect should last
   */
  public native function get duration():Number;

  /**
   A valid Ext.lib.Easing value for the effect:<br/><br/><div class="mdetail-params"><ul><li><b><tt>backBoth</tt></b></li><li><b><tt>backIn</tt></b></li><li><b><tt>backOut</tt></b></li><li><b><tt>bounceBoth</tt></b></li><li><b><tt>bounceIn</tt></b></li><li><b><tt>bounceOut</tt></b></li><li><b><tt>easeBoth</tt></b></li><li><b><tt>easeBothStrong</tt></b></li><li><b><tt>easeIn</tt></b></li><li><b><tt>easeInStrong</tt></b></li><li><b><tt>easeNone</tt></b></li><li><b><tt>easeOut</tt></b></li><li><b><tt>easeOutStrong</tt></b></li><li><b><tt>elasticBoth</tt></b></li><li><b><tt>elasticIn</tt></b></li><li><b><tt>elasticOut</tt></b></li></ul></div>
   */
  public native function get easing():String;

  /**
   Only applicable for <a href="output/Ext.Fx.html#Ext.Fx-fadeIn">fadeIn</a> or <a href="output/Ext.Fx.html#Ext.Fx-fadeOut">fadeOut</a>, a number between <tt>0</tt> and <tt>1</tt> inclusive to configure the ending opacity value.
   */
  public native function get endOpacity():Number;

  /**
   Whether the Element should be removed from the DOM and destroyed after the effect finishes
   */
  public native function get remove():Boolean;

  /**
   The scope (<code>this</code> reference) in which the <tt><a href="output/Ext.Fx.html#Ext.Fx-callback">callback</a></tt> function is executed. Defaults to the browser window.
   */
  public native function get scope():Object;

  /**
   Whether to use the <i>display</i> CSS property instead of <i>visibility</i> when hiding Elements (only applies to effects that end with the element being visually hidden, ignored otherwise)
   */
  public native function get useDisplay():Boolean;

  /**
   * Fade an element in (from transparent to opaque). The ending opacity can be specified using the <tt><a href="output/Ext.Fx.html#Ext.Fx-endOpacity">endOpacity</a></tt> config option. Usage: <pre><code>// default: fade in from opacity 0 to 100%
   el.fadeIn();

   // custom: fade in from opacity 0 to 75% over 2 seconds
   el.fadeIn({ endOpacity: .75, duration: 2});

   // common config options shown with default values
   el.fadeIn({
   endOpacity: 1, //can be any value between 0 and 1 (e.g. .5)
   easing: 'easeOut',
   duration: .5
   });
   </code></pre>
   *
   * @param options Object literal with any of the Fx config options
   * @return The Element
   * @see http://docs.sencha.com/ext-js/3-4/#!/api/Ext.Fx-method-fadeIn Sencha Docs Ext JS 3.4
   */
  public native function fadeIn(options:Object = null):Element;

  /**
   * Fade an element out (from opaque to transparent). The ending opacity can be specified using the <tt><a href="output/Ext.Fx.html#Ext.Fx-endOpacity">endOpacity</a></tt> config option. Note that IE may require <tt><a href="output/Ext.Fx.html#Ext.Fx-useDisplay">useDisplay</a>:true</tt> in order to redisplay correctly. Usage: <pre><code>// default: fade out from the element's current opacity to 0
   el.fadeOut();

   // custom: fade out from the element's current opacity to 25% over 2 seconds
   el.fadeOut({ endOpacity: .25, duration: 2});

   // common config options shown with default values
   el.fadeOut({
   endOpacity: 0, //can be any value between 0 and 1 (e.g. .5)
   easing: 'easeOut',
   duration: .5,
   remove: false,
   useDisplay: false
   });
   </code></pre>
   *
   * @param options Object literal with any of the Fx config options
   * @return The Element
   * @see http://docs.sencha.com/ext-js/3-4/#!/api/Ext.Fx-method-fadeOut Sencha Docs Ext JS 3.4
   */
  public native function fadeOut(options:Object = null):Element;

  /**
   * Shows a ripple of exploding, attenuating borders to draw attention to an Element. Usage: <pre><code>// default: a single light blue ripple
   el.frame();

   // custom: 3 red ripples lasting 3 seconds total
   el.frame("ff0000", 3, { duration: 3 });

   // common config options shown with default values
   el.frame("C3DAF9", 1, {
   duration: 1 //duration of each individual ripple.
   // Note: Easing is not configurable and will be ignored if included
   });
   </code></pre>
   *
   * @param color The color of the border. Should be a 6 char hex color without the leading # (defaults to light blue: 'C3DAF9').
   * @param count The number of ripples to display (defaults to 1)
   * @param options Object literal with any of the Fx config options
   * @return The Element
   * @see http://docs.sencha.com/ext-js/3-4/#!/api/Ext.Fx-method-frame Sencha Docs Ext JS 3.4
   */
  public native function frame(color:String = null, count:Number = undefined, options:Object = null):Element;

  /**
   * Slides the element while fading it out of view. An anchor point can be optionally passed to set the ending point of the effect. Usage: <pre><code>// default: slide the element downward while fading out
   el.ghost();

   // custom: slide the element out to the right with a 2-second duration
   el.ghost('r', { duration: 2 });

   // common config options shown with default values
   el.ghost('b', {
   easing: 'easeOut',
   duration: .5,
   remove: false,
   useDisplay: false
   });
   </code></pre>
   *
   * @param anchor One of the valid Fx anchor positions (defaults to bottom: 'b')
   * @param options Object literal with any of the Fx config options
   * @return The Element
   * @see http://docs.sencha.com/ext-js/3-4/#!/api/Ext.Fx-method-ghost Sencha Docs Ext JS 3.4
   */
  public native function ghost(anchor:String = null, options:Object = null):Element;

  /**
   * Returns true if the element has any effects actively running or queued, else returns false.
   *
   * @return True if element has active effects, else false
   * @see http://docs.sencha.com/ext-js/3-4/#!/api/Ext.Fx-method-hasActiveFx Sencha Docs Ext JS 3.4
   */
  public native function hasActiveFx():Boolean;

  /**
   * Returns true if the element is currently blocking so that no other effect can be queued until this effect is finished, else returns false if blocking is not set. This is commonly used to ensure that an effect initiated by a user action runs to completion prior to the same effect being restarted (e.g., firing only one effect even if the user clicks several times).
   *
   * @return True if blocking, else false
   * @see http://docs.sencha.com/ext-js/3-4/#!/api/Ext.Fx-method-hasFxBlock Sencha Docs Ext JS 3.4
   */
  public native function hasFxBlock():Boolean;

  /**
   * Highlights the Element by setting a color (applies to the background-color by default, but can be changed using the "attr" config option) and then fading back to the original color. If no original color is available, you should provide the "endColor" config option which will be cleared after the animation. Usage: <pre><code>// default: highlight background to yellow
   el.highlight();

   // custom: highlight foreground text to blue for 2 seconds
   el.highlight("0000ff", { attr: 'color', duration: 2 });

   // common config options shown with default values
   el.highlight("ffff9c", {
   attr: "background-color", //can be any valid CSS property (attribute) that supports a color value
   endColor: (current color) or "ffffff",
   easing: 'easeIn',
   duration: 1
   });
   </code></pre>
   *
   * @param color The highlight color. Should be a 6 char hex color without the leading # (defaults to yellow: 'ffff9c')
   * @param options Object literal with any of the Fx config options
   * @return The Element
   * @see http://docs.sencha.com/ext-js/3-4/#!/api/Ext.Fx-method-highlight Sencha Docs Ext JS 3.4
   */
  public native function highlight(color:String = null, options:Object = null):Element;

  /**
   * Creates a pause before any subsequent queued effects begin. If there are no effects queued after the pause it will have no effect. Usage: <pre><code>el.pause(1);
   </code></pre>
   *
   * @param seconds The length of time to pause (in seconds)
   * @return The Element
   * @see http://docs.sencha.com/ext-js/3-4/#!/api/Ext.Fx-method-pause Sencha Docs Ext JS 3.4
   */
  public native function pause(seconds:Number):Element;

  /**
   * Fades the element out while slowly expanding it in all directions. When the effect is completed, the element will be hidden (visibility = 'hidden') but block elements will still take up space in the document. The element must be removed from the DOM using the 'remove' config option if desired. Usage: <pre><code>// default
   el.puff();

   // common config options shown with default values
   el.puff({
   easing: 'easeOut',
   duration: .5,
   remove: false,
   useDisplay: false
   });
   </code></pre>
   *
   * @param options Object literal with any of the Fx config options
   * @return The Element
   * @see http://docs.sencha.com/ext-js/3-4/#!/api/Ext.Fx-method-puff Sencha Docs Ext JS 3.4
   */
  public native function puff(options:Object = null):Element;

  /**
   * Animates the transition of an element's dimensions from a starting height/width to an ending height/width. This method is a convenience implementation of <a href="shift.html">shift</a>. Usage: <pre><code>// change height and width to 100x100 pixels
   el.scale(100, 100);

   // common config options shown with default values.  The height and width will default to
   // the element's existing values if passed as null.
   el.scale(
   [element's width],
   [element's height], {
   easing: 'easeOut',
   duration: .35
   }
   );
   </code></pre>
   *
   * @param width The new width (pass undefined to keep the original width)
   * @param height The new height (pass undefined to keep the original height)
   * @param options Object literal with any of the Fx config options
   * @return The Element
   * @see http://docs.sencha.com/ext-js/3-4/#!/api/Ext.Fx-method-scale Sencha Docs Ext JS 3.4
   */
  public native function scale(width:Number, height:Number, options:Object = null):Element;

  /**
   * Ensures that all effects queued after sequenceFx is called on the element are run in sequence. This is the opposite of <a href="output/Ext.Fx.html#Ext.Fx-syncFx">syncFx</a>.
   *
   * @return The Element
   * @see http://docs.sencha.com/ext-js/3-4/#!/api/Ext.Fx-method-sequenceFx Sencha Docs Ext JS 3.4
   */
  public native function sequenceFx():Element;

  /**
   * Animates the transition of any combination of an element's dimensions, xy position and/or opacity. Any of these properties not specified in the config object will not be changed. This effect requires that at least one new dimension, position or opacity setting must be passed in on the config object in order for the function to have any effect. Usage: <pre><code>// slide the element horizontally to x position 200 while changing the height and opacity
   el.shift({ x: 200, height: 50, opacity: .8 });

   // common config options shown with default values.
   el.shift({
   width: [element's width],
   height: [element's height],
   x: [element's x position],
   y: [element's y position],
   opacity: [element's opacity],
   easing: 'easeOut',
   duration: .35
   });
   </code></pre>
   *
   * @param options Object literal with any of the Fx config options
   * @return The Element
   * @see http://docs.sencha.com/ext-js/3-4/#!/api/Ext.Fx-method-shift Sencha Docs Ext JS 3.4
   */
  public native function shift(options:Object):Element;

  /**
   * Slides the element into view. An anchor point can be optionally passed to set the point of origin for the slide effect. This function automatically handles wrapping the element with a fixed-size container if needed. See the Fx class overview for valid anchor point options. Usage: <pre><code>// default: slide the element in from the top
   el.slideIn();

   // custom: slide the element in from the right with a 2-second duration
   el.slideIn('r', { duration: 2 });

   // common config options shown with default values
   el.slideIn('t', {
   easing: 'easeOut',
   duration: .5
   });
   </code></pre>
   *
   * @param anchor One of the valid Fx anchor positions (defaults to top: 't')
   * @param options Object literal with any of the Fx config options
   * @return The Element
   * @see http://docs.sencha.com/ext-js/3-4/#!/api/Ext.Fx-method-slideIn Sencha Docs Ext JS 3.4
   */
  public native function slideIn(anchor:String = null, options:Object = null):Element;

  /**
   * Slides the element out of view. An anchor point can be optionally passed to set the end point for the slide effect. When the effect is completed, the element will be hidden (visibility = 'hidden') but block elements will still take up space in the document. The element must be removed from the DOM using the 'remove' config option if desired. This function automatically handles wrapping the element with a fixed-size container if needed. See the Fx class overview for valid anchor point options. Usage: <pre><code>// default: slide the element out to the top
   el.slideOut();

   // custom: slide the element out to the right with a 2-second duration
   el.slideOut('r', { duration: 2 });

   // common config options shown with default values
   el.slideOut('t', {
   easing: 'easeOut',
   duration: .5,
   remove: false,
   useDisplay: false
   });
   </code></pre>
   *
   * @param anchor One of the valid Fx anchor positions (defaults to top: 't')
   * @param options Object literal with any of the Fx config options
   * @return The Element
   * @see http://docs.sencha.com/ext-js/3-4/#!/api/Ext.Fx-method-slideOut Sencha Docs Ext JS 3.4
   */
  public native function slideOut(anchor:String = null, options:Object = null):Element;

  /**
   * Stops any running effects and clears the element's internal effects queue if it contains any additional effects that haven't started yet.
   *
   * @return The Element
   * @see http://docs.sencha.com/ext-js/3-4/#!/api/Ext.Fx-method-stopFx Sencha Docs Ext JS 3.4
   */
  public native function stopFx():Element;

  /**
   * Blinks the element as if it was clicked and then collapses on its center (similar to switching off a television). When the effect is completed, the element will be hidden (visibility = 'hidden') but block elements will still take up space in the document. The element must be removed from the DOM using the 'remove' config option if desired. Usage: <pre><code>// default
   el.switchOff();

   // all config options shown with default values
   el.switchOff({
   easing: 'easeIn',
   duration: .3,
   remove: false,
   useDisplay: false
   });
   </code></pre>
   *
   * @param options Object literal with any of the Fx config options
   * @return The Element
   * @see http://docs.sencha.com/ext-js/3-4/#!/api/Ext.Fx-method-switchOff Sencha Docs Ext JS 3.4
   */
  public native function switchOff(options:Object = null):Element;

  /**
   * Ensures that all effects queued after syncFx is called on the element are run concurrently. This is the opposite of <a href="output/Ext.Fx.html#Ext.Fx-sequenceFx">sequenceFx</a>.
   *
   * @return The Element
   * @see http://docs.sencha.com/ext-js/3-4/#!/api/Ext.Fx-method-syncFx Sencha Docs Ext JS 3.4
   */
  public native function syncFx():Element;

}
}
    