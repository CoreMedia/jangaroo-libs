package ext.event {

import ext.Component;

/**
 * Fires before the component is rendered. Return false from an event handler to stop 
 * the render.
 * @see ext.Component#render()
 */
public class ComponentBeforerenderEvent {

  public function ComponentBeforerenderEvent(args:Array) {
    this['source'] = args[0];
  }

  /**
   *  The Component that is about to be rendered.
   */
  public native function get source():Component;

}
}