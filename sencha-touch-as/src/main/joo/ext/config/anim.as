package ext.config {

import ext.form.Number;

import joo.JavaScriptObject;

/**
 * Ext.Anim is used to excute animations defined in <a href="Ext.anims.html">Ext.anims</a>. The <a href="output/Ext.Anim.html#Ext.Anim-run">run</a> method can take any of the properties defined below.
 <h2>Example usage:</h2><pre><code>Ext.Anim.run(this, 'fade', {
 out: false,
 autoClear: true
 });
 </code></pre><p>Animations are disabled on Android and Blackberry by default using the <a href="output/Ext.Anim.html#Ext.Anim-disableAnimations">disableAnimations</a> property.</p>
 *
 * <p>This class serves as a
 * typed config object for constructor of class Anim.</p>
 *
 * <p>Copyright &#169; 2011 Sencha Inc.</p>
 * @see ext.IAnim
 */
[ExtConfig(target="ext.IAnim")]
public class anim extends JavaScriptObject {

  public function anim(config:Object = null) {

    super(config);
  }


  /**
   True to remove all custom CSS defined in the <a href="output/Ext.Anim.html#Ext.Anim-to">to</a> config when the animation is over. (Defaults to true).
   */
  public native function get autoClear():Boolean;

  /**
   * @private
   */
  public native function set autoClear(value:Boolean):void;

  /**
   Code to execute before starting the animation.
   */
  public native function get before():Function;

  /**
   * @private
   */
  public native function set before(value:Function):void;

  /**
   Time to delay before starting the animation. (Defaults to 0).
   */
  public native function get delay():ext.form.Number;

  /**
   * @private
   */
  public native function set delay(value:ext.form.Number):void;

  /**
   Valid values are 'left', 'right', 'up', 'down' and null. (Defaults to null).
   */
  public native function get direction():String;

  /**
   * @private
   */
  public native function set direction(value:String):void;

  /**
   True to disable animations. By default, animations are disabled on Android and Blackberry
   */
  public native function get disableAnimations():Boolean;

  /**
   * @private
   */
  public native function set disableAnimations(value:Boolean):void;

  /**
   Time in milliseconds for the animation to last. (Defaults to 250).
   */
  public native function get duration():ext.form.Number;

  /**
   * @private
   */
  public native function set duration(value:ext.form.Number):void;

  /**
   Valid values are 'ease', 'linear', ease-in', 'ease-out', 'ease-in-out' or a cubic-bezier curve as defined by CSS. (Defaults to 'ease-in-out').
   */
  public native function get easing():String;

  /**
   * @private
   */
  public native function set easing(value:String):void;

  /**
   An object of CSS values which the animation begins with. If you define a CSS property here, you must also define it in the <a href="output/Ext.Anim.html#Ext.Anim-to">to</a> config.
   */
  public native function get from():Object;

  /**
   * @private
   */
  public native function set from(value:Object):void;

  /**
   True if you want the animation to slide out of the screen. (Defaults to true).
   */
  public native function get out():Boolean;

  /**
   * @private
   */
  public native function set out(value:Boolean):void;

  /**
   True to reverse the animation direction. For example, if the animation direction was set to 'left', it would then use 'right'. (Defaults to false).
   */
  public native function get reverse():Boolean;

  /**
   * @private
   */
  public native function set reverse(value:Boolean):void;

  /**
   Scope to run the <a href="before.html">before</a> function in.
   */
  public native function get scope():Scope;

  /**
   * @private
   */
  public native function set scope(value:Scope):void;

  /**
   An object of CSS values which the animation ends with. If you define a CSS property here, you must also define it in the <a href="output/Ext.Anim.html#Ext.Anim-from">from</a> config.
   */
  public native function get to():Object;

  /**
   * @private
   */
  public native function set to(value:Object):void;


}
}
    