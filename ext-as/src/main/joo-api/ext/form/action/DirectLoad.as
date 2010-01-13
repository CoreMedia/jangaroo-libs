package ext.form.action {
/**
 * Provides Ext.direct support for loading form data. This example illustrates usage
 * of ext.Direct to load a submit a form through ext.Direct.
 * <pre><code>
var myFormPanel = new ext.form.FormPanel({
    &#47;/ configs for FormPanel
    title&#58; 'Basic Information',
    border&#58; false,
    padding&#58; 10,
    buttons&#58;[{
        text&#58; 'Submit',
        handler&#58; function(){
            basicInfo.getForm().submit({
                params&#58; {
                    uid&#58; 5
                }
            });
        }
    }],
    
    &#47;/ configs apply to child items
    defaults&#58; {anchor: '100%'},
    defaultType&#58; 'textfield',
    items&#58; [
        &#47;/ form fields go here
    ],
    
    &#47;/ configs for BasicForm
    api&#58; {
        load&#58; Profile.getBasicInfo,
        &#47;/ The server-side must mark the submit handler as a 'formHandler'
        submit&#58; Profile.updateBasicInfo
    },    
    paramOrder&#58; ['uid']
});

&#47;/ load the form
myFormPanel.getForm().load({
    params&#58; {
        uid&#58; 5
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
