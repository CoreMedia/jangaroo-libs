package ext {

import ext.form.Number;
import ext.util.Observable;

/**
 * Fires when a change in Application profile has been detected, but before any action is taken to update the application's components about the change. Return false from any listener to cancel the automatic updating of application components (see <a href="output/Ext.Application.html#Ext.Application-autoUpdateComponentProfiles">autoUpdateComponentProfiles</a>)
 * Listeners will be called with the following arguments:
 * <ul>

 *       <li>
 *           <code>profile:String</code>
 The name of the new profile
 *       </li>

 *       <li>
 *           <code>oldProfile:String</code>
 The name of the old profile (may be undefined)
 *       </li>

 * </ul>
 */
[Event(name="beforeprofilechange")]

/**
 * Fires when the application is launched
 * Listeners will be called with the following arguments:
 * <ul>

 *       <li>
 *           <code>app:ext.Application</code>
 The Application instance
 *       </li>

 * </ul>
 */
[Event(name="launch")]

/**
 * Fires when a change in Applicatino profile has been detected and the application's components have already been informed. Listeners can perform additional processing here if required
 * Listeners will be called with the following arguments:
 * <ul>

 *       <li>
 *           <code>profile:String</code>
 The name of the new profile
 *       </li>

 *       <li>
 *           <code>oldProfile:String</code>
 The name of the old profile (may be undefined)
 *       </li>

 * </ul>
 */
[Event(name="profilechange")]


/**
 * Represents a Sencha Application. Most Applications consist of at least the application's name and a launch function:
 <pre><code>new Ext.Application({
 name: 'MyApp',

 launch: function() {
 this.viewport = new Ext.Panel({
 fullscreen: true,

 id    : 'mainPanel',
 layout: 'card',
 items : [
 {
 html: 'Welcome to My App!'
 }
 ]
 });
 }
 });
 </code></pre><p>Instantiating a new application automatically creates a global variable using the configured <a href="output/Ext.Application.html#Ext.Application-name">name</a> property and sets up namespaces for views, stores, models and controllers within the app:</p><pre><code>//this code is run internally automatically when creating the app
 <a href="Ext.ns.html">Ext.ns</a>('MyApp', 'MyApp.views', 'MyApp.stores', 'MyApp.models', 'MyApp.controllers');
 </code></pre><p>The launch function usually creates the Application's Viewport and runs any actions the Application needs to perform when it boots up. The launch function is only expected to be run once.</p><p><u>Routes and history support</u></p><p>Sencha Applications provide in-app deep linking and history support, allowing your users both to use the back button inside your application and to refresh the page and come back to the same screen even after navigating. In-app history support relies on the Routing engine, which maps urls to controller/action pairs. Here's an example route definition:</p><pre><code>//Note the # in the url examples below
 Ext.Router.draw(function(map) {
 //maps the url http://mydomain.com/#dashboard to the home controller's index action
 map.connect('dashboard', {controller: 'home', action: 'index'});

 //fallback route - would match routes like http://mydomain.com/#users/list to the 'users' controller's
 //'list' action
 map.connect(':controller/:action');
 });
 </code></pre><p>If you generated your Sencha app using the Sencha Command application generator script, you'll see this file is already present in your application's app/routes.js file. History-driven apps can specify the <a href="output/Ext.Application.html#Ext.Application-defaultUrl">defaultUrl</a> configuration option, which will dispatch to that url if no url is currently set:</p><pre><code>new Ext.Application({
 name: 'MyApp',
 defaultUrl: 'dashboard'
 });
 </code></pre><p><u>Application profiles</u></p><p>Applications support multiple app profiles and reconfigure itself accordingly. Here we set up an Application with 3 profiles - one if the device is a phone, one for tablets in landscape orientation and one for tablets in portrait orientation:</p><pre><code>new Ext.Application({
 name: 'MyApp',

 profiles: {
 phone: function() {
 return Ext.is.Phone;
 },
 tabletPortrait: function() {
 return Ext.is.Tablet &amp;&amp; Ext.orientation == 'portrait';
 },
 tabletLandscape: function() {
 return Ext.is.Tablet &amp;&amp; Ext.orientation == 'landscape';
 }
 }
 });
 </code></pre><p>When the Application checks its list of profiles, the first function that returns true becomes the current profile. The Application will normally automatically detect when a profile change has occurred (e.g. if a tablet is rotated from portrait to landscape mode) and fire the <a href="output/Ext.Application.html#Ext.Application-profilechange">profilechange</a> event. It will also by default inform all <a href="Ext.Component.html">Components</a> on the page that the current profile has changed by calling their <a href="output/Ext.Component.html#Ext.Component-setProfile">setProfile</a> functions. The setProfile function is left as an empty function for you to implement if your component needs to react to different device/application profiles.</p><p>The current profile can be found using <a href="output/Ext.Application.html#Ext.Application-getProfile">getProfile</a>. If the Application does not correctly detect device profile changes, calling the <a href="output/Ext.Application.html#Ext.Application-determineProfile">determineProfile</a> function will force it to re-check.</p>
 *
 * <p>Copyright &#169; 2011 Sencha Inc.</p>
 *

 * @see ext.config.application
 * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/Application.html#cls-Ext.Application Ext JS source
 */
[Native]
public class Application extends Observable {

  /**
   *
   *
   * @see ext.config.application
   */
  public function Application() {
    super();
  }

  /**
   Will automatically set up the application to work in full screen mode by calling <a href="output/Ext.Viewport.html#Ext.Viewport-init">Ext.Viewport.init</a> if true (defaults to true)
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/ Ext JS source
   */
  public native function get autoInitViewport():Boolean;

  /**
   If true, automatically calls <a href="output/Ext.Component.html#Ext.Component-setProfile">Ext.Component.setProfile</a> on all components whenever a application/device profile change is detected (defaults to true)
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/ Ext JS source
   */
  public native function get autoUpdateComponentProfiles():Boolean;

  /**
   When the app is first loaded, this url will be redirected to. Defaults to undefined
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/ Ext JS source
   */
  public native function get defaultUrl():String;

  /**
   The number of milliseconds the load mask takes to fade out. Defaults to 1000
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/ Ext JS source
   */
  public native function get loadMaskFadeDuration():ext.form.Number;

  /**
   The number of milliseconds until the load mask is removed after starting the <a href="output/Ext.Application.html#Ext.Application-loadMaskFadeDuration">fadeout</a>. Defaults to 1050.
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/ Ext JS source
   */
  public native function get loadMaskRemoveDuration():ext.form.Number;

  /**
   The name of the Application. This should be the same as the single global variable that the application uses, and should not contain spaces
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/ Ext JS source
   */
  public native function get name():String;

  /**
   A set of named profile specifications that this application supports. See the intro docs for an example
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/ Ext JS source
   */
  public native function get profiles():Object;

  /**
   The scope to execute the <a href="output/Ext.Application.html#Ext.Application-launch">launch</a> function in. Defaults to the Application instance.
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/ Ext JS source
   */
  public native function get scope():Object;

  /**
   If true, determines the current application profile on launch and calls <a href="output/Ext.Application.html#Ext.Application-updateComponentProfiles">updateComponentProfiles</a>. Defaults to true
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/ Ext JS source
   */
  public native function get setProfilesOnLaunch():Boolean;

  /**
   True to automatically set up Ext.History support (defaults to true)
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/ Ext JS source
   */
  public native function get useHistory():Boolean;

  /**
   True to automatically remove an application loading mask when the DOM is ready. If set to true, this expects a div called "loading-mask" to be present in the body. Pass the id of some other DOM node if using a custom loading mask element. Defaults to false.
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/ Ext JS source
   */
  public native function get useLoadMask():*;

  /**
   *
   *
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/Application.html#method-Ext.Application-bindReady Ext JS source
   */
  public native function bindReady():void;

  /**
   * Calls each configured <a href="output/Ext.Application.html#Ext.Application-profile">profile</a> function, marking the first one that returns true as the current application profile. Fires the 'beforeprofilechange' and 'profilechange' events if the profile has changed
   *
   * @param silent If true, the events profilechange event is not fired
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/Application.html#method-Ext.Application-determineProfile Ext JS source
   */
  public native function determineProfile(silent:Boolean):void;

  /**
   * Dispatches to a given controller/action combo with optional arguments.
   *
   * @param options Object containing strings referencing the controller and action to dispatch to, plus optional args array
   * @return True if the controller and action were found and dispatched to, false otherwise
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/Application.html#method-Ext.Application-dispatch Ext JS source
   */
  public native function dispatch(options:Object):Boolean;

  /**
   * Gets the name of the currently-detected application profile
   *
   * @return The profile name
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/Application.html#method-Ext.Application-getProfile Ext JS source
   */
  public native function getProfile():String;

  /**
   *
   *
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/Application.html#method-Ext.Application-initLoadMask Ext JS source
   */
  public native function initLoadMask():void;

  /**
   * Called automatically when the page has completely loaded. This is an empty function that should be overridden by each application that needs to take action on page load
   *
   * @param profile The detected <a href="output/Ext.Application.html#Ext.Application-profiles">application profile</a>
   * @return By default, the Application will dispatch to the configured startup controller and action immediately after running the launch function. Return false to prevent this behavior.
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/Application.html#method-Ext.Application-launch Ext JS source
   */
  public native function launch(profile:String):Boolean;

  /**
   *
   *
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/Application.html#method-Ext.Application-onBeforeLaunch Ext JS source
   */
  public native function onBeforeLaunch():void;

  /**
   *
   *
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/Application.html#method-Ext.Application-onHistoryChange Ext JS source
   */
  public native function onHistoryChange():void;

  /**
   *
   *
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/Application.html#method-Ext.Application-onReady Ext JS source
   */
  public native function onReady():void;

  /**
   *
   *
   * @param profile The new profile name
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/Application.html#method-Ext.Application-updateComponentProfiles Ext JS source
   */
  public native function updateComponentProfiles(profile:String):void;

}
}
    