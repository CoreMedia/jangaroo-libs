package ext {
import ext.util.Observable;

/**
 * History management component that allows you to register arbitrary tokens that signify application
 * history state on navigation actions.  You can then handle the history <b class='link' title='#change'>change</b> event in order
 * to reset your application UI to the appropriate state when the user navigates forward or backward through
 * the browser history stack.
*/
public class History extends Observable {
/**
 * @singleton
 */
        /**
         * The id of the hidden field required for storing the current history token.
         * @property
         */
        public static var fieldId : String;
        /**
         * The id of the iframe required by IE to manage the history stack.
         * @property
         */
        public static var iframeId : String;
        public static var events;
        /**
         * Initialize the global History instance.
         * @param onReady A callback function that will be called once the history
         * component is fully initialized.
         * @param scope The callback scope
         */
        public static native function init(onReady : Function, scope : Object = null) : void;
        /**
         * Add a new token to the history stack. This can be any arbitrary value, although it would
         * commonly be the concatenation of a component id and another id marking the specifc history
         * state of that component.  Example usage:
         * <pre><code>
// Handle tab changes on a TabPanel
tabPanel.on('tabchange', function(tabPanel, tab){
    ext.History.add(tabPanel.id + ':' + tab.id);
});
</code></pre>
         * @param token The value that defines a particular application-specific history state
         * @param preventDuplicates When true, if the passed token matches the current token
         * it will not save a new history step. Set to false if the same state can be saved more than once
         * at the same history stack location (defaults to true).
         */
        public static native function add(token : String, preventDuplicates : Boolean) : void;
        /**
         * Programmatically steps back one step in browser history (equivalent to the user pressing the Back button).
         */
        public static native function back() : void;
        /**
         * Programmatically steps forward one step in browser history (equivalent to the user pressing the Forward button).
         */
        public static native function forward() : void;
        /**
         * Retrieves the currently-active history token.
         * @return The token
         */
        public static native function getToken() : String;
}}
