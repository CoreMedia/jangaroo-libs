package ext.config {


/**
 * A combobox control with support for autocomplete, remote-loading, paging and many other features.
 <p>A ComboBox works in a similar manner to a traditional HTML &lt;select&gt; field. The difference is that to submit the <a href="output/Ext.form.ComboBox.html#Ext.form.ComboBox-valueField">valueField</a>, you must specify a <a href="output/Ext.form.ComboBox.html#Ext.form.ComboBox-hiddenName">hiddenName</a> to create a hidden input field to hold the value of the valueField. The <i><a href="output/Ext.form.ComboBox.html#Ext.form.ComboBox-displayField">displayField</a></i> is shown in the text field which is named according to the <a href="output/Ext.form.ComboBox.html#Ext.form.ComboBox-name">name</a>.</p><p style="font-weight: bold"><u>Events</u></p><p>To do something when something in ComboBox is selected, configure the select event:</p><pre><code>var cb = new Ext.form.ComboBox({
 // all of your config options
 listeners:{
 scope: yourScope,
 'select': yourFunction
 }
 });

 // Alternatively, you can assign events after the object is created:
 var cb = new Ext.form.ComboBox(yourOptions);
 cb.on('select', yourFunction, yourScope);
 </code></pre><br/><br/> <p style="font-weight: bold"><u>ComboBox in Grid</u></p><p>If using a ComboBox in an <a href="Ext.grid.EditorGridPanel.html">Editor Grid</a> a <a href="output/Ext.grid.Column.html#Ext.grid.Column-renderer">renderer</a> will be needed to show the displayField when the editor is not active. Set up the renderer manually, or implement a reusable render, for example:</p><pre><code>// create reusable renderer
 Ext.util.Format.comboRenderer = function(combo){
 return function(value){
 var record = combo.findRecord(combo.<a href="output/Ext.form.ComboBox.html#Ext.form.ComboBox-valueField">valueField</a>, value);
 return record ? record.get(combo.<a href="output/Ext.form.ComboBox.html#Ext.form.ComboBox-displayField">displayField</a>) : combo.<a href="output/Ext.form.ComboBox.html#Ext.form.ComboBox-valueNotFoundText">valueNotFoundText</a>;
 }
 }

 // create the combo instance
 var combo = new Ext.form.ComboBox({
 <a href="output/Ext.form.ComboBox.html#Ext.form.ComboBox-typeAhead">typeAhead</a>: true,
 <a href="output/Ext.form.ComboBox.html#Ext.form.ComboBox-triggerAction">triggerAction</a>: 'all',
 <a href="output/Ext.form.ComboBox.html#Ext.form.ComboBox-lazyRender">lazyRender</a>:true,
 <a href="output/Ext.form.ComboBox.html#Ext.form.ComboBox-mode">mode</a>: 'local',
 <a href="output/Ext.form.ComboBox.html#Ext.form.ComboBox-store">store</a>: new Ext.data.ArrayStore({
 id: 0,
 fields: [
 'myId',
 'displayText'
 ],
 data: [[1, 'item1'], [2, 'item2']]
 }),
 <a href="output/Ext.form.ComboBox.html#Ext.form.ComboBox-valueField">valueField</a>: 'myId',
 <a href="output/Ext.form.ComboBox.html#Ext.form.ComboBox-displayField">displayField</a>: 'displayText'
 });

 // snippet of column model used within grid
 var cm = new Ext.grid.ColumnModel([{
 ...
 },{
 header: "Some Header",
 dataIndex: 'whatever',
 width: 130,
 editor: combo, // specify reference to combo instance
 renderer: Ext.util.Format.comboRenderer(combo) // pass combo instance to reusable renderer
 },
 ...
 ]);
 </code></pre><br/><br/> <p style="font-weight: bold"><u>Filtering</u></p><p>A ComboBox <a href="output/Ext.form.ComboBox.html#Ext.form.ComboBox-doQuery">uses filtering itself</a>, for information about filtering the ComboBox store manually see <tt><a href="output/Ext.form.ComboBox.html#Ext.form.ComboBox-lastQuery">lastQuery</a></tt>.</p>
 * <p>This class serves as a typed config object for constructor of class ComboBox.</p>
 *
 * @see ext.form.ComboBox
 */
[ExtConfig(target="ext.form.ComboBox")]
public class combo extends trigger {

  public function combo(config:Object = null) {

    super(config);
  }


  /**
   The text query to send to the server to return all records for the list with no filtering (defaults to '')
   */
  public native function get allQuery():String;

  /**
   * @private
   */
  public native function set allQuery(value:String):void;

  /**
   A <a href="Ext.DomHelper.html">DomHelper</a> element spec, or <tt>true</tt> for a default element spec. Used to create the <a href="output/Ext.Component.html#Ext.Component-getEl">Element</a> which will encapsulate this Component. See <tt><a href="output/Ext.Component.html#Ext.Component-autoEl">autoEl</a></tt> for details. Defaults to:
   <pre><code>{tag: "input", type: "text", size: "24", autocomplete: "off"}</code></pre>
   */
  override public native function get autoCreate():*;

  /**
   * @private
   */
  override public native function set autoCreate(value:*):void;

  /**
   <tt>true</tt> to select the first result gathered by the data store (defaults to <tt>true</tt>). A false value would require a manual selection from the dropdown list to set the components value unless the value of (<a href="output/Ext.form.ComboBox.html#Ext.form.ComboBox-typeAheadDelay">typeAheadDelay</a>) were true.
   */
  public native function get autoSelect():Boolean;

  /**
   * @private
   */
  public native function set autoSelect(value:Boolean):void;

  /**
   <tt>true</tt> to clear any filters on the store (when in local mode) when reset is called (defaults to <tt>true</tt>)
   */
  public native function get clearFilterOnReset():Boolean;

  /**
   * @private
   */
  public native function set clearFilterOnReset(value:Boolean):void;

  /**
   The underlying <a href="output/Ext.data.Field.html#Ext.data.Field-name">data field name</a> to bind to this ComboBox (defaults to undefined if <tt><a href="output/Ext.form.ComboBox.html#Ext.form.ComboBox-mode">mode</a> = 'remote'</tt> or <tt>'field1'</tt> if <a href="output/Ext.form.ComboBox.html#Ext.form.ComboBox-transform">transforming a select</a> or if the <a href="output/Ext.form.ComboBox.html#Ext.form.ComboBox-store">field name is autogenerated based on the store configuration</a>). <p>See also <tt><a href="output/Ext.form.ComboBox.html#Ext.form.ComboBox-valueField">valueField</a></tt>.</p><p><b>Note</b>: if using a ComboBox in an <a href="Ext.grid.EditorGridPanel.html">Editor Grid</a> a <a href="output/Ext.grid.Column.html#Ext.grid.Column-renderer">renderer</a> will be needed to show the displayField when the editor is not active.</p>
   */
  public native function get displayField():String;

  /**
   * @private
   */
  public native function set displayField(value:String):void;

  /**
   <tt>true</tt> to restrict the selected value to one of the values in the list, <tt>false</tt> to allow the user to set arbitrary text into the field (defaults to <tt>false</tt>)
   */
  public native function get forceSelection():Boolean;

  /**
   * @private
   */
  public native function set forceSelection(value:Boolean):void;

  /**
   The height in pixels of the dropdown list resize handle if <tt><a href="output/Ext.form.ComboBox.html#Ext.form.ComboBox-resizable">resizable</a> = true</tt> (defaults to <tt>8</tt>)
   */
  public native function get handleHeight():Number;

  /**
   * @private
   */
  public native function set handleHeight(value:Number):void;

  /**
   If <tt><a href="output/Ext.form.ComboBox.html#Ext.form.ComboBox-hiddenName">hiddenName</a></tt> is specified, <tt>hiddenId</tt> can also be provided to give the hidden field a unique id. The <tt>hiddenId</tt> and combo <a href="output/Ext.Component.html#Ext.Component-id">id</a> should be different, since no two DOM nodes should share the same id.
   */
  public native function get hiddenId():String;

  /**
   * @private
   */
  public native function set hiddenId(value:String):void;

  /**
   If specified, a hidden form field with this name is dynamically generated to store the field's data value (defaults to the underlying DOM element's name). Required for the combo's value to automatically post during a form submission. See also <a href="output/Ext.form.ComboBox.html#Ext.form.ComboBox-valueField">valueField</a>.
   */
  public native function get hiddenName():String;

  /**
   * @private
   */
  public native function set hiddenName(value:String):void;

  /**
   Sets the initial value of the hidden field if <a href="output/Ext.form.ComboBox.html#Ext.form.ComboBox-hiddenName">hiddenName</a> is specified to contain the selected <a href="output/Ext.form.ComboBox.html#Ext.form.ComboBox-valueField">valueField</a>, from the Store. Defaults to the configured <tt><a href="output/Ext.form.Field.html#Ext.form.Field-value">value</a></tt>.
   */
  public native function get hiddenValue():String;

  /**
   * @private
   */
  public native function set hiddenValue(value:String):void;

  /**
   A simple CSS selector (e.g. div.some-class or span:first-child) that will be used to determine what nodes the <a href="output/Ext.form.ComboBox.html#Ext.form.ComboBox-view">Ext.DataView</a> which handles the dropdown display will be working with.
   <p><b>Note</b>: this setting is <b>required</b> if a custom XTemplate has been specified in <a href="output/Ext.form.ComboBox.html#Ext.form.ComboBox-tpl">tpl</a> which assigns a class other than</p><pre>'x-combo-list-item'</pre>to dropdown list items
   */
  public native function get itemSelector():String;

  /**
   * @private
   */
  public native function set itemSelector(value:String):void;

  /**
   <tt>true</tt> to not initialize the list for this combo until the field is focused (defaults to <tt>true</tt>)
   */
  public native function get lazyInit():Boolean;

  /**
   * @private
   */
  public native function set lazyInit(value:Boolean):void;

  /**
   <tt>true</tt> to prevent the ComboBox from rendering until requested (should always be used when rendering into an <a href="Ext.Editor.html">Ext.Editor</a> (e.g. <a href="Ext.grid.EditorGridPanel.html">Grids</a>), defaults to <tt>false</tt>).
   */
  public native function get lazyRender():Boolean;

  /**
   * @private
   */
  public native function set lazyRender(value:Boolean):void;

  /**
   A valid anchor position value. See <tt><a href="output/Ext.Element.html#Ext.Element-alignTo">Ext.Element.alignTo</a></tt> for details on supported anchor positions and offsets. To specify x/y offsets as well, this value may be specified as an Array of <tt><a href="output/Ext.Element.html#Ext.Element-alignTo">Ext.Element.alignTo</a></tt> method arguments.<br/><br/> <pre><code>[ 'tl-bl?', [6,0] ]</code></pre>(defaults to <tt>'tl-bl?'</tt>)
   */
  public native function get listAlign():*;

  /**
   * @private
   */
  public native function set listAlign(value:*):void;

  /**
   The CSS class to add to the predefined <tt>'x-combo-list'</tt> class applied the dropdown list element (defaults to '').
   */
  public native function get listClass():String;

  /**
   * @private
   */
  public native function set listClass(value:String):void;

  /**
   The empty text to display in the data view if no items are found. (defaults to '')
   */
  public native function get listEmptyText():String;

  /**
   * @private
   */
  public native function set listEmptyText(value:String):void;

  /**
   The width (used as a parameter to <a href="output/Ext.Element.html#Ext.Element-setWidth">Ext.Element.setWidth</a>) of the dropdown list (defaults to the width of the ComboBox field). See also <tt><a href="output/Ext.form.ComboBox.html#Ext.form.ComboBox-minListWidth">minListWidth</a></tt>
   */
  public native function get listWidth():Number;

  /**
   * @private
   */
  public native function set listWidth(value:Number):void;

  /**
   The text to display in the dropdown list while data is loading. Only applies when <tt><a href="output/Ext.form.ComboBox.html#Ext.form.ComboBox-mode">mode</a> = 'remote'</tt> (defaults to <tt>'Loading...'</tt>)
   */
  public native function get loadingText():String;

  /**
   * @private
   */
  public native function set loadingText(value:String):void;

  /**
   The maximum height in pixels of the dropdown list before scrollbars are shown (defaults to <tt>300</tt>)
   */
  public native function get maxHeight():Number;

  /**
   * @private
   */
  public native function set maxHeight(value:Number):void;

  /**
   The minimum number of characters the user must type before autocomplete and <a href="output/Ext.form.ComboBox.html#Ext.form.ComboBox-typeAhead">typeAhead</a> activate (defaults to <tt>4</tt> if <tt><a href="output/Ext.form.ComboBox.html#Ext.form.ComboBox-mode">mode</a> = 'remote'</tt> or <tt>0</tt> if <tt><a href="output/Ext.form.ComboBox.html#Ext.form.ComboBox-mode">mode</a> = 'local'</tt>, does not apply if <tt><a href="output/Ext.form.TriggerField.html#Ext.form.TriggerField-editable">editable</a> = false</tt>).
   */
  public native function get minChars():Number;

  /**
   * @private
   */
  public native function set minChars(value:Number):void;

  /**
   The minimum height in pixels of the dropdown list when the list is constrained by its distance to the viewport edges (defaults to <tt>90</tt>)
   */
  public native function get minHeight():Number;

  /**
   * @private
   */
  public native function set minHeight(value:Number):void;

  /**
   The minimum width of the dropdown list in pixels (defaults to <tt>70</tt>, will be ignored if <tt><a href="output/Ext.form.ComboBox.html#Ext.form.ComboBox-listWidth">listWidth</a></tt> has a higher value)
   */
  public native function get minListWidth():Number;

  /**
   * @private
   */
  public native function set minListWidth(value:Number):void;

  /**
   Acceptable values are: <div class="mdetail-params"><ul><li><b><tt>'remote'</tt></b> : <b>Default</b> <p class="sub-desc">Automatically loads the <tt><a href="output/Ext.form.ComboBox.html#Ext.form.ComboBox-store">store</a></tt> the <b>first</b> time the trigger is clicked. If you do not want the store to be automatically loaded the first time the trigger is clicked, set to <tt>'local'</tt> and manually load the store. To force a requery of the store <b>every</b> time the trigger is clicked see <tt><a href="output/Ext.form.ComboBox.html#Ext.form.ComboBox-lastQuery">lastQuery</a></tt>.</p></li><li><b><tt>'local'</tt></b> : <p class="sub-desc">ComboBox loads local data</p><pre><code>var combo = new Ext.form.ComboBox({
   renderTo: document.body,
   mode: 'local',
   store: new Ext.data.ArrayStore({
   id: 0,
   fields: [
   'myId',  // numeric value is the key
   'displayText'
   ],
   data: [[1, 'item1'], [2, 'item2']]  // data is local
   }),
   valueField: 'myId',
   displayField: 'displayText',
   triggerAction: 'all'
   });
   </code></pre></li></ul></div>
   */
  public native function get mode():String;

  /**
   * @private
   */
  public native function set mode(value:String):void;

  /**
   If greater than <tt>0</tt>, a <a href="Ext.PagingToolbar.html">Ext.PagingToolbar</a> is displayed in the footer of the dropdown list and the <a href="output/Ext.form.ComboBox.html#Ext.form.ComboBox-doQuery">filter queries</a> will execute with page start and <a href="output/Ext.PagingToolbar.html#Ext.PagingToolbar-pageSize">limit</a> parameters. Only applies when <tt><a href="output/Ext.form.ComboBox.html#Ext.form.ComboBox-mode">mode</a> = 'remote'</tt> (defaults to <tt>0</tt>).
   */
  public native function get pageSize():Number;

  /**
   * @private
   */
  public native function set pageSize(value:Number):void;

  /**
   The length of time in milliseconds to delay between the start of typing and sending the query to filter the dropdown list (defaults to <tt>500</tt> if <tt><a href="output/Ext.form.ComboBox.html#Ext.form.ComboBox-mode">mode</a> = 'remote'</tt> or <tt>10</tt> if <tt><a href="output/Ext.form.ComboBox.html#Ext.form.ComboBox-mode">mode</a> = 'local'</tt>)
   */
  public native function get queryDelay():Number;

  /**
   * @private
   */
  public native function set queryDelay(value:Number):void;

  /**
   Name of the query (<a href="output/Ext.data.Store.html#Ext.data.Store-baseParam">baseParam</a> name for the store) as it will be passed on the querystring (defaults to <tt>'query'</tt>)
   */
  public native function get queryParam():String;

  /**
   * @private
   */
  public native function set queryParam(value:String):void;

  /**
   <tt>true</tt> to add a resize handle to the bottom of the dropdown list (creates an <a href="Ext.Resizable.html">Ext.Resizable</a> with 'se' <a href="output/Ext.Resizable.html#Ext.Resizable-pinned">pinned</a> handles). Defaults to <tt>false</tt>.
   */
  public native function get resizable():Boolean;

  /**
   * @private
   */
  public native function set resizable(value:Boolean):void;

  /**
   <tt>true</tt> to select any existing text in the field immediately on focus. Only applies when <tt><a href="output/Ext.form.TriggerField.html#Ext.form.TriggerField-editable">editable</a> = true</tt> (defaults to <tt>false</tt>).
   */
  override public native function get selectOnFocus():Boolean;

  /**
   * @private
   */
  override public native function set selectOnFocus(value:Boolean):void;

  /**
   CSS class to apply to the selected item in the dropdown list (defaults to <tt>'x-combo-selected'</tt>)
   */
  public native function get selectedClass():String;

  /**
   * @private
   */
  public native function set selectedClass(value:String):void;

  /**
   <tt>true</tt> or <tt>"sides"</tt> for the default effect, <tt>"frame"</tt> for 4-way shadow, and <tt>"drop"</tt> for bottom-right
   */
  public native function get shadow():*;

  /**
   * @private
   */
  public native function set shadow(value:*):void;

  /**
   The data source to which this combo is bound (defaults to <tt>undefined</tt>). Acceptable values for this property are: <div class="mdetail-params"><ul><li><b>any <a href="Ext.data.Store.html">Store</a> subclass</b></li><li><b>an Array</b> : Arrays will be converted to a <a href="Ext.data.ArrayStore.html">Ext.data.ArrayStore</a> internally, automatically generating <a href="output/Ext.data.Field.html#Ext.data.Field-name">field names</a> to work with all data components. <div class="mdetail-params"><ul><li><b>1-dimensional array</b> : (e.g., <tt>['Foo','Bar']</tt>)<div class="sub-desc">A 1-dimensional array will automatically be expanded (each array item will be used for both the combo <a href="output/Ext.form.ComboBox.html#Ext.form.ComboBox-valueField">valueField</a> and <a href="output/Ext.form.ComboBox.html#Ext.form.ComboBox-displayField">displayField</a>)</div></li><li><b>2-dimensional array</b> : (e.g., <tt>[['f','Foo'],['b','Bar']]</tt>)<div class="sub-desc">For a multi-dimensional array, the value in index 0 of each item will be assumed to be the combo <a href="output/Ext.form.ComboBox.html#Ext.form.ComboBox-valueField">valueField</a>, while the value at index 1 is assumed to be the combo <a href="output/Ext.form.ComboBox.html#Ext.form.ComboBox-displayField">displayField</a>.</div></li></ul></div></li></ul></div><p>See also <tt><a href="output/Ext.form.ComboBox.html#Ext.form.ComboBox-mode">mode</a></tt>.</p>
   */
  public native function get store():*;

  /**
   * @private
   */
  public native function set store(value:*):void;

  /**
   False to clear the name attribute on the field so that it is not submitted during a form post. If a hiddenName is specified, setting this to true will cause both the hidden field and the element to be submitted. Defaults to <tt>undefined</tt>.
   */
  override public native function get submitValue():Boolean;

  /**
   * @private
   */
  override public native function set submitValue(value:Boolean):void;

  /**
   If supplied, a header element is created containing this text and added into the top of the dropdown list (defaults to undefined, with no header element)
   */
  public native function get title():String;

  /**
   * @private
   */
  public native function set title(value:String):void;

  /**
   The template string, or <a href="Ext.XTemplate.html">Ext.XTemplate</a> instance to use to display each item in the dropdown list. The dropdown list is displayed in a DataView. See <a href="output/Ext.form.ComboBox.html#Ext.form.ComboBox-view">view</a>.
   <p>The default template string is:</p><pre><code>                 '&lt;tpl for="."&gt;&lt;div class="x-combo-list-item"&gt;{' + this.displayField + '}&lt;/div&gt;&lt;/tpl&gt;'
   </code></pre><p>Override the default value to create custom UI layouts for items in the list. For example:</p><pre><code>                 '&lt;tpl for="."&gt;&lt;div ext:qtip="{state}. {nick}" class="x-combo-list-item"&gt;{state}&lt;/div&gt;&lt;/tpl&gt;'
   </code></pre><p>The template <b>must</b> contain one or more substitution parameters using field names from the Combo's <a href="output/Ext.form.ComboBox.html#Ext.form.ComboBox-store">Store</a>. In the example above an</p><pre>ext:qtip</pre>attribute is added to display other fields from the Store.<br/><br/> <p>To preserve the default visual look of list items, add the CSS class name</p><pre>x-combo-list-item</pre>to the template's container element.<br/><br/> <p>Also see <a href="output/Ext.form.ComboBox.html#Ext.form.ComboBox-itemSelector">itemSelector</a> for additional details.</p>
   */
  override public native function get tpl():*;

  /**
   * @private
   */
  override public native function set tpl(value:*):void;

  /**
   The id, DOM node or element of an existing HTML SELECT to convert to a ComboBox. Note that if you specify this and the combo is going to be in an <a href="Ext.form.BasicForm.html">Ext.form.BasicForm</a> or <a href="Ext.form.FormPanel.html">Ext.form.FormPanel</a>, you must also set <tt><a href="output/Ext.form.ComboBox.html#Ext.form.ComboBox-lazyRender">lazyRender</a> = true</tt>.
   */
  public native function get transform():*;

  /**
   * @private
   */
  public native function set transform(value:*):void;

  /**
   The action to execute when the trigger is clicked. <div class="mdetail-params"><ul><li><b><tt>'query'</tt></b> : <b>Default</b> <p class="sub-desc"><a href="output/Ext.form.ComboBox.html#Ext.form.ComboBox-doQuery">run the query</a> using the <a href="output/Ext.form.Field.html#Ext.form.Field-getRawValue">raw value</a>.</p></li><li><b><tt>'all'</tt></b> : <p class="sub-desc"><a href="output/Ext.form.ComboBox.html#Ext.form.ComboBox-doQuery">run the query</a> specified by the <tt><a href="output/Ext.form.ComboBox.html#Ext.form.ComboBox-allQuery">allQuery</a></tt> config option</p></li></ul></div><p>See also <code><a href="output/Ext.form.ComboBox.html#Ext.form.ComboBox-queryParam">queryParam</a></code>.</p>
   */
  public native function get triggerAction():String;

  /**
   * @private
   */
  public native function set triggerAction(value:String):void;

  /**
   An additional CSS class used to style the trigger button. The trigger will always get the class <tt>'x-form-trigger'</tt> and <tt>triggerClass</tt> will be <b>appended</b> if specified (defaults to <tt>'x-form-arrow-trigger'</tt> which displays a downward arrow icon).
   */
  override public native function get triggerClass():String;

  /**
   * @private
   */
  override public native function set triggerClass(value:String):void;

  /**
   <tt>true</tt> to populate and autoselect the remainder of the text being typed after a configurable delay (<a href="output/Ext.form.ComboBox.html#Ext.form.ComboBox-typeAheadDelay">typeAheadDelay</a>) if it matches a known value (defaults to <tt>false</tt>)
   */
  public native function get typeAhead():Boolean;

  /**
   * @private
   */
  public native function set typeAhead(value:Boolean):void;

  /**
   The length of time in milliseconds to wait until the typeahead text is displayed if <tt><a href="output/Ext.form.ComboBox.html#Ext.form.ComboBox-typeAhead">typeAhead</a> = true</tt> (defaults to <tt>250</tt>)
   */
  public native function get typeAheadDelay():Number;

  /**
   * @private
   */
  public native function set typeAheadDelay(value:Number):void;

  /**
   The underlying <a href="output/Ext.data.Field.html#Ext.data.Field-name">data value name</a> to bind to this ComboBox (defaults to undefined if <tt><a href="output/Ext.form.ComboBox.html#Ext.form.ComboBox-mode">mode</a> = 'remote'</tt> or <tt>'field2'</tt> if <a href="output/Ext.form.ComboBox.html#Ext.form.ComboBox-transform">transforming a select</a> or if the <a href="output/Ext.form.ComboBox.html#Ext.form.ComboBox-store">field name is autogenerated based on the store configuration</a>). <p><b>Note</b>: use of a <tt>valueField</tt> requires the user to make a selection in order for a value to be mapped. See also <tt><a href="output/Ext.form.ComboBox.html#Ext.form.ComboBox-hiddenName">hiddenName</a></tt>, <tt><a href="output/Ext.form.ComboBox.html#Ext.form.ComboBox-hiddenValue">hiddenValue</a></tt>, and <tt><a href="output/Ext.form.ComboBox.html#Ext.form.ComboBox-displayField">displayField</a></tt>.</p>
   */
  public native function get valueField():String;

  /**
   * @private
   */
  public native function set valueField(value:String):void;

  /**
   When using a name/value combo, if the value passed to setValue is not found in the store, valueNotFoundText will be displayed as the field text if defined (defaults to undefined). If this default text is used, it means there is no value set and no validation will occur on this field.
   */
  public native function get valueNotFoundText():String;

  /**
   * @private
   */
  public native function set valueNotFoundText(value:String):void;


}
}
    