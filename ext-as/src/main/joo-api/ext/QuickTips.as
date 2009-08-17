package ext {
/**
 * <p>Provides attractive and customizable tooltips for any element. The QuickTips
 * singleton is used to configure and manage tooltips globally for multiple elements
 * in a generic manner.  To create individual tooltips with maximum customizability,
 * you should consider either <b class='link'>ext.Tip</b> or <b class='link'>ext.ToolTip</b>.</p>
 * <p>Quicktips can be configured via tag attributes directly in markup, or by
 * registering quick tips programmatically via the <b class='link'>#register</b> method.</p>
 * <p>The singleton's instance of <b class='link'>ext.QuickTip</b> is available via
 * <b class='link'>#getQuickTip</b>, and supports all the methods, and all the all the
 * configuration properties of ext.QuickTip. These settings will apply to all
 * tooltips shown by the singleton.</p>
 * <p>Below is the summary of the configuration properties which can be used.
 * For detailed descriptions see <b class='link'>#getQuickTip</b></p>
 * <p><b>QuickTips singleton configs (all are optional)</b></p>
 * <div class="mdetail-params"><ul><li>dismissDelay</li>
 * <li>hideDelay</li>
 * <li>maxWidth</li>
 * <li>minWidth</li>
 * <li>showDelay</li>
 * <li>trackMouse</li></ul></div>
 * <p><b>Target element configs (optional unless otherwise noted)</b></p>
 * <div class="mdetail-params"><ul><li>autoHide</li>
 * <li>cls</li>
 * <li>dismissDelay (overrides singleton value)</li>
 * <li>target (required)</li>
 * <li>text (required)</li>
 * <li>title</li>
 * <li>width</li></ul></div>
 * <p>Here is an example showing how some of these config options could be used:</p>
 * <pre><code>
// Init the singleton.  Any tag-based quick tips will start working.
ext.QuickTips.init();

// Apply a set of config properties to the singleton
Ext.apply(ext.QuickTips.getQuickTip(), {
    maxWidth: 200,
    minWidth: 100,
    showDelay: 50,
    trackMouse: true
});

// Manually register a quick tip for a specific element
ext.QuickTips.register({
    target: 'my-div',
    title: 'My Tooltip',
    text: 'This tooltip was added in code',
    width: 100,
    dismissDelay: 20
});
</code></pre>
 * <p>To register a quick tip in markup, you simply add one or more of the valid QuickTip attributes prefixed with
 * the <b>ext:</b> namespace.  The HTML element itself is automatically set as the quick tip target. Here is the summary
 * of supported attributes (optional unless otherwise noted):</p>
 * <ul><li><b>hide</b>: Specifying "user" is equivalent to setting autoHide = false.  Any other value will be the
 * same as autoHide = true.</li>
 * <li><b>qclass</b>: A CSS class to be applied to the quick tip (equivalent to the 'cls' target element config).</li>
 * <li><b>qtip (required)</b>: The quick tip text (equivalent to the 'text' target element config).</li>
 * <li><b>qtitle</b>: The quick tip title (equivalent to the 'title' target element config).</li>
 * <li><b>qwidth</b>: The quick tip width (equivalent to the 'width' target element config).</li></ul>
 * <p>Here is an example of configuring an HTML element to display a tooltip from markup:</p>
 * <pre><code>
// Add a quick tip to an HTML button
&lt;input type="button" value="OK" ext:qtitle="OK Button" ext:qwidth="100"
     ext:qtip="This is a quick tip from markup!">&lt;/input>
</code></pre>
*/
public class QuickTips {
/**
 * @singleton
 */
        /**
         * Initialize the global QuickTips instance and prepare any quick tips.
         * @param autoRender True to render the QuickTips container immediately to preload images. (Defaults to true) 
         */
        public static native function init(autoRender : Boolean) : void;
        /**
         * Enable quick tips globally.
         */
        public static native function enable() : void;
        /**
         * Disable quick tips globally.
         */
        public static native function disable() : void;
        /**
         * Returns true if quick tips are enabled, else false.
         * @return 
         */
        public static native function isEnabled() : Boolean;
        /**
         * Gets the global QuickTips instance.
         */
        public static native function getQuickTip() : void;
        /**
         * Configures a new quick tip instance and assigns it to a target element.  See
         * <b class='link'>ext.QuickTip#register</b> for details.
         * @param config The config object
         */
        public static native function register(config : Object) : void;
        /**
         * Removes any registered quick tip from the target element and destroys it.
         * @param el The element from which the quick tip is to be removed.
         */
        public static native function unregister(el : *) : void;
        /**
         * Alias of <b class='link'>#register</b>.
         * @param config The config object
         */
        public static native function tips(config : Object) : void;
}}
