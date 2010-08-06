package ext {

  /**
   * A singleton EventObjectClass instance, wrapping the browser event currently being processed.
   * @singleton
   * @see ext.EventObjectClass
   */
  public native function get EventObject() : EventObjectClass;

}