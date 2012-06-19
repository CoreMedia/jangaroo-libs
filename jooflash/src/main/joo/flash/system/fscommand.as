package flash.system {

/**
 * Lets the SWF file communicate with either Flash Player or the program hosting Flash Player, such as a web browser. You can also use the <code>fscommand()</code> function to pass messages to Director or to Visual Basic, Visual C++, and other programs that can host ActiveX controls.
 * <p>The <code>fscommand()</code> function lets a SWF file communicate with a script in a web page. However, script access is controlled by the web page's <code>allowScriptAccess</code> setting. (You set this attribute in the HTML code that embeds the SWF file—for example, in the <code>PARAM</code> tag for Internet Explorer or the <code>EMBED</code> tag for Netscape.)</p>
 * <ul>
 * <li>When <code>allowScriptAccess</code> is set to <code>"sameDomain"</code> (the default), scripting is allowed only from SWF files that are in the same domain as the web page.</li>
 * <li>When <code>allowScriptAccess</code> is set to <code>"always"</code>, the SWF file can communicate with the HTML page in which it is embedded even when the SWF file is from a different domain than the HTML page.</li>
 * <li>When <code>allowScriptAccess</code> is set to <code>"never"</code>, the SWF file cannot communicate with any HTML page. Note that using this value is deprecated and not recommended, and shouldn't be necessary if you don't serve untrusted SWF files from your own domain. If you do need to serve untrusted SWF files, Adobe recommends that you create a distinct subdomain and place all untrusted content there.</li></ul>
 * <p>You can prevent a SWF file from using this method by setting the <code>allowNetworking</code> parameter of the the <code>object</code> and <code>embed</code> tags in the HTML page that contains the SWF content.</p>
 * <p>The <code>fscommand()</code> function is not allowed if the calling SWF file is in the local-with-file-system or local-with-network sandbox and the containing HTML page is in an untrusted sandbox.</p>
 * <p>For more information related to security, see the Flash Player Developer Center Topic: <a href="http://www.adobe.com/go/devnet_security_en">Security</a>.</p>
 * <p>Usage 1: To use <code>fscommand()</code> to send a message to Flash Player, you must use predefined commands and parameters. The following table shows the values that you can specify for the <code>fscommand()</code> function's <code>command</code> and <code>args</code> parameters. These values control SWF files that are playing in Flash Player, including projectors. (A <i>projector</i> is a SWF file saved in a format that can run as a stand-alone application—that is, without Flash Player.)</p>
 * <table>
 * <tr><th>Command</th><th>Parameter (args)</th><th>Purpose</th></tr>
 * <tr>
 * <td><code>quit</code></td>
 * <td>None</td>
 * <td>Closes the projector.</td></tr>
 * <tr>
 * <td><code>fullscreen</code></td>
 * <td><code>true</code> or <code>false</code></td>
 * <td>Specifying <code>true</code> sets Flash Player to full-screen mode. Specifying <code>false</code> returns the player to normal menu view.</td></tr>
 * <tr>
 * <td><code>allowscale</code></td>
 * <td><code>true</code> or <code>false</code></td>
 * <td>Specifying <code>false</code> sets the player so that the SWF file is always drawn at its original size and never scaled. Specifying <code>true</code> forces the SWF file to scale to 100% of the player.</td></tr>
 * <tr>
 * <td><code>showmenu</code></td>
 * <td><code>true</code> or <code>false</code></td>
 * <td>Specifying <code>true</code> enables the full set of context menu items. Specifying <code>false</code> hides all of the context menu items except About Flash Player and Settings.</td></tr>
 * <tr>
 * <td><code>exec</code></td>
 * <td>Path to application</td>
 * <td>Executes an application from within the projector.</td></tr>
 * <tr>
 * <td><code>trapallkeys</code></td>
 * <td><code>true</code> or <code>false</code></td>
 * <td>Specifying <code>true</code> sends all key events, including accelerator keys, to the <code>onClipEvent(keyDown/keyUp)</code> handler in Flash Player.</td></tr></table>
 * <p>Not all of the commands listed in the table are available in all applications:</p>
 * <ul>
 * <li>None of the commands are available in web players.</li>
 * <li>All of the commands are available in stand-alone projector applications.</li>
 * <li>AIR applications should use the flash.desktop.NativeApplication class for similar functions, such as <code>NativeApplication.nativeApplication.exit()</code> instead of <code>fscommand("quit")</code>.</li>
 * <li>Only <code>allowscale</code> and <code>exec</code> are available in test-movie players.</li></ul>
 * <p>The <code>exec</code> command can contain only the characters A-Z, a-z, 0-9, period (.), and underscore (_). The <code>exec</code> command runs in the subdirectory fscommand only. In other words, if you use the <code>exec</code> command to call an application, the application must reside in a subdirectory named fscommand. The <code>exec</code> command works only from within a Flash projector file.</p>
 * <p>Usage 2: To use <code>fscommand()</code> to send a message to a scripting language such as JavaScript in a web browser, you can pass any two parameters in the <code>command</code> and <code>args</code> parameters. These parameters can be strings or expressions, and they are used in a JavaScript function that handles, or <i>catches</i>, the <code>fscommand()</code> function.</p>
 * <p>In a web browser, <code>fscommand()</code> calls the JavaScript function <code>moviename_DoFScommand</code>, which resides in the web page that contains the SWF file. For <code>moviename</code>, supply the name of the Flash object that you used for the <code>NAME</code> attribute of the <code>EMBED</code> tag or the ID property of the <code>OBJECT</code> tag. If you assign the SWF file the name "myMovie", the JavaScript function <code>myMovie_DoFScommand</code> is called.</p>
 * <p>In the web page that contains the SWF file, set the <code>allowScriptAccess</code> attribute to allow or deny the SWF file's ability to access the web page, as described above. (You set this attribute in the HTML code that embeds the SWF file—for example, in the <code>PARAM</code> tag for Internet Explorer or the <code>EMBED</code> tag for Netscape.)</p>
 * <p>In Flash Player 10 and later running in a browser, using this method programmatically to open a pop-up window may not be successful. Various browsers (and browser configurations) may block pop-up windows at any time; it is not possible to guarantee any pop-up window will appear. However, for the best chance of success, use this method to open a pop-up window only in code that executes as a direct result of a user action (for example, in an event handler for a mouse click or key-press event.)</p>
 * <p>Usage 3: The <code>fscommand()</code> function can send messages to Director (Macromedia Director from Adobe). These messages are interpreted by Lingo (the Director scripting language) as strings, events, or executable Lingo code. If a message is a string or an event, you must write the Lingo code to receive the message from the <code>fscommand()</code> function and carry out an action in Director. For more information, see the Director Support Center at <a href="http://www.adobe.com/support/director/">www.adobe.com/support/director/</a>.</p>
 * <p>Usage 4: In VisualBasic, Visual C++, and other programs that can host ActiveX controls, <code>fscommand()</code> sends a VB event with two strings that can be handled in the environment's programming language. For more information, use the keywords "Flash method" to search the Flash Support Center at <a href="http://www.adobe.com/support/flash/">www.adobe.com/support/flash/</a>.</p>
 * <p><b>Note:</b> The ExternalInterface class provides better functionality for communication between JavaScript and ActionScript (Usage 2) and between ActionScript and VisualBasic, Visual C++, or other programs that can host ActiveX controls (Usage 4). You should continue to use <code>fscommand()</code> for sending messages to Flash Player (Usage 1) and Director (Usage 3).</p>
 * @param command A string passed to the host application for any use, or a command passed to Flash Player.
 * @param args A string passed to the host application for any use, or a value passed to Flash Player.
 *
 * @throws Error If the function is not called in response to a user action, such as a mouse event or keypress event.
 *
 * @see flash.desktop.NativeApplication
 *
 * @example The following example shows how <code>fscommand()</code> can be used to direct Flash Player to go into full screen mode and not allow scaling. An orange box is then added to the stage using <code>draw()</code>. In <code>draw()</code>, a <code>click</code> event listener is added named <code>clickHandler()</code>, which responds to <code>click</code> events by directing Flash Player to exit using another call to <code>fscommand().</code>
 * <p><b>Note:</b> this example should be executed in the standalone Flash Player and not within a web browser.</p>
 * <listing>
 * package {
 *     import flash.display.Sprite;
 *     import flash.text.TextField;
 *     import flash.system.fscommand;
 *     import flash.events.MouseEvent;
 *
 *     public class FSCommandExample extends Sprite {
 *         private var bgColor:uint = 0xFFCC00;
 *         private var size:uint = 100;
 *
 *         public function FSCommandExample() {
 *             fscommand("fullscreen", "true");
 *             fscommand("allowscale", "false");
 *             draw();
 *         }
 *
 *         private function clickHandler(event:MouseEvent):void {
 *             fscommand("quit");
 *             trace("clickHandler");
 *         }
 *
 *         private function draw():void {
 *             var child:Sprite = new Sprite();
 *             child.graphics.beginFill(bgColor);
 *             child.graphics.drawRect(0, 0, size, size);
 *             child.graphics.endFill();
 *             child.buttonMode = true;
 *             addEventListener(MouseEvent.CLICK, clickHandler);
 *
 *             var label:TextField = new TextField();
 *             label.text = "quit";
 *             label.selectable = false;
 *             label.mouseEnabled = false;
 *             child.addChild(label);
 *
 *             addChild(child);
 *         }
 *     }
 * }
 * </listing>
 */
public native function fscommand(command:String, args:String = ""):void;

}
