package ext.panel.event {

import ext.Element;
import ext.IEventObject;
import ext.Panel;

import flash.events.Event;

/**
 * An event that is fired when a tool is clicked.
 * It allows to access the original event, the DOM element of the clicked tool (toolEl),
 * and the panel containing the tool, as well as the tool's original config (tc).
 */
public class ToolClickEvent extends Event {

  /**
   * An event that is fired when a tool is clicked.
   * It allows to access the original event, the DOM element of the clicked tool (toolEl),
   * and the panel containing the tool, as well as the tool's original config (tc).
   */
  public function ToolClickEvent() {
    super("click");
  }

  /**
   * The click event.
   */
  public native function get event():IEventObject;

  /**
   * The tool Element.
   */
  public native function get toolEl():Element;

  /**
   * The host Panel.
   */
  public native function get panel():Panel;

  /**
   * The tool configuration object.
   */
  public native function get tc():Object;
}
}
