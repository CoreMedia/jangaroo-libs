package ext.config {


/**
 * Provides AJAX-style update capabilities for Element objects. Updater can be used to <a href="output/Ext.Updater.html#Ext.Updater-update">update</a> an <a href="Ext.Element.html">Ext.Element</a> once, or you can use <a href="output/Ext.Updater.html#Ext.Updater-startAutoRefresh">startAutoRefresh</a> to set up an auto-updating <a href="Ext.Element.html">Element</a> on a specific interval.<br/><br/>Usage:<br/><pre><code>var el = Ext.get("foo"); // Get Ext.Element object
 var mgr = el.getUpdater();
 mgr.update({
 url: "http://myserver.com/index.php",
 params: {
 param1: "foo",
 param2: "bar"
 }
 });
 ...
 mgr.formUpdate("myFormId", "http://myserver.com/index.php");
 <br/>// or directly (returns the same Updater instance)
 var mgr = new Ext.Updater("myElementId");
 mgr.startAutoRefresh(60, "http://myserver.com/index.php");
 mgr.on("update", myFcnNeedsToKnow);
 <br/>// short handed call directly from the element object
 Ext.get("foo").load({
 url: "bar.php",
 scripts: true,
 params: "param1=foo&amp;param2=bar",
 text: "Loading Foo..."
 });
 </code></pre>
 * <p>This class serves as a typed config object for constructor of class Updater.</p>
 *
 * @see ext.Updater
 */
[ExtConfig(target="ext.Updater")]
public class updater extends observable {

  public function updater(config:Object = null) {

    super(config);
  }


}
}
    