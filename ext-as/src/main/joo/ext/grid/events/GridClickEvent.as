package ext.grid.events {
import ext.IEventObject;
import ext.grid.GridPanel;

import flash.events.Event;

public class GridClickEvent extends Event {

  public function GridClickEvent(type:String) {
    super(type);
  }

  public native function get grid():GridPanel;
  public native function get rowIndex():Number;
  public native function get e():IEventObject;

}
}