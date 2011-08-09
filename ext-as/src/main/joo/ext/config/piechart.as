package ext.config {


/**
 *
 * <p>This class serves as a typed config object for constructor of class PieChart.</p>
 *
 * @see ext.chart.PieChart
 */
[ExtConfig(target="ext.chart.PieChart", xtype="piechart")]
public class piechart extends chart {

  public function piechart(config:Object = null) {

    super(config);
  }


}
}
    