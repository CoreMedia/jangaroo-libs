Ext.application({
  paths: {
    'AS3': 'joo/AS3.js',
    'joo': 'joo/classes/joo',
    'com': 'joo/classes/com',
    'net': 'joo/classes/net',
    'flexunit': 'joo/classes/flexunit',
    'flash': 'joo/classes/flash',
    'mx': 'joo/classes/mx'
  },
  requires: [
    'AS3',
    'net.jangaroo.joounit.runner.BrowserRunner',
    'flexunit.framework.AllFrameworkTests'
  ],

  launch: function() {
    net.jangaroo.joounit.runner.BrowserRunner.main(
            flexunit.framework.AllFrameworkTests
    );
  }
});
