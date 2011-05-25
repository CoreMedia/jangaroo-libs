package ext.data {
/**
 * <p>Small helper class to make creating <code>ext.data.Store</code>s from XML data easier.
 * A XmlStore will be automatically configured with a <code>ext.data.XmlReader</code>.</p>
 * <p>A store configuration would be something like:<pre><code>
var store = new ext.data.XmlStore({
    // store configs
    autoDestroy: true,
    storeId: 'myStore',
    url: 'sheldon.xml', // automatically configures a HttpProxy
    // reader configs
    record: 'Item', // records will have an "Item" tag
    idPath: 'ASIN',
    totalRecords: '&#64;TotalResults'
    fields: [
        // set up the fields mapping into the xml doc
        // The first needs mapping, the others are very basic
        {name: 'Author', mapping: 'ItemAttributes > Author'},
        'Title', 'Manufacturer', 'ProductGroup'
    ]
});
 * </code></pre></p>
 * <p>This store is configured to consume a returned object of the form:<pre><code>
&#60;?xml version="1.0" encoding="UTF-8"?>
&#60;ItemSearchResponse xmlns="http://webservices.amazon.com/AWSECommerceService/2009-05-15">
    &#60;Items>
        &#60;Request>
            &#60;IsValid>True&#60;/IsValid>
            &#60;ItemSearchRequest>
                &#60;Author>Sidney Sheldon&#60;/Author>
                &#60;SearchIndex>Books&#60;/SearchIndex>
            &#60;/ItemSearchRequest>
        &#60;/Request>
        &#60;TotalResults>203&#60;/TotalResults>
        &#60;TotalPages>21&#60;/TotalPages>
        &#60;Item>
            &#60;ASIN>0446355453&#60;/ASIN>
            &#60;DetailPageURL>
                http://www.amazon.com/
            &#60;/DetailPageURL>
            &#60;ItemAttributes>
                &#60;Author>Sidney Sheldon&#60;/Author>
                &#60;Manufacturer>Warner Books&#60;/Manufacturer>
                &#60;ProductGroup>Book&#60;/ProductGroup>
                &#60;Title>Master of the Game&#60;/Title>
            &#60;/ItemAttributes>
        &#60;/Item>
    &#60;/Items>
&#60;/ItemSearchResponse>
 * </code></pre>
 * An object literal of this form could also be used as the <code>data</code> config option.</p>
 * <p><b>Note:</b> Although not listed here, this class accepts all of the configuration options of 
 * <code>XmlReader</code>.</p>
*/
public class XmlStore extends Store {
/**
 * @constructor
 * @param config
 * @xtype xmlstore
 */
public function XmlStore(config:Object = null) {
  super(config);
}
    /**
     * @cfg {ext.data.DataReader} reader @hide
     */
    public native function constructor(config) : void;
}}
