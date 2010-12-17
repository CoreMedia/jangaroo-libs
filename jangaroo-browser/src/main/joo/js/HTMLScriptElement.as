package js {
public class HTMLScriptElement extends HTMLElement {

  public native function get src() : String; // <script>, <img>

  public native function set src(url : String) : void; // <script>, <img>

  public native function get type() : String; // <script>, <img>

  public native function set type(url : String) : void; // <script>, <img>

}
}
