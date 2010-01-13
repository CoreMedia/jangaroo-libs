package ext.toolbar {

import ext.Element;

import js.HTMLElement;

/**
 * A simple class that adds a vertical separator bar between toolbar items
 * (css class:<code>'xtb-sep'</code>). Example usage:
 * <pre><code>
new ext.Panel({
    tbar : [
        'Item 1',
        {xtype: 'tbseparator'}, // or '-'
        'Item 2'
    ]
});
</code></pre>
*/
public class Separator extends Item {
/**
 * @constructor
 * Creates a new Separator
 * @xtype tbseparator
 */
  public function Separator(el:HTMLElement) {
    super(el);
  }

  override protected native function onRender(container : Element, position : Element) : void;
}}
