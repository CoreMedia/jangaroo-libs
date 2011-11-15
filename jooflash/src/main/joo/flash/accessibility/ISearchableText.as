package flash.accessibility {


/**
 * The ISearchableText interface can be implemented by objects that contain text which should be searchable on the web.
 */
public interface ISearchableText {
  /**
   * Gets the search text from a component implementing ISearchableText.
   */
  function get searchText():String;
}
}
