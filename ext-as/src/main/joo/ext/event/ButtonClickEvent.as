package ext.event {
import ext.Button;

public class ButtonClickEvent {

  public function ButtonClickEvent() {
    super();
  }

  public native function get source():Button;
}
}