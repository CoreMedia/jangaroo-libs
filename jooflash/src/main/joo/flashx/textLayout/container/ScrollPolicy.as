package flashx.textLayout.container {


/**
 * The ScrollPolicy class is an enumeration class that defines values for setting the <code>horizontalScrollPolicy</code> and <code>verticalScrollPolicy</code> properties of the ContainerController class, which defines a text flow container.
 * @see ContainerController#horizontalScrollPolicy
 * @see ContainerController#verticalScrollPolicy
 *
 */
public final class ScrollPolicy {
  /**
   * Specifies that scrolling is to occur if the content exceeds the container's dimension. The runtime calculates the number of lines that overflow the container and the user can navigate to them with cursor keys, by drag selecting, or by rotating the mouse wheel. You can also cause scrolling to occur by setting the corresponding position value, either <code>ContainerController.horizontalScrollPosition</code> or <code>ContainerController.verticalScrollPosition</code>. Also, the runtime can automatically scroll the contents of the container during editing.
   */
  public static const AUTO:String = "auto";
  /**
   * Causes the runtime to not display overflow lines, which means that the user cannot navigate to them. In this case, setting the corresponding <code>ContainerController.horizontalScrollPosition</code> and <code>ContainerController.verticalScrollPosition</code> properties have no effect.
   */
  public static const OFF:String = "off";
  /**
   * Specifies that scrolling is available to access content that exceeds the container's dimension. The runtime calculates the number of lines that overflow the container and allows the user to scroll them into view with the cursor keys, by drag selecting, or by rotating the mouse wheel. You can also scroll by setting the corresponding position value, either <code>ContainerController.horizontalScrollPosition</code> or <code>ContainerController.verticalScrollPosition</code>. Also, the runtime can automatically scroll the contents of the container during editing.
   */
  public static const ON:String = "on";
}
}
