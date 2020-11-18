package joo{
import js.URL;

/**
 * Represents an entry in an app listing.
 */
public interface AppEntry {

  /**
   * The technical name of the app.
   */
  function get name(): String;

  /**
   * The path to the app.
   */
  function get path(): URL;

  /**
   * The available locales for the app.
   */
  [ArrayElementType("String")]
  function get locales(): Array;
}
}
