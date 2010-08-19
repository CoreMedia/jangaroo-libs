package flash.system {

public class Capabilities {

  /**
   * Specifies whether the system is a special debugging version
   * (<code>true</code>) or an officially released version (<code>false</code>).
   * The server string is <code>DEB</code>. This property is set to <code>true</code>
   * when running in <span>the debug version of Flash Player or</span>
   * the AIR Debug Launcher (ADL).
   */
  public static function get isDebugger():Boolean {
    return true;
  }

  /**
   * Specifies the current operating system. The <code>os</code> property
   * can return the following strings: "<code>Windows XP</code>", "<code>Windows 2000</code>",
   * "<code>Windows NT</code>", "<code>Windows 98/ME</code>", "<code>Windows 95</code>",
   * "<code>Windows CE</code>" (available only in Flash Player SDK, not in the desktop version),
   * <code>"Linux"</code>, and <code>"Mac OS X.Y.Z"</code> (where X.Y.Z is the version number, for example:
   * <code>Mac OS 10.5.2</code>).
   * The server string is <code>OS</code>.
   * <p>Do <i>not</i> use <code>Capabilities.os</code> to determine a capability based on
   * the operating system if a more specific capability property exists. Basing a capability on the operating
   * system is a bad idea, since it can lead to problems if an application does not consider all potential
   * target operating systems. Instead, use the property corresponding to the capability for which you
   * are testing. For more information, see the Capabilities class description.</p>
   */
  public static function get os():String {
    return "jangaroo";
  }

  /**
   * Specifies the Flash Player or Adobe<sup>®</sup> AIR<sup>®</sup>
   * platform and version information. The format of the version number is:
   * <i>platform majorVersion,minorVersion,buildNumber,internalBuildNumber</i>.
   * Possible values for <i>platform</i> are <code>"WIN"</code>, `
   * <code>"MAC"</code>, and <code>"LNX"</code>. Here are some examples of version information:
   * <pre>
   * WIN 9,0,0,0  // Flash Player 9 for Windows
   * MAC 7,0,25,0   // Flash Player 7 for Macintosh
   * LNX 9,0,115,0  // Flash Player 9 for Linux
   * </pre>
   * <p>Do <i>not</i> use <code>Capabilities.version</code> to determine a capability based on
   * the operating system if a more specific capability property exists. Basing a capability on the operating
   * system is a bad idea, since it can lead to problems if an application does not consider all potential
   * target operating systems. Instead, use the property corresponding to the capability for which you
   * are testing. For more information, see the Capabilities class description.</p>
   * <p>The server string is <code>V</code>.</p>
   * @see http://livedocs.adobe.com/flex/3/html/18_Client_System_Environment_4.html Using the Capabilities class
   */
  public static function get version():String {
    return "jangaroo";
  }
}
}