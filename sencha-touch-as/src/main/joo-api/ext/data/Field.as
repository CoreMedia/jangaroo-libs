package ext.data {


/**
 * Fields are used to define what a Model is. They aren't instantiated directly - instead, <a href="output/Ext.html#Ext-regModel">Ext.regModel</a> creates a Field instance for each field configured in a <a href="Ext.data.Model.html">Model</a>. For example, we might set up a model like this:
 <pre><code>Ext.regModel('User', {
 fields: [
 'name', 'email',
 {name: 'age', type: 'int'},
 {name: 'gender', type: 'string', defaultValue: 'Unknown'}
 ]
 });
 </code></pre><p>Four fields will have been created for the User Model - name, email, age and gender. Note that we specified a couple of different formats here; if we only pass in the string name of the field (as with name and email), the field is set up with the 'auto' type. It's as if we'd done this instead:</p><pre><code>Ext.regModel('User', {
 fields: [
 {name: 'name', type: 'auto'},
 {name: 'email', type: 'auto'},
 {name: 'age', type: 'int'},
 {name: 'gender', type: 'string', defaultValue: 'Unknown'}
 ]
 });
 </code></pre><p><u>Types and conversion</u></p><p>The <a href="output/Ext.data.Field.html#Ext.data.Field-type">type</a> is important - it's used to automatically convert data passed to the field into the correct format. In our example above, the name and email fields used the 'auto' type and will just accept anything that is passed into them. The 'age' field had an 'int' type however, so if we passed 25.4 this would be rounded to 25.</p><p>Sometimes a simple type isn't enough, or we want to perform some processing when we load a Field's data. We can do this using a <a href="output/Ext.data.Field.html#Ext.data.Field-convert">convert</a> function. Here, we're going to create a new field based on another:</p><pre><code>Ext.regModel('User', {
 fields: [
 'name', 'email',
 {name: 'age', type: 'int'},
 {name: 'gender', type: 'string', defaultValue: 'Unknown'},

 {
 name: 'firstName',
 convert: function(value, record) {
 var fullName  = record.get('name'),
 splits    = fullName.split(" "),
 firstName = splits[0];

 return firstName;
 }
 }
 ]
 });
 </code></pre><p>Now when we create a new User, the firstName is populated automatically based on the name:</p><pre><code>var ed = Ext.ModelMgr.create({name: 'Ed Spencer'}, 'User');

 console.log(ed.get('firstName')); //logs 'Ed', based on our convert function
 </code></pre><p>In fact, if we log out all of the data inside ed, we'll see this:</p><pre><code>console.log(ed.data);

 //outputs this:
 {
 age: 0,
 email: "",
 firstName: "Ed",
 gender: "Unknown",
 name: "Ed Spencer"
 }
 </code></pre><p>The age field has been given a default of zero because we made it an int type. As an auto field, email has defaulted to an empty string. When we registered the User model we set gender's <a href="output/Ext.data.Field.html#Ext.data.Field-defaultValue">defaultValue</a> to 'Unknown' so we see that now. Let's correct that and satisfy ourselves that the types work as we expect:</p><pre><code>ed.set('gender', 'Male');
 ed.get('gender'); //returns 'Male'

 ed.set('age', 25.4);
 ed.get('age'); //returns 25 - we wanted an int, not a float, so no decimal places allowed
 </code></pre>
 *
 * <p>Copyright &#169; 2011 Sencha Inc.</p>
 *

 * @see ext.config.field
 * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/Field.html#cls-Ext.data.Field Ext JS source
 */
public class Field {

  /**
   *
   *
   * @see ext.config.field
   */
  public function Field() {
    super();
  }

  /**

   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/ Ext JS source
   */
  public native function get allowBlank():Boolean;

  /**
   (Optional) Used when converting received data into a Date when the <a href="output/Ext.data.Field.html#Ext.data.Field-type">type</a> is specified as <code>"date"</code>.
   <p>A format string for the <a href="output/Date.html#Date-parseDate">Date.parseDate</a> function, or "timestamp" if the value provided by the Reader is a UNIX timestamp, or "time" if the value provided by the Reader is a javascript millisecond timestamp. See <a href="Date.html">Date</a></p>
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/ Ext JS source
   */
  public native function get dateFormat():String;

  /**
   The default value used <b>when a Model is being created by a <a href="Ext.data.Reader.html">Reader</a></b> when the item referenced by the <code><a href="output/Ext.data.Field.html#Ext.data.Field-mapping">mapping</a></code> does not exist in the data object (i.e. undefined). (defaults to "")
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/ Ext JS source
   */
  public native function get defaultValue():*;

  /**
   (Optional) A path expression for use by the <a href="Ext.data.DataReader.html">Ext.data.DataReader</a> implementation that is creating the <a href="Ext.data.Model.html">Model</a> to extract the Field value from the data object. If the path expression is the same as the field name, the mapping may be omitted.
   <p>The form of the mapping expression depends on the Reader being used.</p><div class="mdetail-params"><ul><li><a href="Ext.data.JsonReader.html">Ext.data.JsonReader</a><div class="sub-desc">The mapping is a string containing the javascript expression to reference the data from an element of the data item's <a href="output/Ext.data.JsonReader.html#Ext.data.JsonReader-root">root</a> Array. Defaults to the field name.</div></li><li><a href="Ext.data.XmlReader.html">Ext.data.XmlReader</a><div class="sub-desc">The mapping is an <a href="Ext.DomQuery.html">Ext.DomQuery</a> path to the data item relative to the DOM element that represents the <a href="output/Ext.data.XmlReader.html#Ext.data.XmlReader-record">record</a>. Defaults to the field name.</div></li><li><a href="Ext.data.ArrayReader.html">Ext.data.ArrayReader</a><div class="sub-desc">The mapping is a number indicating the Array index of the field's value. Defaults to the field specification's Array position.</div></li></ul></div><p>If a more complex value extraction strategy is required, then configure the Field with a <a href="output/Ext.data.Field.html#Ext.data.Field-convert">convert</a> function. This is passed the whole row object, and may interrogate it in whatever way is necessary in order to return the desired data.</p>
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/ Ext JS source
   */
  public native function get mapping():*;

  /**
   The name by which the field is referenced within the Model. This is referenced by, for example, the <code>dataIndex</code> property in column definition objects passed to <a href="Ext.grid.ColumnModel.html">Ext.grid.ColumnModel</a>. <p>Note: In the simplest case, if no properties other than <code>name</code> are required, a field definition may consist of just a String for the field name.</p>
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/ Ext JS source
   */
  public native function get name():String;

  /**
   Initial direction to sort (<code>"ASC"</code> or <code>"DESC"</code>). Defaults to <code>"ASC"</code>.
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/ Ext JS source
   */
  public native function get sortDir():String;

  /**
   The data type for automatic conversion from received data to the <i>stored</i> value if <code><a href="output/Ext.data.Field.html#Ext.data.Field-convert">convert</a></code> has not been specified. This may be specified as a string value. Possible values are <div class="mdetail-params"><ul><li>auto (Default, implies no conversion)</li><li>string</li><li>int</li><li>float</li><li>boolean</li><li>date</li></ul></div><p>This may also be specified by referencing a member of the <a href="Ext.data.Types.html">Ext.data.Types</a> class.</p><p>Developers may create their own application-specific data types by defining new members of the <a href="Ext.data.Types.html">Ext.data.Types</a> class.</p>
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/ Ext JS source
   */
  public native function get type():*;

  /**
   (Optional) Use when converting received data into a Number type (either int or float). If the value cannot be parsed, null will be used if useNull is true, otherwise the value will be 0. Defaults to <tt>false</tt>

   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/ Ext JS source
   */
  public native function get useNull():Boolean;

}
}
    