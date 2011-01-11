package flash.media {

/**
 * The SoundTransform class contains properties for volume and panning.
 * @see flash.display.SimpleButton.soundTransform
 * @see flash.display.Sprite#soundTransform
 * @see flash.media.Microphone#soundTransform
 * @see flash.media.SoundChannel#soundTransform
 * @see flash.media.SoundMixer#soundTransform
 * @see flash.net.NetStream#soundTransform
 */
public class SoundTransform {

  public function SoundTransform() {
  }

  /**
   * The volume, ranging from 0 (silent) to 1 (full volume).
   */
  public var volume:Number;

  /**
   * The left-to-right panning of the sound, ranging from -1 (full pan left)
   * to 1 (full pan right). A value of 0 represents no panning (balanced center between
   * right and left).
   */
  public var pan:Number;
}
}