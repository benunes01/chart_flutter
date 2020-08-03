import 'package:chart_flutter/charts/circular/store/circular_chart_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:syncfusion_flutter_charts/charts.dart';
import 'package:intl/intl.dart';

import 'store/bar_chart_controller.dart';

class BarChartSF extends StatelessWidget {

  BarChartController _controller = BarChartController();


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          Observer(
              builder: (_) {
                return Container(
                  margin: EdgeInsets.fromLTRB(20, 30, 20, 40),
                  child: SfCartesianChart(
                    plotAreaBorderWidth: 0,
                    title: ChartTitle(text: 'Bar Gráfico'),
                    legend: Legend(isVisible: true),
                    primaryXAxis: CategoryAxis(
                      majorGridLines: MajorGridLines(width: 0),
                    ),
                    primaryYAxis: NumericAxis(
                        majorGridLines: MajorGridLines(width: _controller.style == 0 ? 0 : 1),
                        ),
                    series: getDefaultBarSeries(),
                    tooltipBehavior: TooltipBehavior(enable: true),
                  ),
                );
              }
          ),
          Container(
            margin: EdgeInsets.only(top: 20),
            child: RaisedButton(
              elevation: 10,
              color: Colors.red,
              child: Text(
                'Mudar Estilo', style: TextStyle(color: Colors.white),),
              onPressed: () {
                _controller.changeStyleChartBar();
              },

            ),
          ),
        ],
      ),
    );
  }


  List<BarSeries<ChartSampleData, String>> getDefaultBarSeries() {
    final List<ChartSampleData> chartData = <ChartSampleData>[
      ChartSampleData(
          x: 'France', y: 84452000, yValue2: 82682000, yValue3: 86861000),
      ChartSampleData(
          x: 'Spain', y: 68175000, yValue2: 75315000, yValue3: 81786000),
      ChartSampleData(
          x: 'US', y: 77774000, yValue2: 76407000, yValue3: 76941000),
      ChartSampleData(
          x: 'Italy', y: 50732000, yValue2: 52372000, yValue3: 58253000),
      ChartSampleData(
          x: 'Mexico', y: 32093000, yValue2: 35079000, yValue3: 39291000),
      ChartSampleData(
          x: 'UK', y: 34436000, yValue2: 35814000, yValue3: 37651000),
    ];
    return <BarSeries<ChartSampleData, String>>[
      BarSeries<ChartSampleData, String>(
          enableTooltip: true,
          dataSource: chartData,
          xValueMapper: (ChartSampleData sales, _) => sales.x,
          yValueMapper: (ChartSampleData sales, _) => sales.y,
          name: '2015'),
      BarSeries<ChartSampleData, String>(
          enableTooltip: true,
          dataSource: chartData,
          xValueMapper: (ChartSampleData sales, _) => sales.x,
          yValueMapper: (ChartSampleData sales, _) => sales.yValue2,
          name: '2016'),
      BarSeries<ChartSampleData, String>(
          enableTooltip: true,
          dataSource: chartData,
          xValueMapper: (ChartSampleData sales, _) => sales.x,
          yValueMapper: (ChartSampleData sales, _) => sales.yValue3,
          name: '2017')
    ];
  }

}

  class ChartSampleData {
  ChartSampleData(
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
