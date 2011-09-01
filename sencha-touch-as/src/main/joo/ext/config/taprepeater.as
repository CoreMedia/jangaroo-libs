package ext.config {


/**
 * A wrapper class which can be applied to any element. Fires a "tap" event while touching the device. The interval between firings may be specified in the config but defaults to 20 milliseconds.
 *
 * <p>This class serves as a
 * typed config object for constructor of class TapRepeater.</p>
 *
 * <p>Copyright &#169; 2011 Sencha Inc.</p>
 * @see ext.util.TapRepeater
 */
[ExtConfig(target="ext.util.TapRepeater")]
public class taprepeater extends observable {

  public function taprepeater(config:Object = null) {

    super(config);
  }


}
}
    