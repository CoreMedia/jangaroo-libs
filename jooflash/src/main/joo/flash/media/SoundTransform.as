package flash.media {


/**
 * The SoundTransform class contains properties for volume and panning.
 * <p><a href="http://help.adobe.com/en_US/FlashPlatform/reference/actionscript/3/flash/media/SoundTransform.html#includeExamplesSummary">View the examples</a></p>
 * @see flash.display.SimpleButton#soundTransform
 * @see flash.display.Sprite#soundTransform
 * @see Microphone#soundTransform
 * @see SoundChannel#soundTransform
 * @see SoundMixer#soundTransform
 * @see flash.net.NetStream#soundTransform
 *
 */
public final class SoundTransform {
  /**
   * A value, from 0 (none) to 1 (all), specifying how much of the left input is played in the left speaker.
   */
  public function get leftToLeft():Number {
    throw new Error('not implemented'); // TODO: implement!
  }

  /**
   * @private
   */
  public function set leftToLeft(value:Number):void {
    throw new Error('not implemented'); // TODO: implement!
  }

  /**
   * A value, from 0 (none) to 1 (all), specifying how much of the left input is played in the right speaker.
   */
  public function get leftToRight():Number {
    throw new Error('not implemented'); // TODO: implement!
  }

  /**
   * @private
   */
  public function set leftToRight(value:Number):void {
    throw new Error('not implemented'); // TODO: implement!
  }

  /**
   * The left-to-right panning of the sound, ranging from -1 (full pan left) to 1 (full pan right). A value of 0 represents no panning (balanced center between right and left).
   */
  public function get pan():Number {
    throw new Error('not implemented'); // TODO: implement!
  }

  /**
   * @private
   */
  public function set pan(value:Number):void {
    throw new Error('not implemented'); // TODO: implement!
  }

  /**
   * A value, from 0 (none) to 1 (all), specifying how much of the right input is played in the left speaker.
   */
  public function get rightToLeft():Number {
    throw new Error('not implemented'); // TODO: implement!
  }

  /**
   * @private
   */
  public function set rightToLeft(value:Number):void {
    throw new Error('not implemented'); // TODO: implement!
  }

  /**
   * A value, from 0 (none) to 1 (all), specifying how much of the right input is played in the right speaker.
   */
  public function get rightToRight():Number {
    throw new Error('not implemented'); // TODO: implement!
  }

  /**
   * @private
   */
  public function set rightToRight(value:Number):void {
    throw new Error('not implemented'); // TODO: implement!
  }

  /**
   * The volume, ranging from 0 (silent) to 1 (full volume).
   */
  public function get volume():Number {
    throw new Error('not implemented'); // TODO: implement!
  }

  /**
   * @private
   */
  public function set volume(value:Number):void {
    throw new Error('not implemented'); // TODO: implement!
  }

  /**
   * Creates a SoundTransform object.
   * @param vol The volume, ranging from 0 (silent) to 1 (full volume).
   * @param panning The left-to-right panning of the sound, ranging from -1 (full pan left) to 1 (full pan right). A value of 0 represents no panning (center).
   *
   * @example In the following example, the sound plays only from the right channel, and the volume is set to 50 percent.
   * <p>In the constructor, the sound is loaded and is assigned to a sound channel (<code>channel</code>). A SoundTranform object (<code>transform</code>) is also created. Its first argument sets the volume at 50 percent (the range is 0.0 to 1.0). Its second argument sets the panning. In this example, panning is set to 1.0, which means the sound comes from the right speaker only. In order for these settings to take effect, the <code>transform</code> SoundTranform object is assigned to the sound channel's <code>souundTransform</code> property.</p>
   * <p><b>Note:</b> There is limited error handling written for this example.</p>
   * <listing>
   * package {
   *     import flash.display.Sprite;
   *     import flash.net.URLRequest;
   *     import flash.media.Sound;
   *     import flash.media.SoundChannel;
   *     import flash.media.SoundTransform;
   *     import flash.events.IOErrorEvent;
   *
   *     public class SoundTransform_constructorExample extends Sprite
   *     {
   *         public function SoundTransform_constructorExample() {
   *             var mySound:Sound = new Sound();
   *             var url:URLRequest = new URLRequest("mySound.mp3");
   *             var channel:SoundChannel;
   *             var transform:SoundTransform = new SoundTransform(0.5, 1.0);
   *
   *             mySound.load(url);
   *             channel = mySound.play();
   *             channel.soundTransform = transform;
   *
   *             mySound.addEventListener(IOErrorEvent.IO_ERROR, errorHandler);
   *         }
   *
   *         private function errorHandler(errorEvent:IOErrorEvent):void {
   *             trace("The sound could not be loaded: " + errorEvent.text);
   *         }
   *     }
   * }
   * </listing>
   */
  public function SoundTransform(vol:Number = 1, panning:Number = 0) {
    throw new Error('not implemented'); // TODO: implement!
  }
}
}
