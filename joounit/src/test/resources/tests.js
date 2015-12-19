Ext.Loader.setPath('AS3', 'joo/AS3.js');
Ext.Loader.setPath('joo', 'joo/classes/joo');
Ext.Loader.setPath('trace', 'joo/classes/joo/trace.js');
Ext.Loader.setPath('com', 'joo/classes/com');
Ext.Loader.setPath('net', 'joo/classes/net');
Ext.Loader.setPath('flexunit', 'joo/classes/flexunit');
Ext.Loader.setPath('flash', 'joo/classes/flash');
Ext.Loader.setPath('mx', 'joo/classes/mx');
/*
 * This file is generated and updated by Sencha Cmd. You can edit this file as
 * needed for your application, but these edits will have to be merged by
 * Sencha Cmd when upgrading.
 */
Ext.define("FlExtAS.Application", {
    extend: "Ext.app.Application",

    requires: [
        'AS3',
        'net.jangaroo.joounit.runner.BrowserRunner',
        'flexunit.framework.AllFrameworkTests'        
    ],

    launch: function() {
      net.jangaroo.joounit.runner.BrowserRunner.main({
        testSuite: flexunit.framework.AllFrameworkTests
      });
    }
});

Ext.application({
    name: 'FlExtAS',

    extend: 'FlExtAS.Application',

    // The name of the initial view to create. With the classic toolkit this class
    // will gain a "viewport" plugin if it does not extend Ext.Viewport. With the
    // modern toolkit, the main view will be added to the Viewport.
    //
//    mainView: 'net.jangaroo.joounit.runner.BrowserRunner',
    
	
    //-------------------------------------------------------------------------
    // Most customizations should be made to FlExtAS.Application. If you need to
    // customize this file, doing so below this section reduces the likelihood
    // of merge conflicts when upgrading to new versions of Sencha Cmd.
    //-------------------------------------------------------------------------
});
