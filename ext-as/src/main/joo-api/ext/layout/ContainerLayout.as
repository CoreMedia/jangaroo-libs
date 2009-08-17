package ext.layout {
import ext.Component;
import ext.Template;

/**
 * <p>The ContainerLayout class is the default layout manager delegated by <b class='link'>ext.Container</b> to
 * render any child Components when no <tt><b class='link' title='ext.Container#layout'>layout</b></tt> is configured into
 * a <b class='link' title='ext.Container'>Container</b>. ContainerLayout provides the basic foundation for all other layout
 * classes in Ext. It simply renders all child Components into the Container, performing no sizing or
 * positioning services. To utilize a layout that provides sizing and positioning of child Components,
 * specify an appropriate <tt><b class='link' title='ext.Container#layout'>layout</b></tt>.</p>
 * <p>This class is intended to be extended or created via the <tt><b class='link' title='ext.Container#layout'>layout</b></tt>
 * configuration property.  See <tt><b class='link'>ext.Container#layout</b></tt> for additional details.</p>
 */
    /**
*/
public class ContainerLayout {
/**
     * @cfg {String} extraCls
     * <p>An optional extra CSS class that will be added to the container. This can be useful for adding
     * customized styles to the container or any of its children using standard CSS rules. See
     * <b class='link'>ext.Component</b>.<b class='link' title='ext.Component#ctCls'>ctCls</b> also.</p>
     * <p><b>Note</b>: <tt>extraCls</tt> defaults to <tt>''</tt> except for the following classes
     * which assign a value by default:
     * <div class="mdetail-params"><ul>
     * <li><b class='link' title='Ext.layout.AbsoluteLayout Absolute'>Layout</b> : <tt>'x-abs-layout-item'</tt></li>
     * <li><b class='link' title='Ext.layout.Box Box'>Layout</b> : <tt>'x-box-item'</tt></li>
     * <li><b class='link' title='Ext.layout.ColumnLayout Column'>Layout</b> : <tt>'x-column'</tt></li>
     * </ul></div>
     * To configure the above Classes with an extra CSS class append to the default.  For example,
     * for ColumnLayout:<pre><code>
     * extraCls: 'x-column custom-class'
     * </code></pre>
     * </p>
     */
    /**
     * @cfg {Boolean} renderHidden
     * True to hide each contained item on render (defaults to false).
     */
    /**
     * A reference to the <b class='link'>ext.Component</b> that is active.  For example, <pre><code>
     * if(myPanel.layout.activeItem.id == 'item-1') { ... }
     * </code></pre>
     * <tt>activeItem</tt> only applies to layout styles that can display items one at a time
     * (like <b class='link'>Ext.layout.AccordionLayout</b>, <b class='link'>Ext.layout.CardLayout</b>
     * and <b class='link'>Ext.layout.FitLayout</b>).  Read-only.  Related to <b class='link'>ext.Container#activeItem</b>.
     * @property activeItem
     */
    protected var activeItem : Component;
    protected var monitorResize : Boolean;
    protected native function layout() : void;
    protected native function onLayout(ct, target) : void;
    protected native function isValidParent(c, target) : void;
    protected native function renderAll(ct, target) : void;
    protected native function renderItem(c, position, target) : void;
    protected native function configureItem(c, position) : void;
    protected native function onResize() : void;
    protected native function runLayout() : void;
    protected native function setContainer(ct) : void;
    protected native function parseMargins(v) : void;
    /**
     * The <b class='link' title='Template'>ext.Template</b> used by Field rendering layout classes (such as
     * <b class='link'>Ext.layout.FormLayout</b>) to create the DOM structure of a fully wrapped,
     * labeled and styled form Field. A default Template is supplied, but this may be
     * overriden to create custom field structures. The template processes values returned from
     * <b class='link'>Ext.layout.FormLayout#getTemplateArgs</b>.
     * @property fieldTpl
     */
    public var fieldTpl : Template;
    public native function destroy()  : void;
}}
