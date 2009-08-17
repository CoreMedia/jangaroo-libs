package ext.listview {

import ext.util.Observable;

/**
 * <p>Supporting Class for ext.ListView.</p>
*/
public class Sorter extends Observable {
/**
 * @constructor
 * @param config
 */
public function Sorter(config : Object) {
  super();
  config++;
}
    /**
     * @cfg {Array} sortClasses
     * The CSS classes applied to a header when it is sorted. (defaults to <tt>["sort-asc", "sort-desc"]</tt>)
     */
    public var sortClasses  : Array;
    public native function constructor(config) : void;
    public native function init(listView) : void;
    public native function initEvents(view) : void;
    public native function updateSortState(store) : void;
    public native function updateSortIcon(col, dir) : void;
    public native function onHdClick(e) : void;
}}
