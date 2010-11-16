package ext.form.action {
/**
 * Provides Ext.direct support for loading form data. This example illustrates usage
 * of ext.Direct to load a submit a form through ext.Direct.
 * <pre><code>
var myFormPanel = new ext.form.FormPanel({
    // configs for FormPanel
    title: 'Basic Information',
    border: false,
    padding: 10,
    buttons:[{
        text: 'Submit',
        handler: function(){
            basicInfo.getForm().submit({
                params: {
                    uid: 5
                }
            });
        }
    }],
    
    // configs apply to child items
    defaults: {anchor: '100%'},
    defaultType: 'textfield',
    items: [
        // form fields go here
    ],
    
    // configs for BasicForm
    api: {
        load: Profile.getBasicInfo,
        // The server-side must mark the submit handler as a 'formHandler'
        submit: Profile.updateBasicInfo
    },    
    paramOrder: ['uid']
});

// load the form
myFormPanel.getForm().load({
    params: {
        uid: 5
    }
});
 * </code></pre>
 */
public class DirectLoad extends Load {
    public native function constructor(form, opts) : void;
    override public native function run(options) : void;
    override protected native function getParams() : void;
    override protected native function processResponse(result) : void;
}}
