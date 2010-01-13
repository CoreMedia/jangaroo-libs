package ext.splitbar {

import ext.SplitBar;
import ext.util.Observable;

/**
 * Default Adapter. It assumes the splitter and resizing element are not positioned
 * elements and only gets/sets the width of the element. Generally used for table based layouts.
 */
public class BasicLayoutAdapter extends Observable {
    public native function init(s) : void;
    /**
     * Called before drag operations to get the current size of the resizing element. 
     * @param s The SplitBar using this adapter
     */
     public native function getElementSize(s : SplitBar) : void;
    /**
     * Called after drag operations to set the size of the resizing element.
     * @param s The SplitBar using this adapter
     * @param newSize The new size to set
     * @param onComplete A function to be invoked when resizing is complete
     */
    public native function setElementSize(s : SplitBar, newSize : Number, onComplete : Function) : void;
}}
