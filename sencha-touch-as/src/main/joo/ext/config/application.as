package ext.config {

import ext.form.Number;

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
 * <p>This class serves as a
 * typed config object for constructor of class Application.</p>
 *
 * <p>Copyright &#169; 2011 Sencha Inc.</p>
 * @see ext.Application
 */
[ExtConfig(target="ext.Application")]
public class application extends observable {

  public function application(config:Object = null) {

    super(config);
  }


  /**
   Will automatically set up the application to work in full screen mode by calling <a href="output/Ext.Viewport.html#Ext.Viewport-init">Ext.Viewport.init</a> if true (defaults to true)
   */
  public native function get autoInitViewport():Boolean;

  /**
   * @private
   */
  public native function set autoInitViewport(value:Boolean):void;

  /**
   If true, automatically calls <a href="output/Ext.Component.html#Ext.Component-setProfile">Ext.Component.setProfile</a> on all components whenever a application/device profile change is detected (defaults to true)
   */
  public native function get autoUpdateComponentProfiles():Boolean;

  /**
   * @private
   */
  public native function set autoUpdateComponentProfiles(value:Boolean):void;

  /**
   When the app is first loaded, this url will be redirected to. Defaults to undefined
   */
  public native function get defaultUrl():String;

  /**
   * @private
   */
  public native function set defaultUrl(value:String):void;

  /**
   The number of milliseconds the load mask takes to fade out. Defaults to 1000
   */
  public native function get loadMaskFadeDuration():ext.form.Number;

  /**
   * @private
   */
  public native function set loadMaskFadeDuration(value:ext.form.Number):void;

  /**
   The number of milliseconds until the load mask is removed after starting the <a href="output/Ext.Application.html#Ext.Application-loadMaskFadeDuration">fadeout</a>. Defaults to 1050.
   */
  public native function get loadMaskRemoveDuration():ext.form.Number;

  /**
   * @private
   */
  public native function set loadMaskRemoveDuration(value:ext.form.Number):void;

  /**
   The name of the Application. This should be the same as the single global variable that the application uses, and should not contain spaces
   */
  public native function get name():String;

  /**
   * @private
   */
  public native function set name(value:String):void;

  /**
   A set of named profile specifications that this application supports. See the intro docs for an example
   */
  public native function get profiles():Object;

  /**
   * @private
   */
  public native function set profiles(value:Object):void;

  /**
   The scope to execute the <a href="output/Ext.Application.html#Ext.Application-launch">launch</a> function in. Defaults to the Application instance.
   */
  public native function get scope():Object;

  /**
   * @private
   */
  public native function set scope(value:Object):void;

  /**
   If true, determines the current application profile on launch and calls <a href="output/Ext.Application.html#Ext.Application-updateComponentProfiles">updateComponentProfiles</a>. Defaults to true
   */
  public native function get setProfilesOnLaunch():Boolean;

  /**
   * @private
   */
  public native function set setProfilesOnLaunch(value:Boolean):void;

  /**
   True to automatically set up Ext.History support (defaults to true)
   */
  public native function get useHistory():Boolean;

  /**
   * @private
   */
  public native function set useHistory(value:Boolean):void;

  /**
   True to automatically remove an application loading mask when the DOM is ready. If set to true, this expects a div called "loading-mask" to be present in the body. Pass the id of some other DOM node if using a custom loading mask element. Defaults to false.
   */
  public native function get useLoadMask():*;

  /**
   * @private
   */
  public native function set useLoadMask(value:*):void;


}
}
    