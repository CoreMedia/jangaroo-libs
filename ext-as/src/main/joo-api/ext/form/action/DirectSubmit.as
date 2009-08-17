package ext.form.action {
/**
 * Provides Ext.direct support for submitting form data.
 * See <b class='link'>ext.form.action.DirectLoad</b>.
 */
public class DirectSubmit extends Submit {
    public native function constructor(form, opts) : void;
    override public native function run(options) : void;
    override protected native function getParams() : void;
    override protected native function processResponse(result) : void;
}}
