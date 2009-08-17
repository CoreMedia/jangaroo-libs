package ext.data {
/**
 * <p>Small helper class to make creating <b class='link'>ext.data.Store</b>s from JSON data easier.
 * A JsonStore will be automatically configured with a <b class='link'>ext.data.JsonReader</b>.</p>
 * <p>A store configuration would be something like:<pre><code>
var store = new ext.data.JsonStore({
    // store configs
    autoDestroy: true,
    url: 'get-images.php',
    storeId: 'myStore',
    // reader configs
    root: 'images',
    idProperty: 'name',  
    fields: ['name', 'url', {name:'size', type: 'float'}, {name:'lastmod', type:'date'}]
});
 * </code></pre></p>
 * <p>This store is configured to consume a returned object of the form:<pre><code>
{
    images: [
        {name: 'Image one', url:'/GetImage.php?id=1', size:46.5, lastmod: new Date(2007, 10, 29)},
        {name: 'Image Two', url:'/GetImage.php?id=2', size:43.2, lastmod: new Date(2007, 10, 30)}
    ]
}
 * </code></pre>
 * An object literal of this form could also be used as the <b class='link'>#data</b> config option.</p>
 * <p><b>*Note:</b> Although not listed here, this class accepts all of the configuration options of 
 * <b class='link' title='ext.data.JsonReader'>JsonReader</b>.</p>
*/
public class JsonStore extends Store {
/**
 * @constructor
 * @param config
 * @xtype jsonstore
 */
public function JsonStore(config : Object) {
  super(config);
}
    /**
     * @cfg {ext.data.DataReader} reader @hide
     */
    public native function constructor(config) : void;
}}
