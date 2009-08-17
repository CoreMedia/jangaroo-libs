package ext.data {
/**
 * <p>Formerly known as "SimpleStore".</p>
 * <p>Small helper class to make creating <b class='link'>ext.data.Store</b>s from Array data easier.
 * An ArrayStore will be automatically configured with a <b class='link'>ext.data.ArrayReader</b>.</p>
 * <p>A store configuration would be something like:<pre><code>
var store = new ext.data.ArrayStore({
    // store configs
    autoDestroy: true,
    storeId: 'myStore',
    // reader configs
    idIndex: 0,  
    fields: [
       'company',
       {name: 'price', type: 'float'},
       {name: 'change', type: 'float'},
       {name: 'pctChange', type: 'float'},
       {name: 'lastChange', type: 'date', dateFormat: 'n/j h:ia'}
    ]
});
 * </code></pre></p>
 * <p>This store is configured to consume a returned object of the form:<pre><code>
var myData = [
    ['3m Co',71.72,0.02,0.03,'9/1 12:00am'],
    ['Alcoa Inc',29.01,0.42,1.47,'9/1 12:00am'],
    ['Boeing Co.',75.43,0.53,0.71,'9/1 12:00am'],
    ['Hewlett-Packard Co.',36.53,-0.03,-0.08,'9/1 12:00am'],
    ['Wal-Mart Stores, Inc.',45.45,0.73,1.63,'9/1 12:00am']
];
 * </code></pre>
 * An object literal of this form could also be used as the <b class='link'>#data</b> config option.</p>
 * <p><b>*Note:</b> Although not listed here, this class accepts all of the configuration options of 
 * <b class='link' title='ext.data.ArrayReader'>ArrayReader</b>.</p>
*/
public class ArrayStore extends Store {
/**
 * @constructor
 * @param config
 * @xtype arraystore
 */
public function ArrayStore(config : Object) {
  super(config);
}
    /**
     * @cfg {ext.data.DataReader} reader @hide
     */
    public native function constructor(config) : void;
    override public native function loadData(data : Object, append : Boolean = undefined) : void;
}}
