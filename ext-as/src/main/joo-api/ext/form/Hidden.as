package ext.form {
import ext.Element;

/**
 * A basic hidden field for storing hidden values in forms that need to be passed in the form submit.
*/
public class Hidden extends Field {
/**
 * @constructor
 * Create a new Hidden field.
 * @param config Configuration options
 * @xtype hidden
 */
  public function Hidden(config:Object) {
    super(config);
  }

  protected var inputType ;
    override protected native function onRender(container : Element, position : Element) : void;
    override protected native function initEvents() : void;
    //public var setSize ;
    //public var setWidth ;
    //public var setHeight ;
    //public var setPosition ;
    //public var setPagePosition ;
    //public var markInvalid ;
    //public var clearInvalid ;
}}
