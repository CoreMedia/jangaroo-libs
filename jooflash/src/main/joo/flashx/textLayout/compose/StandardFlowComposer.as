package flashx.textLayout.compose {
import flashx.textLayout.container.ContainerController;
import flashx.textLayout.edit.ISelectionManager;
import flashx.textLayout.elements.ContainerFormattedElement;

/**
 * The StandardFlowComposer class provides a standard composer and container manager.
 * <p>Each call to <code>compose()</code> or <code>updateAllControllers()</code> normalizes the text flow as a first step. The normalizing process checks the parts of the TextFlow object that were modified and takes the following steps:</p><ol>
 * <li>Deletes empty FlowLeafElement and SubParagraphGroupElement objects.</li>
 * <li>Merges sibling spans that have identical attributes.</li>
 * <li>Adds an empty paragraph if a flow is empty.</li></ol>
 * <p>To use a StandardFlowComposer, assign it to the <code>flowComposer</code> property of a TextFlow object. Call the <code>updateAllControllers()</code> method to lay out and display the text in the containers attached to the flow composer.</p>
 * <p><b>Note:</b> For simple, static text flows, you can also use one of the text line factory classes. These factory classes will typically create lines with less overhead than a flow composer, but do not support editing, dynamic changes, or user interaction.</p>
 * <p><a href="http://help.adobe.com/en_US/FlashPlatform/reference/actionscript/3/flashx/textLayout/compose/StandardFlowComposer.html#includeExamplesSummary">View the examples</a></p>
 * @see flashx.textLayout.elements.TextFlow#flowComposer
 *
 */
public class StandardFlowComposer extends FlowComposerBase implements IFlowComposer {
  /**
   * True, if the flow composer is currently performing a composition operation.
   */
  public function get composing():Boolean {
    throw new Error('not implemented'); // TODO: implement!
  }

  /**
   * The number of containers assigned to this IFlowComposer instance.
   */
  public function get numControllers():int {
    throw new Error('not implemented'); // TODO: implement!
  }

  /**
   * The root element associated with this IFlowComposer instance.
   * <p>Only a TextFlow object can be a root element.</p>
   */
  public function get rootElement():ContainerFormattedElement {
    throw new Error('not implemented'); // TODO: implement!
  }

  /**
   * Creates a StandardFlowComposer object.
   * <p>To use an StandardFlowComposer object, assign it to the <code>flowComposer</code> property of a TextFlow object. Call the <code>updateAllControllers()</code> method to lay out and display the text in the containers attached to the flow composer.</p>
   * @example The following example composes a text flow up to and including the container holding the 345th position:
   * <listing>
   * package flashx.textLayout.compose.examples
   * {
   *     import flashx.textLayout.elements.TextFlow;
   *     import flashx.textLayout.compose.StandardFlowComposer;
   *
   *     public class StandardFlowComposer_constructor
   *     {
   *         public function createComposer(textFlow:TextFlow):void
   *         {
   *              textFlow.flowComposer = new StandardFlowComposer();
   *         }
   *     }
   * }
   * </listing>
   */
  public function StandardFlowComposer() {
    throw new Error('not implemented'); // TODO: implement!
  }

  /**
   * Adds a controller to this IFlowComposer instance.
   * <p>The container is added to the end of the container list.</p>
   * @param controller The ContainerController object to add.
   *
   * @example The following example creates a ContainerController and adds it to a TextFlow object:
   * <listing>
   * package flashx.textLayout.compose.examples
   * {
   *     public class StandardFlowComposer_addController
   *     {
   *         import flash.display.Sprite;
   *         import flashx.textLayout.elements.TextFlow;
   *         import flashx.textLayout.container.ContainerController;
   *
   *         public function setupController(textFlow:TextFlow):void
   *         {
   *             var container:Sprite = new Sprite();
   *             var controller:ContainerController = new ContainerController( container, 400, 200 );
   *             textFlow.flowComposer.addController( controller );
   *         }
   *     }
   * }
   * </listing>
   */
  public function addController(controller:ContainerController):void {
    throw new Error('not implemented'); // TODO: implement!
  }

  /**
   * Adds a controller to this IFlowComposer instance at the specified index.
   * <p>The list of controllers is 0-based (the first controller has an index of 0).</p>
   * @param controller The ContainerController object to add.
   * @param index A numeric index that specifies the position in the controller list at which to insert the ContainerController object.
   *
   * @example The following example creates a ContainerController and inserts it as the first container of a TextFlow object:
   * <listing>
   * package flashx.textLayout.compose.examples
   * {
   *     public class StandardFlowComposer_addControllerAt
   *     {
   *         import flash.display.Sprite;
   *         import flashx.textLayout.elements.TextFlow;
   *         import flashx.textLayout.container.ContainerController;
   *
   *         public function setupController(textFlow:TextFlow):void
   *         {
   *             var container:Sprite = new Sprite();
   *             var controller:ContainerController = new ContainerController( container, 400, 200 );
   *             textFlow.flowComposer.addControllerAt( controller, 0 );
   *         }
   *     }
   * }
   *
   * </listing>
   */
  public function addControllerAt(controller:ContainerController, index:int):void {
    throw new Error('not implemented'); // TODO: implement!
  }

  /**
   * Calculates how many lines are necessary to display the content in the root element of the flow and the positions of these lines in the flow's display containers.
   * <p>The <code>compose()</code> method only composes content if it has changed since the last composition operation. Results are saved so that subsequent calls to <code>compose()</code> or <code>updateAllControllers()</code> do not perform an additional recomposition if the flow content has not changed.</p>
   * <p>If the contents of any container have changed, the method returns <code>true</code>.</p>
   * @return true if anything changed.
   *
   * @see #updateAllControllers()
   * @see #updateToController()
   *
   * @example The following example composes a text flow:
   * <listing>
   * package flashx.textLayout.compose.examples
   * {
   *     public class StandardFlowComposer_compose
   *     {
   *         import flashx.textLayout.elements.TextFlow;
   *
   *         public function compose(textFlow:TextFlow):void
   *         {
   *             textFlow.flowComposer.compose();
   *         }
   *     }
   * }
   * </listing>
   */
  public function compose():Boolean {
    throw new Error('not implemented'); // TODO: implement!
  }

  /**
   * Composes the content of the root element up to and including the container at the specified index.
   * <p>If the contents of any container up to and including the container at the specified index has changed, the method returns <code>true</code>. If <code>index</code> is greater than the number of controllers (or not specified), then all containers are composed.</p>
   * @param index compose at least up to this container in the TextFlow. If controllerIndex is greater than the number of controllers, compose to the end of the last container.
   *
   * @return true if anything changed.
   *
   * @example The following example composes a text flow up to the fourth container:
   * <listing>
   * package flashx.textLayout.compose.examples
   * {
   *     public class StandardFlowComposer_composeToController
   *     {
   *         import flashx.textLayout.elements.TextFlow;
   *
   *         public function compose(textFlow:TextFlow):void
   *         {
   *             textFlow.flowComposer.composeToController( 3 );
   *         }
   *     }
   * }
   * </listing>
   */
  public function composeToController(index:int):Boolean {
    throw new Error('not implemented'); // TODO: implement!
  }

  /**
   * Composes the content of the root element up to the specified position.
   * <p>If the contents of any container up to and including the container holding the content at the specified position has changed, the method returns <code>true</code>. If <code>absolutePosition</code> is greater than the length of the TextFlow (or not specified), then the entire flow is composed.</p>
   * @param absolutePosition compose at least up to this position in the TextFlow. By default or if absolutePosition is past the end of the flow compose to the end of the flow.
   *
   * @return true if anything changed.
   *
   * @example The following example composes a text flow up to and including the container holding the 345th position:
   * <listing>
   * package flashx.textLayout.compose.examples
   * {
   *     public class StandardFlowComposer_composeToPosition
   *     {
   *         import flashx.textLayout.elements.TextFlow;
   *
   *         public function compose(textFlow:TextFlow):void
   *         {
   *             textFlow.flowComposer.composeToPosition( 344 );
   *         }
   *     }
   * }
   * </listing>
   */
  public function composeToPosition(absolutePosition:int):Boolean {
    throw new Error('not implemented'); // TODO: implement!
  }

  /**
   * Returns the index of the controller containing the content at the specified position.
   * <p>A position can be considered to be the division between two characters or other elements of a text flow. If the value in <code>absolutePosition</code> is a position between the last character of one container and the first character of the next, then the preceding container is returned if the <code>preferPrevious</code> parameter is set to <code>true</code> and the later container is returned if the <code>preferPrevious</code> parameter is set to <code>false</code>.</p>
   * <p>The method returns -1 if the content at the specified position is not in any container or is outside the range of positions in the text flow.</p>
   * @param absolutePosition The position of the content for which the container index is sought.
   * @param preferPrevious Specifies which container index to return when the position is between the last element in one container and the first element in the next.
   *
   * @return the index of the container controller or -1 if not found.
   *
   * @example The following example gets the index of the container containing the 345th character or element of a text flow:
   * <listing>
   * package flashx.textLayout.compose.examples
   * {
   *     import flashx.textLayout.elements.TextFlow;
   *     import flashx.textLayout.compose.StandardFlowComposer;
   *
   *     public class StandardFlowComposer_findControllerIndexAtPosition
   *     {
   *         public function findControllerIndexAtPosition(textFlow:TextFlow):void
   *         {
   *             var index:int = textFlow.flowComposer.findControllerIndexAtPosition( 344 );
   *         }
   *     }
   * }
   * </listing>
   */
  public function findControllerIndexAtPosition(absolutePosition:int, preferPrevious:Boolean = false):int {
    throw new Error('not implemented'); // TODO: implement!
  }

  /**
   * Returns the absolute position of the first content element in the specified ContainerController object.
   * <p>A position is calculated by counting the division between two characters or other elements of a text flow. The position preceding the first element of a flow is zero. An absolute position is the position counting from the beginning of the flow.</p>
   * @param controller A ContainerController object associated with this flow composer.
   *
   * @return the position before the first character or graphic in the ContainerController.
   *
   */
  public function getAbsoluteStart(controller:ContainerController):int {
    throw new Error('not implemented'); // TODO: implement!
  }

  /**
   * Returns the ContainerController object at the specified index.
   * @param index The index of the ContainerController object to return.
   *
   * @return the ContainerController object at the specified position.
   *
   * @example The following example returns a reference to the first ContainerController in a text flow:
   * <listing>
   * package flashx.textLayout.compose.examples
   * {
   *     import flashx.textLayout.elements.TextFlow;
   *     import flashx.textLayout.container.ContainerController;
   *
   *     public class StandardFlowComposer_getControllerAt
   *     {
   *         public function findControllerIndexAtPosition(textFlow:TextFlow):void
   *         {
   *             var controller:ContainerController =  textFlow.flowComposer.getControllerAt( 0 );
   *         }
   *     }
   * }
   * </listing>
   */
  public function getControllerAt(index:int):ContainerController {
    throw new Error('not implemented'); // TODO: implement!
  }

  /**
   * Returns the index of the specified ContainerController object.
   * @param controller A reference to the ContainerController object to find.
   *
   * @return the index of the specified ContainerController object or -1 if the controller is not attached to this flow composer.
   *
   * @example The following example returns the index of a controller in a text flow:
   * <listing>
   * package flashx.textLayout.compose.examples
   * {
   *     import flashx.textLayout.elements.TextFlow;
   *     import flashx.textLayout.container.ContainerController;
   *
   *     public class StandardFlowComposer_getControllerIndex
   *     {
   *         public function getControllerIndex(textFlow:TextFlow, controller:ContainerController):void
   *         {
   *             var index:int =  textFlow.flowComposer.getControllerIndex( controller );
   *         }
   *     }
   * }
   * </listing>
   */
  public function getControllerIndex(controller:ContainerController):int {
    throw new Error('not implemented'); // TODO: implement!
  }

  /**
   * Called by the TextFlow when the interaction manager changes.
   * <p>This function is called automatically. Your code does not typically need to call this method. Classes that extend StandardFlowComposer can override this method to update event listeners and other properties that depend on the interaction manager.</p>
   * @param newInteractionManager The new ISelectionManager instance.
   *
   */
  public function interactionManagerChanged(newInteractionManager:ISelectionManager):void {
    throw new Error('not implemented'); // TODO: implement!
  }

  /**
   * Returns true if composition is necessary, false otherwise
   * @return <code><a href="http://help.adobe.com/en_US/FlashPlatform/reference/actionscript/3/Boolean.html">Boolean</a></code>
   *
   */
  protected function preCompose():Boolean {
    throw new Error('not implemented'); // TODO: implement!
  }

  /**
   * Removes all controllers from this IFlowComposer instance.
   */
  public function removeAllControllers():void {
    throw new Error('not implemented'); // TODO: implement!
  }

  /**
   * Removes a controller from this IFlowComposer instance.
   * @param controller The ContainerController instance to remove.
   *
   */
  public function removeController(controller:ContainerController):void {
    throw new Error('not implemented'); // TODO: implement!
  }

  /**
   * Removes the controller at the specified index from this IFlowComposer instance.
   * @param index The index of the ContainerController object to remove.
   *
   */
  public function removeControllerAt(index:int):void {
    throw new Error('not implemented'); // TODO: implement!
  }

  /**
   * Sets the focus to the container that contains the location specified by the <code>absolutePosition</code> parameter.
   * <p>The StandardFlowComposer calls the <code>setFocus()</code> method of the ContainerController object containing the specified text flow position.</p>
   * @param absolutePosition Specifies the position in the text flow of the container to receive focus.
   * @param leanLeft If true and the position is before the first character in a container, sets focus to the end of the previous container.
   *
   * @see flash.display.Stage#focus
   *
   */
  public function setFocus(absolutePosition:int, leanLeft:Boolean = false):void {
    throw new Error('not implemented'); // TODO: implement!
  }

  /**
   *
   * @param newRootElement <code>newRootElement:<a href="http://help.adobe.com/en_US/FlashPlatform/reference/actionscript/3/flashx/textLayout/elements/ContainerFormattedElement.html">ContainerFormattedElement</a></code>
   *
   */
  public function setRootElement(newRootElement:ContainerFormattedElement):void {
    throw new Error('not implemented'); // TODO: implement!
  }

  /**
   * Composes the content of the root element and updates the display.
   * <p>Text layout is conducted in two phases: composition and display. In the composition phase, the flow composer calculates how many lines are necessary to display the content as well as the position of these lines in the flow's display containers. In the display phase, the flow composer updates the display object children of its containers. The <code>updateAllControllers()</code> method initiates both phases in sequence. The StandardFlowComposer keeps track of changes to content so that a full cycle of composition and display is only performed when necessary.</p>
   * <p>This method updates all the text lines and the display list immediately and synchronously.</p>
   * <p>If the contents of any container is changed, the method returns <code>true</code>.</p>
   * @return true if anything changed.
   *
   */
  public function updateAllControllers():Boolean {
    throw new Error('not implemented'); // TODO: implement!
  }

  /**
   * Composes and updates the display up to and including the container at the specified index.
   * <p>The <code>updateToController()</code> method composes the content and updates the display of all containers up to and including the container at the specified index. For example, if you have a chain of 20 containers and specify an index of 10, <code>updateToController()</code> ensures that the first through the tenth (indexes 0-9) containers are composed and displayed. Composition stops at that point. If <code>controllerIndex</code> is -1 (or not specified), then all containers are updated.</p>
   * <p>This method updates all the text lines and the display list immediately and synchronously.</p>
   * <p>If the contents of any container is changed, the method returns <code>true</code>.</p>
   * @param index index of the last container to update (by default updates all containers)
   *
   * @return <code>true</code>, if anything changed.
   *
   */
  public function updateToController(index:int):Boolean {
    throw new Error('not implemented'); // TODO: implement!
  }
}
}
