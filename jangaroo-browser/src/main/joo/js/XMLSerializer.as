package js {

[Native(global="XMLSerializer")]
public class XMLSerializer {

  public function XMLSerializer() {
  }

  //noinspection JSMethodCanBeStatic
  public function serializeToString(node:Node):String {
    // this implementation is only used if the method is not already defined, so we assume IE:
    return node['xml'];
  }
}
}