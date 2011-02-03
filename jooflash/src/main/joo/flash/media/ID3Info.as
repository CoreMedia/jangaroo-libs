package flash.media {


/**
 * The ID3Info class contains properties that reflect ID3 metadata. You can get additional metadata for MP3 files by accessing the <code>id3</code> property of the Sound class; for example, <code>mySound.id3.TIME</code>. For more information, see the entry for <code>Sound.id3</code> and the ID3 tag definitions at <a href="http://www.id3.org">http://www.id3.org</a>.
 * @see Sound#id3
 *
 */
public final dynamic class ID3Info {
  /**
   * The name of the album; corresponds to the ID3 2.0 tag TALB.
   */
  public var album:String;
  /**
   * The name of the artist; corresponds to the ID3 2.0 tag TPE1.
   */
  public var artist:String;
  /**
   * A comment about the recording; corresponds to the ID3 2.0 tag COMM.
   */
  public var comment:String;
  /**
   * The genre of the song; corresponds to the ID3 2.0 tag TCON.
   */
  public var genre:String;
  /**
   * The name of the song; corresponds to the ID3 2.0 tag TIT2.
   */
  public var songName:String;
  /**
   * The track number; corresponds to the ID3 2.0 tag TRCK.
   */
  public var track:String;
  /**
   * The year of the recording; corresponds to the ID3 2.0 tag TYER.
   */
  public var year:String;
}
}
