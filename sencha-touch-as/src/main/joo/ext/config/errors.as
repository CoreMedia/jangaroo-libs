package ext.config {


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
 * <p>This class serves as a
 * typed config object for constructor of class Errors.</p>
 *
 * <p>Copyright &#169; 2011 Sencha Inc.</p>
 * @see ext.data.Errors
 */
[ExtConfig(target="ext.data.Errors")]
public class errors extends mixedcollection {

  public function errors(config:Object = null) {

    super(config);
  }


}
}
    