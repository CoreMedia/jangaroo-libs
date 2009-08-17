package ext {
/**
 * An object that represents a group of <b class='link'>ext.Window</b> instances and provides z-order management
 * and window activation behavior.
*/
public class WindowGroup {
/**
 * @constructor
 */
public function WindowGroup() {
  super();
}
        /**
         * The starting z-index for windows (defaults to 9000)
         */
        public var zseed  : Number;
        protected native function register(win) : void;
        protected native function unregister(win) : void;
        /**
         * Gets a registered window by id.
         * @param id The id of the window or a <b class='link'>ext.Window</b> instance
         * @return 
         */
        public native function get(id : *) : Window;
        /**
         * Brings the specified window to the front of any other active windows.
         * @param win The id of the window or a <b class='link'>ext.Window</b> instance
         * @return True if the dialog was brought to the front, else false
         * if it was already in front
         */
        public native function bringToFront(win : *) : Boolean;
        /**
         * Sends the specified window to the back of other active windows.
         * @param win The id of the window or a <b class='link'>ext.Window</b> instance
         * @return The window
         */
        public native function sendToBack(win : *) : Window;
        /**
         * Hides all windows in the group.
         */
        public native function hideAll() : void;
        /**
         * Gets the currently-active window in the group.
         * @return The active window
         */
        public native function getActive() : Window;
        /**
         * Returns zero or more windows in the group using the custom search function passed to this method.
         * The function should accept a single <b class='link'>ext.Window</b> reference as its only argument and should
         * return true if the window matches the search criteria, otherwise it should return false.
         * @param fn The search function
         * @param scope The scope in which to execute the function (defaults to the window
         * that gets passed to the function if not specified)
         * @return An array of zero or more matching windows
         */
        public native function getBy(fn : Function, scope : Object = undefined) : Array;
        /**
         * Executes the specified function once for every window in the group, passing each
         * window as the only parameter. Returning false from the function will stop the iteration.
         * @param fn The function to execute for each item
         * @param scope The scope in which to execute the function
         */
        public native function each(fn : Function, scope : Object = undefined) : void;
/**
*/
}}
