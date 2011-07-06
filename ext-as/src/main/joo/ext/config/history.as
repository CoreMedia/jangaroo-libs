package ext.config {


/**
 * History management component that allows you to register arbitrary tokens that signify application history state on navigation actions. You can then handle the history <a href="output/Ext.History.html#Ext.History-change">change</a> event in order to reset your application UI to the appropriate state when the user navigates forward or backward through the browser history stack.
 * <p>This class serves as a typed config object for constructor of class History.</p>
 *
 * @see ext.HistoryClass
 */
[ExtConfig(target="ext.HistoryClass")]
public class history extends observable {

  public function history(config:Object = null) {

    super(config);
  }


}
}
    