package ext.updater {

import ext.Element;
import ext.Updater;
import ext.util.Observable;

/**
 * Default Content renderer. Updates the elements innerHTML with the responseText.
 */
public class BasicRenderer extends Observable {
    /**
     * This is called when the transaction is completed and it's time to update the element - The BasicRenderer
     * updates the elements innerHTML with the responseText - To perform a custom render (i.e. XML or JSON processing),
     * create an object with a "render(el, response)" method and pass it to setRenderer on the Updater.
     * @param el The element being rendered
     * @param response The XMLHttpRequest object
     * @param updateManager The calling update manager
     * @param callback A callback that will need to be called if loadScripts is true on the Updater
     */
     public native function render(el : Element, response : Object, updateManager : Updater, callback : Function) : void;
}}
