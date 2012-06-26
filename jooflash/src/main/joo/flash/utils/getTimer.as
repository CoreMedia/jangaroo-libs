package flash.utils {
import joo.flash.Run;

/**
 * Used to compute relative time. For a Flash runtime processing ActionScript 3.0, this method returns the number of milliseconds that have elapsed since the Flash runtime virtual machine for ActionScript 3.0 (AVM2) started. For a Flash runtime processing ActionScript 2.0, this method returns the number of milliseconds since the Flash runtime began initialization. Flash runtimes use two virtual machines to process ActionScript. AVM1 is the ActionScript virtual machine used to run ActionScript 1.0 and 2.0. AVM2 is the ActionScript virtual machine used to run ActionScript 3.0. The <code>getTimer()</code> method behavior for AVM1 is different than the behavior for AVM2.
 * <p>For a calendar date (timestamp), see the Date object.</p>
 * @return The number of milliseconds since the runtime was initialized (while processing ActionScript 2.0), or since the virtual machine started (while processing ActionScript 3.0). If the runtime starts playing one SWF file, and another SWF file is loaded later, the return value is relative to when the first SWF file was loaded.
 *
 * @see flash.display.AVM1Movie
 * @see Date
 *
 * @example The following example uses the class <code>GetTimerExample</code> to get and print the number of milliseconds since the runtime initialized.
 * <listing>
 * package {
 *     import flash.utils.getTimer;
 *     import flash.display.Sprite;
 *
 *     public class GetTimerExample extends Sprite {
 *         public function GetTimerExample() {
 *             var duration:uint = getTimer();
 *             trace("duration: " + duration);
 *         }
 *     }
 * }
 * </listing>
 */
public function getTimer():int {
  return new Date().getTime() - Run.startTime;
}

}