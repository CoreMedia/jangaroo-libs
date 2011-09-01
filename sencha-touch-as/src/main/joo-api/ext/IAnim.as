package ext {

import ext.form.Number;

/**
 * Ext.Anim is used to excute animations defined in <a href="Ext.anims.html">Ext.anims</a>. The <a href="output/Ext.Anim.html#Ext.Anim-run">run</a> method can take any of the properties defined below.
 <h2>Example usage:</h2><pre><code>Ext.Anim.run(this, 'fade', {
 out: false,
 autoClear: true
 });
 </code></pre><p>Animations are disabled on Android and Blackberry by default using the <a href="output/Ext.Anim.html#Ext.Anim-disableAnimations">disableAnimations</a> property.</p>
 *
 * <p>Copyright &#169; 2011 Sencha Inc.</p>
 *

 * <p>This interface defines the type of the singleton Anim.</p>
 * @see ext.#Anim ext.Anim
 * @see ext.config.anim
 * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/Anim.html#cls-Ext.Anim Ext JS source
 */
public interface IAnim {

  /**
   True to remove all custom CSS defined in the <a href="output/Ext.Anim.html#Ext.Anim-to">to</a> config when the animation is over. (Defaults to true).
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/ Ext JS source
   */
  function get autoClear():Boolean;

  /**
   Time to delay before starting the animation. (Defaults to 0).
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/ Ext JS source
   */
  function get delay():ext.form.Number;

  /**
   Valid values are 'left', 'right', 'up', 'down' and null. (Defaults to null).
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/ Ext JS source
   */
  function get direction():String;

  /**
   True to disable animations. By default, animations are disabled on Android and Blackberry
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/ Ext JS source
   */
  function get disableAnimations():Boolean;

  /**
   Time in milliseconds for the animation to last. (Defaults to 250).
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/ Ext JS source
   */
  function get duration():ext.form.Number;

  /**
   Valid values are 'ease', 'linear', ease-in', 'ease-out', 'ease-in-out' or a cubic-bezier curve as defined by CSS. (Defaults to 'ease-in-out').
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/ Ext JS source
   */
  function get easing():String;

  /**
   An object of CSS values which the animation begins with. If you define a CSS property here, you must also define it in the <a href="output/Ext.Anim.html#Ext.Anim-to">to</a> config.
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/ Ext JS source
   */
  function get from():Object;

  /**
   True if you want the animation to slide out of the screen. (Defaults to true).
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/ Ext JS source
   */
  function get out():Boolean;

  /**
   True to reverse the animation direction. For example, if the animation direction was set to 'left', it would then use 'right'. (Defaults to false).
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/ Ext JS source
   */
  function get reverse():Boolean;

  /**
   Scope to run the <a href="before.html">before</a> function in.
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/ Ext JS source
   */
  function get scope():Scope;

  /**
   An object of CSS values which the animation ends with. If you define a CSS property here, you must also define it in the <a href="output/Ext.Anim.html#Ext.Anim-from">from</a> config.
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/ Ext JS source
   */
  function get to():Object;

  /**
   * Used to run an animation on a specific element. Use the config argument to customize the animation
   *
   * @param el The element to animate
   * @param anim The animation type, defined in <a href="output/Ext.Anim.html#Ext.Anim-Ext.anims">Ext.anims</a>
   * @param config The config object for the animation
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/Anim.html#method-Ext.Anim-run Ext JS source
   */
  function run(el:*, anim:String, config:Object):void;

}
}
    