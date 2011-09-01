package ext.componentquery {


/**
 *
 *
 * <p>Copyright &#169; 2011 Sencha Inc.</p>
 *

 * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/ComponentQuery.html#cls-Ext.ComponentQuery.Query Ext JS source
 */
public class Query {

  /**
   *
   *
   */
  public function Query() {
    super();
  }

  /**
   * Tests whether the passed Component matches the selector string.
   *
   * @param component Components to test
   * @param selector selector string to test against.
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/ComponentQuery.html#method-Ext.ComponentQuery.Query-is_ Ext JS source
   */
  public native function is_(component:*, selector:*):void;

  /**
   * Returns an array of matched Components from within the passed root Container.
   <p>This method filters returned Components in a similar way to how CSS selector based DOM queries work using a textual selector string.</p><p>See class summary for details.</p>
   *
   * @param selector selector string to filter returned Components
   * @param root Container within which to perform the query. If omitted, all Components within the document are included in the search.
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/ComponentQuery.html#method-Ext.ComponentQuery.Query-query Ext JS source
   */
  public native function query(selector:*, root:*):void;

}
}
    