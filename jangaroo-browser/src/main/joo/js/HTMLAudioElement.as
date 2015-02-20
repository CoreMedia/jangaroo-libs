package js {

[Native("HTMLAudioElement")]
public class HTMLAudioElement extends HTMLElement {

  public native function get src() : String;

  public native function set src(url : String) : void;

  public native function canPlayType(mimeType : String) : String;

  public native function load() : void;

  public native function play() : void;

  public native function pause() : void;

}
}
