package ext.toolbar {
import ext.Element;

/**
 * A simple element that adds extra horizontal space between items in a toolbar.
 * By default a 2px wide space is added via css specification:<pre><code>
.x-toolbar .xtb-spacer {
    width&#58;2px;
}
 * </code></pre>
 * <p>Example usage:</p>
 * <pre><code>
new ext.Panel({
    tbar : [
        'Item 1',
        {xtype: 'tbspacer'}, // or ' '
        'Item 2',
        &#47;/ space width is also configurable via javascript
        {xtype: 'tbspacer', width: 50}, // add a 50px space
        'Item 3'
    ]
});
</code></pre>
*/
public class Spacer extends Item {
/**
 * @constructor
 * Creates a new Spacer
 * @xtype tbspacer
 */
public function Spacer() {
  super(null);
}
    /**
     * @cfg {Number} width
     * The width of the spacer in pixels (defaults to 2px via css style <code>.x-toolbar .xtb-spacer</code>).
     */
    override protected native function onRender(container : Element, position : Element) : void;
}}
