package ext.config {


/**
 * Multiline text field. Can be used as a direct replacement for traditional textarea fields, plus adds support for auto-sizing.
 * <p>This class serves as a typed config object for constructor of class TextArea.</p>
 *
 * @see ext.form.TextArea
 */
[ExtConfig(target="ext.form.TextArea", xtype="textarea")]
public class textarea extends textfield {

  public function textarea(config:Object = null) {

    super(config);
  }


  /**
   A <a href="Ext.DomHelper.html">DomHelper</a> element spec, or true for a default element spec. Used to create the <a href="output/Ext.Component.html#Ext.Component-getEl">Element</a> which will encapsulate this Component. See <tt><a href="output/Ext.Component.html#Ext.Component-autoEl">autoEl</a></tt> for details. Defaults to:
   <pre><code>{tag: "textarea", style: "width:100px;height:60px;", autocomplete: "off"}</code></pre>
   */
  override public native function get autoCreate():*;

  /**
   * @private
   */
  override public native function set autoCreate(value:*):void;

  /**
   The maximum height to allow when <tt><a href="output/Ext.form.TextField.html#Ext.form.TextField-grow">grow</a>=true</tt> (defaults to <tt>1000</tt>)
   */
  override public native function get growMax():Number;

  /**
   * @private
   */
  override public native function set growMax(value:Number):void;

  /**
   The minimum height to allow when <tt><a href="output/Ext.form.TextField.html#Ext.form.TextField-grow">grow</a>=true</tt> (defaults to <tt>60</tt>)
   */
  override public native function get growMin():Number;

  /**
   * @private
   */
  override public native function set growMin(value:Number):void;

  /**
   <tt>true</tt> to prevent scrollbars from appearing regardless of how much text is in the field. This option is only relevant when <a href="output/Ext.form.TextArea.html#Ext.form.TextArea-grow">grow</a> is <tt>true</tt>. Equivalent to setting overflow: hidden, defaults to <tt>false</tt>.
   */
  public native function get preventScrollbars():Boolean;

  /**
   * @private
   */
  public native function set preventScrollbars(value:Boolean):void;


}
}
    