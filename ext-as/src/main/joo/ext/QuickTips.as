package ext {


/**
 * Provides attractive and customizable tooltips for any element. The QuickTips singleton is used to configure and manage tooltips globally for multiple elements in a generic manner. To create individual tooltips with maximum customizability, you should consider either <a href="Ext.Tip.html">Ext.Tip</a> or <a href="Ext.ToolTip.html">Ext.ToolTip</a>.
 <p>Quicktips can be configured via tag attributes directly in markup, or by registering quick tips programmatically via the <a href="output/Ext.QuickTips.html#Ext.QuickTips-register">register</a> method.</p><p>The singleton's instance of <a href="Ext.QuickTip.html">Ext.QuickTip</a> is available via <a href="output/Ext.QuickTips.html#Ext.QuickTips-getQuickTip">getQuickTip</a>, and supports all the methods, and all the all the configuration properties of Ext.QuickTip. These settings will apply to all tooltips shown by the singleton.</p><p>Below is the summary of the configuration properties which can be used. For detailed descriptions see the config options for the <a href="Ext.QuickTip.html">QuickTip</a> class</p><p style="font-weight: bold">QuickTips singleton configs (all are optional)</p><div class="mdetail-params"><ul><li>dismissDelay</li><li>hideDelay</li><li>maxWidth</li><li>minWidth</li><li>showDelay</li><li>trackMouse</li></ul></div><p style="font-weight: bold">Target element configs (optional unless otherwise noted)</p><div class="mdetail-params"><ul><li>autoHide</li><li>cls</li><li>dismissDelay (overrides singleton value)</li><li>target (required)</li><li>text (required)</li><li>title</li><li>width</li></ul></div><p>Here is an example showing how some of these config options could be used:</p><pre><code>// Init the singleton.  Any tag-based quick tips will start working.
 Ext.QuickTips.init();

 // Apply a set of config properties to the singleton
 Ext.apply(Ext.QuickTips.getQuickTip(), {
 maxWidth: 200,
 minWidth: 100,
 showDelay: 50,      // Show 50ms after entering target
 trackMouse: true
 });

 // Manually register a quick tip for a specific element
 Ext.QuickTips.register({
 target: 'my-div',
 title: 'My Tooltip',
 text: 'This tooltip was added in code',
 width: 100,
 dismissDelay: 10000 // Hide after 10 seconds hover
 });
 </code></pre><p>To register a quick tip in markup, you simply add one or more of the valid QuickTip attributes prefixed with the <b>ext:</b> namespace. The HTML element itself is automatically set as the quick tip target. Here is the summary of supported attributes (optional unless otherwise noted):</p><ul><li><b>hide</b>: Specifying "user" is equivalent to setting autoHide = false. Any other value will be the same as autoHide = true.</li><li><b>qclass</b>: A CSS class to be applied to the quick tip (equivalent to the 'cls' target element config).</li><li><b>qtip (required)</b>: The quick tip text (equivalent to the 'text' target element config).</li><li><b>qtitle</b>: The quick tip title (equivalent to the 'title' target element config).</li><li><b>qwidth</b>: The quick tip width (equivalent to the 'width' target element config).</li></ul><p>Here is an example of configuring an HTML element to display a tooltip from markup:</p><pre><code>// Add a quick tip to an HTML button
 &lt;input type="button" value="OK" ext:qtitle="OK Button" ext:qwidth="100"
 ext:qtip="This is a quick tip from markup!"&gt;&lt;/input&gt;
 </code></pre>
 *
 * <p>Copyright &#169; 2011 Sencha Inc.</p>
 *
 * @see ext.IQuickTips
 * @see http://docs.sencha.com/ext-js/3-4/#!/api/Ext.QuickTips Sencha Docs Ext JS 3.4
 */
public const QuickTips:IQuickTips;

}
