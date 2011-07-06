package ext.config {


/**
 *
 * <p>This class serves as a typed config object for constructor of class BarChart.</p>
 *
 * @see ext.chart.BarChart
 */
[ExtConfig(target="ext.chart.BarChart")]
public class barchart extends cartesianchart {

  public function barchart(config:Object = null) {

    super(config);
  }


}
}
    