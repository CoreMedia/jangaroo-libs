package ext.layout {
/**
 * <p>This layout manager is specifically designed for rendering and managing child Components of
 * <b class='link' title='ext.form.FormPanel'>forms</b>. It is responsible for rendering the labels of
 * <b class='link' title='ext.form.Field'>Field</b>s.</p>
 *
 * <p>This layout manager is used when a Container is configured with the <code>layout:'form'</code>
 * <b class='link' title='ext.Container#layout'>layout</b> config option, and should generally not need to be created directly
 * via the new keyword. See <code><b class='link'>ext.Container#layout</b></code> for additional details.</p>
 *
 * <p>In an application, it will usually be preferrable to use a <b class='link' title='ext.form.FormPanel'>FormPanel</b>
 * (which is configured with FormLayout as its layout class by default) since it also provides built-in
 * functionality for <b class='link' title='ext.form.BasicForm#doAction loading, validating and'>submitting</b> the form.</p>
 *
 * <p>A <b class='link' title='ext.Container'>Container</b> <i>using</i> the FormLayout layout manager (e.g.
 * <b class='link'>ext.form.FormPanel</b> or specifying <code>layout:'form'</code>) can also accept the following
 * layout-specific config properties:<div class="mdetail-params"><ul>
 * <li><b><code><b class='link' title='ext.form.FormPanel#hideLabels'>hideLabels</b></code></b></li>
 * <li><b><code><b class='link' title='ext.form.FormPanel#labelAlign'>labelAlign</b></code></b></li>
 * <li><b><code><b class='link' title='ext.form.FormPanel#labelPad'>labelPad</b></code></b></li>
 * <li><b><code><b class='link' title='ext.form.FormPanel#labelSeparator'>labelSeparator</b></code></b></li>
 * <li><b><code><b class='link' title='ext.form.FormPanel#labelWidth'>labelWidth</b></code></b></li>
 * </ul></div></p>
 *
 * <p>Any Component (including Fields) managed by FormLayout accepts the following as a config option:
 * <div class="mdetail-params"><ul>
 * <li><b><code><b class='link' title='ext.Component#anchor'>anchor</b></code></b></li>
 * </ul></div></p>
 *
 * <p>Any Component managed by FormLayout may be rendered as a form field (with an associated label) by
 * configuring it with a non-null <b><code><b class='link' title='ext.Component#fieldLabel'>fieldLabel</b></code></b>. Components configured
 * in this way may be configured with the following options which affect the way the FormLayout renders them:
 * <div class="mdetail-params"><ul>
 * <li><b><code><b class='link' title='ext.Component#clearCls'>clearCls</b></code></b></li>
 * <li><b><code><b class='link' title='ext.Component#fieldLabel'>fieldLabel</b></code></b></li>
 * <li><b><code><b class='link' title='ext.Component#hideLabel'>hideLabel</b></code></b></li>
 * <li><b><code><b class='link' title='ext.Component#itemCls'>itemCls</b></code></b></li>
 * <li><b><code><b class='link' title='ext.Component#labelSeparator'>labelSeparator</b></code></b></li>
 * <li><b><code><b class='link' title='ext.Component#labelStyle'>labelStyle</b></code></b></li>
 * </ul></div></p>
 *
 * <p>Example usage:</p>
 * <pre><code>
&#47;/ Required if showing validation messages
ext.QuickTips.init();

&#47;/ While you can create a basic Panel with layout:'form', practically
&#47;/ you should usually use a FormPanel to also get its form functionality
&#47;/ since it already creates a FormLayout internally.
var form = new ext.form.FormPanel({
    title&#58; 'Form Layout',
    bodyStyle&#58; 'padding:15px',
    width&#58; 350,
    defaultType&#58; 'textfield',
    defaults&#58; {
        &#47;/ applied to each contained item
        width&#58; 230,
        msgTarget&#58; 'side'
    },
    items&#58; [{
            fieldLabel&#58; 'First Name',
            name&#58; 'first',
            allowBlank&#58; false,
            <b class='link' title='ext.Component#labelSeparator'>labelSeparator</b>: ':' // override labelSeparator layout config
        },{
            fieldLabel&#58; 'Last Name',
            name&#58; 'last'
        },{
            fieldLabel&#58; 'Email',
            name&#58; 'email',
            vtype&#58;'email'
        }, {
            xtype&#58; 'textarea',
            hideLabel&#58; true,     // override hideLabels layout config
            name&#58; 'msg',
            anchor&#58; '100% -53'
        }
    ],
    buttons&#58; [
        {text: 'Save'},
        {text: 'Cancel'}
    ],
    layoutConfig&#58; {
        <b class='link' title='#labelSeparator'>labelSeparator</b>: '~' // superseded by assignment below
    },
    &#47;/ config options applicable to container when layout='form':
    hideLabels&#58; false,
    labelAlign&#58; 'left',   // or 'right' or 'top'
    <b class='link' title='ext.form.FormPanel#labelSeparator'>labelSeparator</b>: '>>', // takes precedence over layoutConfig value
    labelWidth&#58; 65,       // defaults to 100
    labelPad&#58; 8           // defaults to 5, must specify labelWidth to be honored
});
</code></pre>
 */
    public class FormLayout extends AnchorLayout {
/**
     * @cfg {String} labelSeparator
     * See <b class='link'>ext.form.FormPanel</b>.<b class='link' title='ext.form.FormPanel#labelSeparator'>labelSeparator</b>.  Configuration
     * of this property at the <b>container</b> level takes precedence.
     */
    public var labelSeparator ;
    /**
     * Read only. The CSS style specification string added to field labels in this layout if not
     * otherwise <b class='link' title='ext.Component#labelStyle specified by each contained'>field</b>.
     * @property labelStyle
     */
    override protected native function setContainer(ct) : void;
    protected native function getLabelStyle(s) : void;
    /**
     * @cfg {ext.Template} fieldTpl
     * A <b class='link' title='ext.Template#compile'>compile</b>d <b class='link'>ext.Template</b> for rendering
     * the fully wrapped, labeled and styled form Field. Defaults to:</p><pre><code>
new ext.Template(
    &#39;&lt;div class="x-form-item {itemCls}" tabIndex="-1">&#39;,
        &#39;&lt;&#108;abel for="{id}" style="{labelStyle}" class="x-form-item-&#108;abel">{&#108;abel}{labelSeparator}&lt;/&#108;abel>&#39;,
        &#39;&lt;div class="x-form-element" id="x-form-el-{id}" style="{elementStyle}">&#39;,
        &#39;&lt;/div>&lt;div class="{clearCls}">&lt;/div>&#39;,
    '&lt;/div>'
);
</code></pre>
     * <p>This may be specified to produce a different DOM structure when rendering form Fields.</p>
     * <p>A description of the properties within the template follows:</p><div class="mdetail-params"><ul>
     * <li><b><code>itemCls</code></b> : String<div class="sub-desc">The CSS class applied to the outermost div wrapper
     * that contains this field label and field element (the default class is <code>'x-form-item'</code> and <code>itemCls</code>
     * will be added to that). If supplied, <code>itemCls</code> at the field level will override the default <code>itemCls</code>
     * supplied at the container level.</div></li>
     * <li><b><code>id</code></b> : String<div class="sub-desc">The id of the Field</div></li>
     * <li><b><code><b class='link' title='#labelStyle'>labelStyle</b></code></b> : String<div class="sub-desc">
     * A CSS style specification string to add to the field label for this field (defaults to <code>''</code> or the
     * <b class='link' title='#labelStyle layout's value for'><code>labelStyle</code></b>).</div></li>
     * <li><b><code>label</code></b> : String<div class="sub-desc">The text to display as the label for this
     * field (defaults to <code>''</code>)</div></li>
     * <li><b><code><b class='link' title='#labelSeparator'>labelSeparator</b></code></b> : String<div class="sub-desc">The separator to display after
     * the text of the label for this field (defaults to a colon <code>':'</code> or the
     * <b class='link' title='#labelSeparator layout's value for'>labelSeparator</b>). To hide the separator use empty string ''.</div></li>
     * <li><b><code>elementStyle</code></b> : String<div class="sub-desc">The styles text for the input element's wrapper.</div></li>
     * <li><b><code>clearCls</code></b> : String<div class="sub-desc">The CSS class to apply to the special clearing div
     * rendered directly after each form field wrapper (defaults to <code>'x-form-clear-left'</code>)</div></li>
     * </ul></div>
     * <p>Also see <code><b class='link' title='#getTemplateArgs'>getTemplateArgs</b></code></p>
     */
    override protected native function renderItem(c, position, target) : void;
    /**
     * <p>Provides template arguments for rendering the fully wrapped, labeled and styled form Field.</p>
     * <p>This method returns an object hash containing properties used by the layout's <b class='link' title='#fieldTpl'>fieldTpl</b>
     * to create a correctly wrapped, labeled and styled form Field. This may be overriden to
     * create custom layouts. The properties which must be returned are:</p><div class="mdetail-params"><ul>
     * <li><b><code>itemCls</code></b> : String<div class="sub-desc">The CSS class applied to the outermost div wrapper
     * that contains this field label and field element (the default class is <code>'x-form-item'</code> and <code>itemCls</code>
     * will be added to that). If supplied, <code>itemCls</code> at the field level will override the default <code>itemCls</code>
     * supplied at the container level.</div></li>
     * <li><b><code>id</code></b> : String<div class="sub-desc">The id of the Field</div></li>
     * <li><b><code><b class='link' title='#labelStyle'>labelStyle</b></code></b> : String<div class="sub-desc">
     * A CSS style specification string to add to the field label for this field (defaults to <code>''</code> or the
     * <b class='link' title='#labelStyle layout's value for'><code>labelStyle</code></b>).</div></li>
     * <li><b><code>label</code></b> : String<div class="sub-desc">The text to display as the label for this
     * field (defaults to <code>''</code>)</div></li>
     * <li><b><code><b class='link' title='#labelSeparator'>labelSeparator</b></code></b> : String<div class="sub-desc">The separator to display after
     * the text of the label for this field (defaults to a colon <code>':'</code> or the
     * <b class='link' title='#labelSeparator layout's value for'>labelSeparator</b>). To hide the separator use empty string ''.</div></li>
     * <li><b><code>elementStyle</code></b> : String<div class="sub-desc">The styles text for the input element's wrapper.</div></li>
     * <li><b><code>clearCls</code></b> : String<div class="sub-desc">The CSS class to apply to the special clearing div
     * rendered directly after each form field wrapper (defaults to <code>'x-form-clear-left'</code>)</div></li>
     * </ul></div>
     * @param field The <b class='link' title='Field'>ext.form.Field</b> being rendered.
     * @return An object hash containing the properties required to render the Field.
     */
    public native function getTemplateArgs(field) : Object;
    override protected native function adjustWidthAnchor(value, comp) : void;
    override protected native function isValidParent(c, target) : void;
    /**
     * @property activeItem
     * @hide
     */
}}
