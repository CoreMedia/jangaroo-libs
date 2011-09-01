package ext {


/**
 * Provides searching of Components within Ext.ComponentMgr (globally) or a specific Ext.Container on the document with a similar syntax to a CSS selector. Xtypes can be retrieved by their name with an optional . prefix <ul><li>component or .component</li><li>gridpanel or .gridpanel</li></ul>An itemId or id must be prefixed with a #. <ul><li>#myContainer</li></ul>Attributes must be wrapped in brackets <ul><li>component[autoScroll]</li><li>panel[title="Test"]</li></ul>Member expressions from candidate Components may be tested. If the expression returns a <i>truthy</i> value, the candidate Component will be included in the query:<pre><code>var disabledFields = myFormPanel.query("{isDisabled()}");
 </code></pre>Pseudo classes may be used to filter results in the same way as in <a href="Ext.DomQuery.html">DomQuery</a>:<pre><code>// Function receives array and returns a filtered array.
 Ext.ComponentQuery.pseudos.invalid = function(items) {
 var i = 0, l = items.length, c, result = [];
 for (; i &lt; l; i++) {
 if (!(c = items[i]).isValid()) {
 result.push(c);
 }
 }
 return result;
 };

 var invalidFields = myFormPanel.query('field:invalid');
 if (invalidFields.length) {
 invalidFields[0].getEl().scrollIntoView(myFormPanel.body);
 for (var i = 0, l = invalidFields.length; i &lt; l; i++) {
 invalidFields[i].getEl().frame("red");
 }
 }
 </code></pre>Queries return an array of components. Here are some example queries. <pre><code>   // retrieve all Ext.Panel's on the document by xtype
 var panelsArray = Ext.ComponentQuery.query('.panel');

 // retrieve all Ext.Panels within the container with an id myCt
 var panelsWithinmyCt = Ext.ComponentQuery.query('#myCt .panel');

 // retrieve all direct children which are Ext.Panels within myCt
 var directChildPanel = Ext.ComponentQuery.query('#myCt &gt; .panel');

 // retrieve all gridpanels and listviews
 var gridsAndLists = Ext.ComponentQuery.query('gridpanel, listview');
 </code></pre>
 *
 * <p>Copyright &#169; 2011 Sencha Inc.</p>
 *

 * <p>This interface defines the type of the singleton ComponentQuery.</p>
 * @see ext.#ComponentQuery ext.ComponentQuery
 * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/ComponentQuery.html#cls-Ext.ComponentQuery Ext JS source
 */
public interface IComponentQuery {

}
}
    