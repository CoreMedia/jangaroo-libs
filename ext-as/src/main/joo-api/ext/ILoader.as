package ext {


/**
 *
 *
 * <p>Copyright &#169; 2011 Sencha Inc.</p>
 *

 * <p>This interface defines the type of the singleton Loader.</p>
 * @see ext.#Loader ext.Loader
 * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/Loader.html#cls-Ext.Loader Ext JS source
 */
public interface ILoader {

  /**
   *
   *
   * @param filename The name of the file to create a script tag for
   * @param callback Optional callback, which is called when the script has been loaded
   * @return The new script ta
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/Loader.html#method-Ext.Loader-buildScriptTag Ext JS source
   */
  function buildScriptTag(filename:String, callback:Function):Element;

  /**
   * Loads a given set of .js files. Calls the callback function when all files have been loaded Set preserveOrder to true to ensure non-parallel loading of files if load order is important
   *
   * @param fileList Array of all files to load
   * @param callback Callback to call after all files have been loaded
   * @param scope The scope to call the callback in
   * @param preserveOrder True to make files load in serial, one after the other (defaults to false)
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/Loader.html#method-Ext.Loader-load Ext JS source
   */
  function load(fileList:Array, callback:Function, scope:Object, preserveOrder:Boolean):void;

}
}
    