package ext.data {

import ext.config.association;

/**
 * Associations enable you to express relationships between different <a href="Ext.data.Model.html">Models</a>. Let's say we're writing an ecommerce system where Users can make Orders - there's a relationship between these Models that we can express like this:
 <pre><code>Ext.regModel('User', {
 fields: ['id', 'name', 'email'],

 hasMany: {model: 'Order', name: 'orders'}
 });

 Ext.regModel('Order', {
 fields: ['id', 'user_id', 'status', 'price'],

 belongsTo: 'User'
 });
 </code></pre><p>We've set up two models - User and Order - and told them about each other. You can set up as many associations on each Model as you need using the two default types - <a href="Ext.data.HasManyAssociation.html">hasMany</a> and <a href="Ext.data.BelongsToAssociation.html">belongsTo</a>. There's much more detail on the usage of each of those inside their documentation pages. If you're not familiar with Models already, <a href="Ext.data.Model.html">there is plenty on those too</a>.</p><p><u>Further Reading</u></p><ul style="list-style-type: disc; padding-left: 20px;"><li><a href="Ext.data.HasManyAssociation.html">hasMany associations</a></li><li><a href="Ext.data.BelongsToAssociation.html">belongsTo associations</a></li><li><a href="Ext.data.Model.html">using Models</a></li></ul>
 *
 * <p>Copyright &#169; 2011 Sencha Inc.</p>
 *

 * @see ext.config.association
 * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/Association.html#cls-Ext.data.Association Ext JS source
 */
[Native]
public class Association {

  /**
   *
   *
   * @param config Optional config object
   * @see ext.config.association
   */
  public function Association(config:association) {
    super();
  }

  /**
   The name of the model is on the other end of the association (e.g. if a User model hasMany Orders, this is 'Order')
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/Association.html#prop-Ext.data.Association-associatedName Ext JS source
   */
  public native function get associatedName():String;

  /**
   * @private
   */
  public native function set associatedName(value:String):void;

  /**
   The name of the model that 'owns' the association
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/Association.html#prop-Ext.data.Association-ownerName Ext JS source
   */
  public native function get ownerName():String;

  /**
   * @private
   */
  public native function set ownerName(value:String):void;

  /**
   The string name of the model that is being associated with. Required
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/ Ext JS source
   */
  public native function get associatedModel():String;

  /**
   The string name of the model that owns the association. Required
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/ Ext JS source
   */
  public native function get ownerModel():String;

  /**
   The name of the primary key on the associated model. Defaults to 'id'
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/ Ext JS source
   */
  public native function get primaryKey():String;

}
}
    