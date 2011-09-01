package ext {


/**
 * Defines different types of animations. <strong>flip, cube, wipe</strong> animations do not work on Android.
 <p>Please refer to <a href="Ext.Anim.html">Ext.Anim</a> on how to use animations.</p>
 *
 * <p>Copyright &#169; 2011 Sencha Inc.</p>
 *

 * <p>This interface defines the type of the singleton anims.</p>
 * @see ext.#anims ext.anims
 * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/Anim.html#cls-Ext.anims Ext JS source
 */
public interface Ianims {

  /**
   Cube Animation
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/Anim.more.html#prop-Ext.anims-cube Ext JS source
   */
  function get cube():Object;

  /**
   * @private
   */
  function set cube(value:Object):void;

  /**
   Fade Animation
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/Anim.html#prop-Ext.anims-fade Ext JS source
   */
  function get fade():Object;

  /**
   * @private
   */
  function set fade(value:Object):void;

  /**
   Flip Animation
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/Anim.more.html#prop-Ext.anims-flip Ext JS source
   */
  function get flip():Object;

  /**
   * @private
   */
  function set flip(value:Object):void;

  /**
   Pop Animation
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/Anim.html#prop-Ext.anims-pop Ext JS source
   */
  function get pop():Object;

  /**
   * @private
   */
  function set pop(value:Object):void;

  /**
   Slide Animation
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/Anim.html#prop-Ext.anims-slide Ext JS source
   */
  function get slide():Object;

  /**
   * @private
   */
  function set slide(value:Object):void;

  /**
   Wipe Animation. <p>Because of the amount of calculations involved, this animation is best used on small display changes or specifically for phone environments. Does not currently accept any parameters.</p>
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/Anim.more.html#prop-Ext.anims-wipe Ext JS source
   */
  function get wipe():Object;

  /**
   * @private
   */
  function set wipe(value:Object):void;

}
}
    