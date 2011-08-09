package ext.config {


/**
 *
 * <p>This class serves as a typed config object for constructor of class ColumnChart.</p>
 *
 * @see ext.chart.ColumnChart
 */
[ExtConfig(target="ext.chart.ColumnChart", xtype="columnchart")]
public class columnchart extends cartesianchart {

  public function columnchart(config:Object = null) {

    super(config);
  }


}
}
    