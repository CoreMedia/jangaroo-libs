package ext.splitbar {
public class AbsoluteLayoutAdapter extends BasicLayoutAdapter {
  /**
   * Adapter that  moves the splitter element to align with the resized sizing element. 
   * Used with an absolute positioned SplitBar.
   * @param container The container that wraps around the absolute positioned content. If it's
   * document.body, make sure you assign an id to the body element.
   */

  public function AbsoluteLayoutAdapter(container : *) {
    container++;
  }

  override public native function init(s) : void;
    //override public native function getElementSize(s) : void;
    //override public native function setElementSize(s, newSize, onComplete) : void;
    public native function moveSplitter(s) : void;
/**
 * Orientation constant - Create a vertical SplitBar
 * @static
 */
/**
 * Orientation constant - Create a horizontal SplitBar
 * @static
 */
/**
 * Placement constant - The resizing element is to the left of the splitter element
 * @static
 */
/**
 * Placement constant - The resizing element is to the right of the splitter element
 * @static
 */
/**
 * Placement constant - The resizing element is positioned above the splitter element
 * @static
 */
/**
 * Placement constant - The resizing element is positioned under splitter element
 * @static
 */
}}
