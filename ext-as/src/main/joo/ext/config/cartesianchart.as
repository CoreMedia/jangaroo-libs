package ext.config {


/**
 *
 * <p>This class serves as a typed config object for constructor of class CartesianChart.</p>
 *
 * @see ext.chart.CartesianChart
 */
[ExtConfig(target="ext.chart.CartesianChart")]
public class cartesianchart extends chart {

  public function cartesianchart(config:Object = null) {

    super(config);
  }


}
}
    