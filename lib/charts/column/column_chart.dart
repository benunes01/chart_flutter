import 'package:chart_flutter/charts/circular/store/circular_chart_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

class ColumnChartSF extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          Observer(
              builder: (_) {
                return Container(
                  margin: EdgeInsets.fromLTRB(20, 20, 20, 40),
                  child: SfCartesianChart(
                      title: ChartTitle(text: 'Gráfico Coluna'),
                      primaryXAxis: CategoryAxis(),
                      series: <CartesianSeries>[
                        // Render column series
                        ColumnSeries<ChartData, String>(
                            dataSource: <ChartData>[
                              ChartData(x: 'Produto 1', y: 20, text: 'Produto 1'),
                              ChartData(x: 'Produto 2', y: 14, text: 'Produto 2'),
                              ChartData(x: 'Produto 3', y: -5, text: 'Produto 3'),
                              ChartData(x: 'Produto 4', y: 30, text: 'Produto 4'),
                            ],
                            xValueMapper: (ChartData data, _) => data.x,
                            yValueMapper: (ChartData data, _) => data.y,
                            color: Colors.deepOrangeAccent
                        ),

                      ]
                  ),
                );
              }
          ),
        ],
      ),
    );
  }

}

class ChartData {
  ChartData(
      {this.x,
        this.y,
        this.xValue,
        this.yValue,
        this.yValue2,
        this.yValue3,
        this.pointColor,
        this.size,
        this.text,
        this.open,
        this.close});
  final dynamic x;
  final num y;
  final dynamic xValue;
  final num yValue;
  final num yValue2;
  final num yValue3;
  final Color pointColor;
  final num size;
  final String text;
  final num open;
  final num close;
}