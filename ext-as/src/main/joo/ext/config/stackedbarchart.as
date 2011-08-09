package ext.config {


/**
 *
 * <p>This class serves as a typed config object for constructor of class StackedBarChart.</p>
 *
 * @see ext.chart.StackedBarChart
 */
[ExtConfig(target="ext.chart.StackedBarChart", xtype="stackedbarchart")]
public class stackedbarchart extends cartesianchart {

  public function stackedbarchart(config:Object = null) {

    super(config);
  }


}
}
    