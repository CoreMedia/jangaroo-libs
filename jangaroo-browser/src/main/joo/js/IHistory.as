package js {

/**
 * The History interface allows manipulation of the browser session history, that is the pages visited in the tab or
 * frame that the current page is loaded in.
 */
[Native("History")]
public interface IHistory {

  /**
   * Returns an Integer representing the number of elements in the session history, including the currently loaded page.
   * For example, for a page loaded in a new tab this property returns 1.
   */
  function get length(): uint;

  /**
   * Allows web applications to explicitly set default scroll restoration behavior on history navigation. This property
   * can be either auto or manual.
   */
  function get scrollRestoration(): String;

  /**
   * @private
   */
  function set scrollRestoration(scrollRestoration: String): void;

  /**
   * Returns an any value representing the state at the top of the history stack. This is a way to look at the state
   * without having to wait for a popstate event.
   */
  function get state(): *;

  /**
   * This asynchronous method goes to the previous page in session history, the same action as when the user clicks the
   * browser's Back button. Equivalent to passing -1 to <code>#go</code>.
   *
   * @see #go()
   */
  function back(): void;

  /**
   * This asynchronous method goes to the next page in session history, the same action as when the user clicks the
   * browser's Forward button; this is equivalent to passing 1 to <code>@go</code>.
   *
   * @see #go()
   */
  function forward(): void;

  /**
   * Asynchronously loads a page from the session history, identified by its relative location to the current page, for
   * example -1 for the previous page or 1 for the next page. If you specify an out-of-bounds value (for instance,
   * specifying -1 when there are no previously-visited pages in the session history), this method silently has no
   * effect. Calling <code>#go</code> without parameters or a value of 0 reloads the current page.
   *
   * @param delta The position in the history to which you want to move, relative to the current page. A negative value
   *              moves backwards, a positive value moves forwards. So, for example, history.go(2) moves forward two
   *              pages and history.go(-2) moves back two pages. If no value is passed or if delta equals 0, it has the
   *              same result as calling <code>window.location.reload</code>.
   *
   * @see window.location.reload
   */
  function go(delta: int = 0): void;

  /**
   * Pushes the given data onto the session history stack with the specified title (and, if provided, URL). The data is
   * treated as opaque by the DOM; you may specify any JavaScript object that can be serialized.
   *
   * @param state The state object is a JavaScript object which is associated with the new history entry created by
   *              <code>#pushState</code>. Whenever the user navigates to the new state, a popstate event is fired, and
   *              the state property of the event contains a copy of the history entry's state object.
   *              The state object can be anything that can be serialized. Because Firefox saves state objects to the
   *              user's disk so they can be restored after the user restarts the browser, we impose a size limit of
   *              640k characters on the serialized representation of a state object. If you pass a state object whose
   *              serialized representation is larger than this to <code>#pushState</code>, the method will throw an
   *              exception. If you need more space than this, you're encouraged to use sessionStorage and/or
   *              localStorage.
   * @param title Most browsers currently ignore this parameter, although they may use it in the future. Passing the
   *              empty string here should be safe against future changes to the method. Alternatively, you could pass a
   *              short title for the state to which you're moving.
   * @param url The new history entry's URL is given by this parameter. Note that the browser won't attempt to load this
   *            URL after a call to <code>#pushState</code>, but it might attempt to load the URL later, for instance
   *            after the user restarts the browser. The new URL does not need to be absolute; if it's relative, it's
   *            resolved relative to the current URL. The new URL must be of the same origin as the current URL;
   *            otherwise, <code>#pushState</code> will throw an exception. If this parameter isn't specified, it's set
   *            to the document's current URL.
   */
  function pushState(state: *, title: String, url: String = undefined): void;

  /**
   * Updates the most recent entry on the history stack to have the specified data, title, and, if provided, URL. The
   * data is treated as opaque by the DOM; you may specify any JavaScript object that can be serialized.
   *
   * @param stateObj The state object is a JavaScript object which is associated with the history entry passed to the
   *                 <code>#replaceState</code> method. The state object can be null.
   * @param title Most browsers currently ignore this parameter, although they may use it in the future. Passing the
   *              empty string here should be safe against future changes to the method. Alternatively, you could pass a
   *              short title for the state.
   * @param url The URL of the history entry. The new URL must be of the same origin as the current URL; otherwise
   *            <code>#replaceState</code> throws an exception.
   */
  function replaceState(stateObj: *, title: String, url: String = undefined): void;
}
}
