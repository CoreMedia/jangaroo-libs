package ext.config {


/**
 *
 * <p>This class serves as a typed config object for constructor of class LineChart.</p>
 *
 * @see ext.chart.LineChart
 */
[ExtConfig(target="ext.chart.LineChart")]
public class linechart extends cartesianchart {

  public function linechart(config:Object = null) {

    super(config);
  }


}
}
    