package ext.data {


/**
 * This singleton contains a set of validation functions that can be used to validate any type of data. They are most often used in <a href="Ext.data.Model.html">Models</a>, where they are automatically set up and executed.

 *
 * <p>Copyright &#169; 2011 Sencha Inc.</p>
 *

 * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/Validations.html#cls-Ext.data.validations Ext JS source
 */
[Native]
public class validations {

  /**
   *
   *
   */
  public function validations() {
    super();
  }

  /**
   The default error message used when an exclusion validation fails
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/Validations.html#prop-Ext.data.validations-exclusionMessage Ext JS source
   */
  public native function get exclusionMessage():String;

  /**
   * @private
   */
  public native function set exclusionMessage(value:String):void;

  /**
   The default error message used when a format validation fails
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/Validations.html#prop-Ext.data.validations-formatMessage Ext JS source
   */
  public native function get formatMessage():Boolean;

  /**
   * @private
   */
  public native function set formatMessage(value:Boolean):void;

  /**
   The default error message used when an inclusion validation fails
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/Validations.html#prop-Ext.data.validations-inclusionMessage Ext JS source
   */
  public native function get inclusionMessage():String;

  /**
   * @private
   */
  public native function set inclusionMessage(value:String):void;

  /**
   The default error message used when a length validation fails
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/Validations.html#prop-Ext.data.validations-lengthMessage Ext JS source
   */
  public native function get lengthMessage():String;

  /**
   * @private
   */
  public native function set lengthMessage(value:String):void;

  /**
   The default error message used when a presence validation fails
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/Validations.html#prop-Ext.data.validations-presenceMessage Ext JS source
   */
  public native function get presenceMessage():String;

  /**
   * @private
   */
  public native function set presenceMessage(value:String):void;

  /**
   * Validates that the given value is present in the configured <a href="output/Ext.data.validations.html#Ext.data.validations-list">list</a>
   *
   * @param config Optional config object
   * @param value The value to validate
   * @return True if the value is not present in the list
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/Validations.html#method-Ext.data.validations-exclusion Ext JS source
   */
  public native function exclusion(config:Object, value:String):Boolean;

  /**
   * Returns true if the given value passes validation against the configured <a href="output/Ext.data.validations.html#Ext.data.validations-matcher">matcher</a> regex
   *
   * @param config Optional config object
   * @param value The value to validate
   * @return True if the value passes the format validation
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/Validations.html#method-Ext.data.validations-format Ext JS source
   */
  public native function format(config:Object, value:String):Boolean;

  /**
   * Validates that the given value is present in the configured <a href="output/Ext.data.validations.html#Ext.data.validations-list">list</a>
   *
   * @param value The value to validate
   * @return True if the value is present in the list
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/Validations.html#method-Ext.data.validations-inclusion Ext JS source
   */
  public native function inclusion(value:String):Boolean;

  /**
   * Returns true if the given value is between the configured min and max values
   *
   * @param config Optional config object
   * @param value The value to validate
   * @return True if the value passes validation
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/Validations.html#method-Ext.data.validations-length Ext JS source
   */
  public native function length(config:Object, value:String):Boolean;

  /**
   * Validates that the given value is present
   *
   * @param config Optional config object
   * @param value The value to validate
   * @return True if validation passed
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/Validations.html#method-Ext.data.validations-presence Ext JS source
   */
  public native function presence(config:Object, value:*):Boolean;

}
}
    