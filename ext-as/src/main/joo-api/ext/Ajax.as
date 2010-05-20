package ext {

/**
 * <p>The global Ajax request object that provides a simple way to make Ajax requests
 * with maximum flexibility.</p>
 * <p>Since ext.Ajax is a singleton, you can set common properties/events for it once
 * and override them at the request function level only if necessary.</p>
 * <p>Common <b>Properties</b> you may want to set are:<div class="mdetail-params"><ul>
 * <li><b><code><b class='link' title='#method'>method</b></code></b><p class="sub-desc"></p></li>
 * <li><b><code><b class='link' title='#extraParams'>extraParams</b></code></b><p class="sub-desc"></p></li>
 * <li><b><code><b class='link' title='#url'>url</b></code></b><p class="sub-desc"></p></li>
 * </ul></div>
 * <pre><code>
&#47;/ Default headers to pass in every request
ext.Ajax.defaultHeaders = {
    'Powered-By': 'Ext'
};
 * </code></pre> 
 * </p>
 * <p>Common <b>Events</b> you may want to set are:<div class="mdetail-params"><ul>
 * <li><b><code><b class='link' title='ext.data.Connection#beforerequest'>beforerequest</b></code></b><p class="sub-desc"></p></li>
 * <li><b><code><b class='link' title='ext.data.Connection#requestcomplete'>requestcomplete</b></code></b><p class="sub-desc"></p></li>
 * <li><b><code><b class='link' title='ext.data.Connection#requestexception'>requestexception</b></code></b><p class="sub-desc"></p></li>
 * </ul></div>
 * <pre><code>
&#47;/ Example: show a spinner during all Ajax requests
ext.Ajax.on('beforerequest', this.showSpinner, this);
ext.Ajax.on('requestcomplete', this.hideSpinner, this);
ext.Ajax.on('requestexception', this.hideSpinner, this);
 * </code></pre> 
 * </p>
 * <p>An example request:</p>
 * <pre><code>
&#47;/ Basic request
ext.Ajax.<b class='link' title='ext.data.Connection#request'>request</b>({
   url&#58; 'foo.php',
   success&#58; someFn,
   failure&#58; otherFn,
   headers&#58; {
       'my-header': 'foo'
   },
   params&#58; { foo: 'bar' }
});

&#47;/ Simple ajax form submission
ext.Ajax.<b class='link' title='ext.data.Connection#request'>request</b>({
    form&#58; 'some-form',
    params&#58; 'foo=bar'
});
 * </code></pre> 
 * </p>
*/
public native function get Ajax():AjaxClass;

}
