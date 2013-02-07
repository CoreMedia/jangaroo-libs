package ext.form {
import ext.Container;
import ext.Element;
import ext.config.compositefield;
import ext.util.MixedCollection;

/**
 * Composite field allowing a number of form Fields to be rendered on the same row. The fields are rendered using an hbox layout internally, so all of the normal HBox layout config items are available. Example usage: <pre>{
 xtype: 'compositefield',
 labelWidth: 120
 items: [
 {
 xtype     : 'textfield',
 fieldLabel: 'Title',
 width     : 20
 },
 {
 xtype     : 'textfield',
 fieldLabel: 'First',
 flex      : 1
 },
 {
 xtype     : 'textfield',
 fieldLabel: 'Last',
 flex      : 1
 }
 ]
 }
 </pre>In the example above the composite's fieldLabel will be set to 'Title, First, Last' as it groups the fieldLabels of each of its children. This can be overridden by setting a fieldLabel on the compositefield itself: <pre>{
 xtype: 'compositefield',
 fieldLabel: 'Custom label',
 items: [...]
 }
 </pre>Any Ext.form.&#42; component can be placed inside a composite field.
 *
 * <p>Copyright &#169; 2011 Sencha Inc.</p>
 *

 * @see ext.config.compositefield
 * @see http://docs.sencha.com/ext-js/3-4/#!/api/Ext.form.CompositeField Sencha Docs Ext JS 3.4
 */
[Native(amd="ext-as.module", global="Ext.form.CompositeField")]
public class CompositeField extends Field {

  /**
   *
   *
   * @see ext.config.compositefield
   */
  public function CompositeField(config:compositefield) {
    super(null);
  }

  /**
   True to combine errors from the individual fields into a single error message at the CompositeField level (defaults to true)
   * @see http://docs.sencha.com/ext-js/3-4/#!/api/Ext.form.CompositeField-property-combineErrors Sencha Docs Ext JS 3.4
   */
  public native function get combineErrors():Boolean;

  /**
   * @private
   */
  public native function set combineErrors(value:Boolean):void;

  /**
   The margins to apply by default to each field in the composite
   * @see http://docs.sencha.com/ext-js/3-4/#!/api/Ext.form.CompositeField-property-defaultMargins Sencha Docs Ext JS 3.4
   */
  public native function get defaultMargins():String;

  /**
   * @private
   */
  public native function set defaultMargins(value:String):void;

  /**
   MixedCollection of current errors on the Composite's subfields. This is used internally to track when to show and hide error messages at the Composite level. Listeners are attached to the MixedCollection's add, remove and replace events to update the error icon in the UI as errors are added or removed.
   * @see http://docs.sencha.com/ext-js/3-4/#!/api/Ext.form.CompositeField-property-fieldErrors Sencha Docs Ext JS 3.4
   */
  public native function get fieldErrors():MixedCollection;

  /**
   * @private
   */
  public native function set fieldErrors(value:MixedCollection):void;

  /**
   A container configured with hbox layout which is responsible for laying out the subfields
   * @see http://docs.sencha.com/ext-js/3-4/#!/api/Ext.form.CompositeField-property-innerCt Sencha Docs Ext JS 3.4
   */
  public native function get innerCt():Container;

  /**
   * @private
   */
  public native function set innerCt(value:Container):void;

  /**
   Signifies that this is a Composite field
   * @see http://docs.sencha.com/ext-js/3-4/#!/api/Ext.form.CompositeField-property-isComposite Sencha Docs Ext JS 3.4
   */
  public native function get isComposite():Boolean;

  /**
   * @private
   */
  public native function set isComposite(value:Boolean):void;

  /**
   Internal collection of all of the subfields in this Composite
   * @see http://docs.sencha.com/ext-js/3-4/#!/api/Ext.form.CompositeField-property-items Sencha Docs Ext JS 3.4
   */
  public native function get items():MixedCollection;

  /**
   * @private
   */
  public native function set items(value:MixedCollection):void;

  /**
   If true, the defaultMargins are not applied to the last item in the composite field set (defaults to true)
   * @see http://docs.sencha.com/ext-js/3-4/#!/api/Ext.form.CompositeField-property-skipLastItemMargin Sencha Docs Ext JS 3.4
   */
  public native function get skipLastItemMargin():Boolean;

  /**
   * @private
   */
  public native function set skipLastItemMargin(value:Boolean):void;

  /**
   Any default properties to assign to the child fields.
   */
  public native function get defaults():Object;

  /**
   The string to use when joining segments of the built label together (defaults to ', ')
   */
  public native function get labelConnector():String;

  /**
   *
   *
   * @see http://docs.sencha.com/ext-js/3-4/#!/api/Ext.form.CompositeField-method-beforeDestroy Sencha Docs Ext JS 3.4
   */
  override protected native function beforeDestroy():void;

  /**
   * Takes an object containing error messages for contained fields, returning a combined error string (defaults to just placing each item on a new line). This can be overridden to provide custom combined error message handling.
   *
   * @param errors Array of errors in format: [{field: 'title', error: 'some error'}]
   * @return The combined error message
   * @see http://docs.sencha.com/ext-js/3-4/#!/api/Ext.form.CompositeField-method-buildCombinedErrorMessage Sencha Docs Ext JS 3.4
   */
  public native function buildCombinedErrorMessage(errors:Array):String;

  /**
   * Builds a label string from an array of subfield labels. By default this just joins the labels together with a comma
   *
   * @param segments Array of each of the labels in the composite field's subfields
   * @return The built label
   * @see http://docs.sencha.com/ext-js/3-4/#!/api/Ext.form.CompositeField-method-buildLabel Sencha Docs Ext JS 3.4
   */
  public native function buildLabel(segments:Array):String;

  /**
   * Calls clearInvalid on all child fields. This is a convenience function and should not often need to be called as fields usually take care of clearing themselves
   *
   * @see http://docs.sencha.com/ext-js/3-4/#!/api/Ext.form.CompositeField-method-clearInvalidChildren Sencha Docs Ext JS 3.4
   */
  public native function clearInvalidChildren():void;

  /**
   *
   *
   * @see http://docs.sencha.com/ext-js/3-4/#!/api/Ext.form.CompositeField-method-doLayout Sencha Docs Ext JS 3.4
   */
  public native function doLayout():void;

  /**
   *
   *
   * @param fn The function to call
   * @param scope Optional scope object
   * @see http://docs.sencha.com/ext-js/3-4/#!/api/Ext.form.CompositeField-method-eachItem Sencha Docs Ext JS 3.4
   */
  public native function eachItem(fn:Function, scope:Object):void;

  /**
   * Checks each field in the composite and returns true if any is dirty
   *
   * @return True if any field is dirty
   * @see http://docs.sencha.com/ext-js/3-4/#!/api/Ext.form.CompositeField-method-isDirty Sencha Docs Ext JS 3.4
   */
  override public native function isDirty():Boolean;

  /**
   * Called if combineErrors is true and a subfield's clearInvalid method is called. By default this just updates the internal fieldErrors MixedCollection.
   *
   * @param field The field that was marked invalid
   * @see http://docs.sencha.com/ext-js/3-4/#!/api/Ext.form.CompositeField-method-onFieldClearInvalid Sencha Docs Ext JS 3.4
   */
  public native function onFieldClearInvalid(field:Field):void;

  /**
   * Called if combineErrors is true and a subfield's markInvalid method is called. By default this just adds the subfield's error to the internal fieldErrors MixedCollection
   *
   * @param field The field that was marked invalid
   * @param message The error message
   * @see http://docs.sencha.com/ext-js/3-4/#!/api/Ext.form.CompositeField-method-onFieldMarkInvalid Sencha Docs Ext JS 3.4
   */
  public native function onFieldMarkInvalid(field:Field, message:String):void;

  /**
   *
   *
   * @param ct container
   * @param position reference child element
   * @see http://docs.sencha.com/ext-js/3-4/#!/api/Ext.form.CompositeField-method-onRender Sencha Docs Ext JS 3.4
   */
  override protected native function onRender(ct:Element, position:Element):void;

  /**
   *
   *
   * @param adjWidth The box-adjusted width that was set
   * @param adjHeight The box-adjusted height that was set
   * @param rawWidth The width that was originally specified
   * @param rawHeight The height that was originally specified
   * @see http://docs.sencha.com/ext-js/3-4/#!/api/Ext.form.CompositeField-method-onResize Sencha Docs Ext JS 3.4
   */
  override protected native function onResize(adjWidth:Number, adjHeight:Number, rawWidth:Number, rawHeight:Number):void;

  /**
   * Resets each field in the composite to their previous value
   *
   * @see http://docs.sencha.com/ext-js/3-4/#!/api/Ext.form.CompositeField-method-reset Sencha Docs Ext JS 3.4
   */
  override public native function reset():void;

  /**
   * Sorts the internal fieldErrors MixedCollection by the order in which the fields are defined. This is called before displaying errors to ensure that the errors are presented in the expected order. This function can be overridden to provide a custom sorting order if needed.
   *
   * @see http://docs.sencha.com/ext-js/3-4/#!/api/Ext.form.CompositeField-method-sortErrors Sencha Docs Ext JS 3.4
   */
  public native function sortErrors():void;

  /**
   *
   *
   * @see http://docs.sencha.com/ext-js/3-4/#!/api/Ext.form.CompositeField-method-updateInvalidMark Sencha Docs Ext JS 3.4
   */
  public native function updateInvalidMark():void;

  /**
   * Performs validation checks on each subfield and returns false if any of them fail validation.
   *
   * @param value The current value of the field
   * @return False if any subfield failed validation
   * @see http://docs.sencha.com/ext-js/3-4/#!/api/Ext.form.CompositeField-method-validateValue Sencha Docs Ext JS 3.4
   */
  override public native function validateValue(value:*):Boolean;

}
}
    