package ext {

import ext.config.setup;

public class Setup {

  public function Setup(config:setup) {
    Ext.setup(Ext.apply({
      onReady: function() {
        if (config.main) {
          ComponentMgr.create(config.main);
        }
        if (config.onReady) {
          config.onReady();
        }
      }
    }, config));
  }
}
}
