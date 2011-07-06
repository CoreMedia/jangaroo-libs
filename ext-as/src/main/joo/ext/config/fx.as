package ext.config {

import ext.Ext;

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
 * <p>This class serves as a typed config object for constructor of class Fx.</p>
 *
 * @see ext.Fx
 */
[ExtConfig(target="ext.Fx")]
public class fx {

  public function fx(config:Object = null) {

    Ext.apply(this, config);
  }


  /**
   A css class to apply after the effect
   */
  public native function get afterCls():String;

  /**
   * @private
   */
  public native function set afterCls(value:String):void;

  /**
   A style specification string, e.g. <tt>"width:100px"</tt>, or an object in the form <tt>{width:"100px"}</tt>, or a function which returns such a specification that will be applied to the Element after the effect finishes.
   */
  public native function get afterStyle():*;

  /**
   * @private
   */
  public native function set afterStyle(value:*):void;

  /**
   Whether the effect should block other effects from queueing while it runs
   */
  public native function get block():Boolean;

  /**
   * @private
   */
  public native function set block(value:Boolean):void;

  /**
   A function called when the effect is finished. Note that effects are queued internally by the Fx class, so a callback is not required to specify another effect -- effects can simply be chained together and called in sequence (see note for <b><u>Method Chaining</u></b> above), for example:<pre><code>el.slideIn().highlight();
   </code></pre>The callback is intended for any additional code that should run once a particular effect has completed. The Element being operated upon is passed as the first parameter.
   */
  public native function get callback():Function;

  /**
   * @private
   */
  public native function set callback(value:Function):void;

  /**
   Whether to allow subsequently-queued effects to run at the same time as the current effect, or to ensure that they run in sequence
   */
  public native function get concurrent():Boolean;

  /**
   * @private
   */
  public native function set concurrent(value:Boolean):void;

  /**
   The length of time (in seconds) that the effect should last
   */
  public native function get duration():Number;

  /**
   * @private
   */
  public native function set duration(value:Number):void;

  /**
   A valid Ext.lib.Easing value for the effect:<br/><br/><div class="mdetail-params"><ul><li><b><tt>backBoth</tt></b></li><li><b><tt>backIn</tt></b></li><li><b><tt>backOut</tt></b></li><li><b><tt>bounceBoth</tt></b></li><li><b><tt>bounceIn</tt></b></li><li><b><tt>bounceOut</tt></b></li><li><b><tt>easeBoth</tt></b></li><li><b><tt>easeBothStrong</tt></b></li><li><b><tt>easeIn</tt></b></li><li><b><tt>easeInStrong</tt></b></li><li><b><tt>easeNone</tt></b></li><li><b><tt>easeOut</tt></b></li><li><b><tt>easeOutStrong</tt></b></li><li><b><tt>elasticBoth</tt></b></li><li><b><tt>elasticIn</tt></b></li><li><b><tt>elasticOut</tt></b></li></ul></div>
   */
  public native function get easing():String;

  /**
   * @private
   */
  public native function set easing(value:String):void;

  /**
   Only applicable for <a href="output/Ext.Fx.html#Ext.Fx-fadeIn">fadeIn</a> or <a href="output/Ext.Fx.html#Ext.Fx-fadeOut">fadeOut</a>, a number between <tt>0</tt> and <tt>1</tt> inclusive to configure the ending opacity value.
   */
  public native function get endOpacity():Number;

  /**
   * @private
   */
  public native function set endOpacity(value:Number):void;

  /**
   Whether the Element should be removed from the DOM and destroyed after the effect finishes
   */
  public native function get remove():Boolean;

  /**
   * @private
   */
  public native function set remove(value:Boolean):void;

  /**
   The scope (<code>this</code> reference) in which the <tt><a href="output/Ext.Fx.html#Ext.Fx-callback">callback</a></tt> function is executed. Defaults to the browser window.
   */
  public native function get scope():Object;

  /**
   * @private
   */
  public native function set scope(value:Object):void;

  /**
   Whether preceding effects should be stopped and removed before running current effect (only applies to non blocking effects)
   */
  public native function get stopFx():Boolean;

  /**
   * @private
   */
  public native function set stopFx(value:Boolean):void;

  /**
   Whether to use the <i>display</i> CSS property instead of <i>visibility</i> when hiding Elements (only applies to effects that end with the element being visually hidden, ignored otherwise)
   */
  public native function get useDisplay():Boolean;

  /**
   * @private
   */
  public native function set useDisplay(value:Boolean):void;


}
}
    