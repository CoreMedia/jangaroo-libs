package ext.config {
import ext.ComponentMgr;

import net.jangaroo.ext.Exml;

/**
 * Config class for component plugins implementing ext.Plugin.
 * @see ext.Plugin
 */
public class plugin {

  public function plugin() {
    Exml.establishType(this, "ptype", ComponentMgr["ptypes"]);
  }

  /**
   * TODO
   */
  public native function get ptype():String;

  /**
   * @private
   */
  public native function set ptype(value:String):void;

  /**
   * TODO
   */
  public native function get targetClass():Class;

  /**
   * @private
   */
  public native function set targetClass(value:Class):void;

}
}