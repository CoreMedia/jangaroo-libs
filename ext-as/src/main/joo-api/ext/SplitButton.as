package ext {

/**
 * A split button that provides a built-in dropdown arrow that can fire an event separately from the default
 * click event of the button.  Typically this would be used to display a dropdown menu that provides additional
 * options to the primary button action, but any custom handler can provide the arrowclick implementation.  Example usage:
 * <pre><code>
&#47;/ display a dropdown menu:
new ext.SplitButton({
	renderTo&#58; 'button-ct', // the container id
   	text&#58; 'Options',
   	handler&#58; optionsHandler, // handle a click on the button itself
   	menu&#58; new Ext.menu.Menu({
        items&#58; [
        	// these items will render as dropdown menu items when the arrow is clicked:
	        {text: 'Item 1', handler: item1Handler},
	        {text: 'Item 2', handler: item2Handler}
        ]
   	})
});

&#47;/ Instead of showing a menu, you provide any type of custom
&#47;/ functionality you want when the dropdown arrow is clicked:
new ext.SplitButton({
	renderTo&#58; 'button-ct',
   	text&#58; 'Options',
   	handler&#58; optionsHandler,
   	arrowHandler&#58; myCustomHandler
});
</code></pre>
*/
public class SplitButton extends Button {
/**
 * @cfg {Function} arrowHandler A function called when the arrow button is clicked (can be used instead of click event)
 * @cfg {String} arrowTooltip The title attribute of the arrow
 * @constructor
 * Create a new menu button
 * @param config The config object
 * @xtype splitbutton
 */
  public function SplitButton(config:Object) {
    super(config);
  }

  protected var arrowSelector  : String;
    public var split;
    override protected native function initComponent() : void;
    override protected native function onRender(container : Element, position : Element) : void;
    /**
     * Sets this button's arrow click handler.
     * @param handler The function to call when the arrow is clicked
     * @param scope Scope for the function passed above
     */
    public native function setArrowHandler(handler : Function, scope : Object = undefined) : void;
    override public native function getMenuClass() : void;
    public native function isClickOnArrow(e) : void;
    override protected native function onClick(e) : void;
    override protected native function isMenuTriggerOver(e, $internal) : void;
    override protected native function isMenuTriggerOut(e, $internal) : void;
}}
