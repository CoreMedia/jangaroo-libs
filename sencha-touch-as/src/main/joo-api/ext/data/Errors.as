package ext.data {

import ext.util.MixedCollection;

/**
 * Wraps a collection of validation error responses and provides convenient functions for accessing and errors for specific fields.
 <p>Usually this class does not need to be instantiated directly - instances are instead created automatically when <a href="output/Ext.data.Model.html#Ext.data.Model-validate">validate</a> on a model instance:</p><pre><code>//validate some existing model instance - in this case it returned 2 failures messages
 var errors = myModel.validate();

 errors.isValid(); //false

 errors.length; //2
 errors.getByField('name');  // [{field: 'name',  error: 'must be present'}]
 errors.getByField('title'); // [{field: 'title', error: 'is too short'}]
 </code></pre>
 *
 * <p>Copyright &#169; 2011 Sencha Inc.</p>
 *

 * @see ext.config.errors
 * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/Errors.html#cls-Ext.data.Errors Ext JS source
 */
[Native]
public class Errors extends MixedCollection {

  /**
   *
   *
   * @see ext.config.errors
   */
  public function Errors() {
    super(false, null);
  }

  /**
   * Returns all of the errors for the given field
   *
   * @param fieldName The field to get errors for
   * @return All errors for the given field
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/Errors.html#method-Ext.data.Errors-getByField Ext JS source
   */
  public native function getByField(fieldName:String):Array;

  /**
   * Returns true if there are no errors in the collection
   *
   * @return
    * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/Errors.html#method-Ext.data.Errors-isValid Ext JS source
   */
  public native function isValid():Boolean;

}
}
    