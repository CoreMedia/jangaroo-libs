package ext.config {


/**
 *
 * <p>This class serves as a typed config object for constructor of class StackedColumnChart.</p>
 *
 * @see ext.chart.StackedColumnChart
 */
[ExtConfig(target="ext.chart.StackedColumnChart")]
public class stackedcolumnchart extends cartesianchart {

  public function stackedcolumnchart(config:Object = null) {

    super(config);
  }


}
}
    