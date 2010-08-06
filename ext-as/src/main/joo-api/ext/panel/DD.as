package ext.panel {

import ext.EventObjectClass;
import ext.Panel;
import ext.dd.DragSource;

import js.HTMLElement;

public class DD extends DragSource {
  public function DD(panel : Panel, config : Object = null) {
    super(panel, config);
  }
  //public var showFrame;
  //public var startDrag;
  override protected native function b4StartDrag(x:Number, y:Number) : void;
  override protected native function b4MouseDown(e:EventObjectClass) : void;
  override protected native function onInitDrag(x : Number, y : Number) : Boolean;
  //public var createFrame ;
  override public native function getDragEl() : HTMLElement;
  override public native function endDrag(e:EventObjectClass) : void;
  override public native function autoOffset(iPageX : int, iPageY : int) : void;

  public var panel:Panel;
}
}