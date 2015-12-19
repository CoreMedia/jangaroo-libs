Ext.Loader.setPath('AS3', 'joo/AS3.js');
Ext.Loader.setPath('joo', 'joo/classes/joo');
Ext.Loader.setPath('com', 'joo/classes/com');
Ext.Loader.setPath('net', 'joo/classes/net');
Ext.Loader.setPath('flexunit', 'joo/classes/flexunit');
Ext.Loader.setPath('flash', 'joo/classes/flash');
Ext.Loader.setPath('mx', 'joo/classes/mx');

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
});
