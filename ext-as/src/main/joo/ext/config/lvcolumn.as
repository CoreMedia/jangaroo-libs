package ext.config {

import joo.JavaScriptObject;

/**
 * This class encapsulates column configuration data to be used in the initialization of a <a href="Ext.list.ListView.html">ListView</a>.
 <p>While subclasses are provided to render data in different ways, this class renders a passed data field unchanged and is usually used for textual columns.</p>
 *
 * <p>This class represents the xtype 'lvcolumn' and serves as a
 * typed config object for constructor of class Column.</p>
 *
 * <p>Copyright &#169; 2011 Sencha Inc.</p>
 * @see ext.list.Column
 */
[ExtConfig(target="ext.list.Column", xtype="lvcolumn")]
public class lvcolumn extends JavaScriptObject {

  public function lvcolumn(config:Object = null) {

    super(config);
  }


  /**
   Set the CSS text-align property of the column. Defaults to <tt>'left'</tt>.
   */
  public native function get align():String;

  /**
   * @private
   */
  public native function set align(value:String):void;

  /**
   This option can be used to add a CSS class to the cell of each row for this column.
   */
  public native function get cls():String;

  /**
   * @private
   */
  public native function set cls(value:String):void;

  /**
   <b>Required</b>. The name of the field in the ListViews's <a href="Ext.data.Store.html">Ext.data.Store</a>'s <a href="Ext.data.Record.html">Ext.data.Record</a> definition from which to draw the column's value.

   */
  public native function get dataIndex():String;

  /**
   * @private
   */
  public native function set dataIndex(value:String):void;

  /**
   The header text to be used as innerHTML (html tags are accepted) to display in the ListView. <b>Note</b>: to have a clickable header with no text displayed use <tt>' '</tt>.
   */
  public native function get header():String;

  /**
   * @private
   */
  public native function set header(value:String):void;

  /**
   Used by ListView constructor method to avoid reprocessing a Column if <code>isColumn</code> is not set ListView will recreate a new Ext.list.Column Defaults to true.
   */
  public native function get isColumn():Boolean;

  /**
   * @private
   */
  public native function set isColumn(value:Boolean):void;

  /**
   Specify a string to pass as the configuration string for <a href="Ext.XTemplate.html">Ext.XTemplate</a>. By default an <a href="Ext.XTemplate.html">Ext.XTemplate</a> will be implicitly created using the <tt>dataIndex</tt>.
   */
  public native function get tpl():String;

  /**
   * @private
   */
  public native function set tpl(value:String):void;

  /**
   Percentage of the container width this column should be allocated. Columns that have no width specified will be allocated with an equal percentage to fill 100% of the container width. To easily take advantage of the full container width, leave the width of at least one column undefined. Note that if you do not want to take up the full width of the container, the width of every column needs to be explicitly defined.
   */
  public native function get width():Number;

  /**
   * @private
   */
  public native function set width(value:Number):void;


}
}
    