if (typeof XML === "undefined") {
  XML = {}; // hack: fake XML class for browsers not supporting E4X (all but Firefox). If anywhere, belongs into Joo Runtime.
}
joo.loadScript("joo/net.jangaroo.jooflash-native.js");
joo.loadModule("net.jangaroo", "jooflash");
