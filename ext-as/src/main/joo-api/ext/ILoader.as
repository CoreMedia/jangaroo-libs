package ext {


/**
 *
 *
 * <p>Copyright &#169; 2011 Sencha Inc.</p>
 *

 * <p>This interface defines the type of the singleton Loader.</p>
 * @see ext.#Loader ext.Loader
 * @see http://docs.sencha.com/ext-js/3-4/#!/api/Ext.Loader Sencha Docs Ext JS 3.4
 */
public interface ILoader {

  /**
   *
   *
   * @param filename The name of the file to create a script tag for
   * @param callback Optional callback, which is called when the script has been loaded
   * @return The new script ta
   * @see http://docs.sencha.com/ext-js/3-4/#!/api/Ext.Loader-method-buildScriptTag Sencha Docs Ext JS 3.4
   */
  function buildScriptTag(filename:String, callback:Function):Element;

  /**
   * Loads a given set of .js files. Calls the callback function when all files have been loaded Set preserveOrder to true to ensure non-parallel loading of files if load order is important
   *
   * @param fileList Array of all files to load
   * @param callback Callback to call after all files have been loaded
   * @param scope The scope to call the callback in
   * @param preserveOrder True to make files load in serial, one after the other (defaults to false)
   * @see http://docs.sencha.com/ext-js/3-4/#!/api/Ext.Loader-method-load Sencha Docs Ext JS 3.4
   */
  function load(fileList:Array, callback:Function, scope:Object, preserveOrder:Boolean):void;

}
}
    