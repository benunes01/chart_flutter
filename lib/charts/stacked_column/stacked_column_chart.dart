import 'package:chart_flutter/charts/bar/store/bar_chart_controller.dart';
import 'package:chart_flutter/charts/stacked_column/stacked_column_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

class StackedChartSF extends StatelessWidget {

  StackedColumnController _controller = StackedColumnController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          Observer(builder: (_) {
            return Container(
              margin: EdgeInsets.fromLTRB(20, 30, 20, 40),
              child: SfCartesianChart(
                plotAreaBorderWidth: 0,
                title: ChartTitle(text: '          Gráfico Sobreposto'),
                legend: Legend(
                    isVisible: true, overflowMode: LegendItemOverflowMode.wrap),
                primaryXAxis: CategoryAxis(
                  majorGridLines: MajorGridLines(width: _controller.style == 0 ? 0 : 1),
                ),
                primaryYAxis: NumericAxis(
                    axisLine: AxisLine(width: 0),
                    labelFormat: '{value}K',
                    maximum: 300,
                    majorTickLines: MajorTickLines(size: 0)),
                series: getStackedColumnSeries(),
                tooltipBehavior: TooltipBehavior(
                    enable: true, header: '', canShowMarker: false),
              ),
            );
          }),
          Container(
            margin: EdgeInsets.only(top: 15),
            child: RaisedButton(
              elevation: 5,
              color: Colors.red,
              child: Text('Mudar Estilo', style: TextStyle(color: Colors.white),),
              onPressed: () {
                _controller.changeStyleChartStacked();
              },

            ),
          ),
        ],
      ),
    );
  }

  /// Returns the list of chart serie which need to render on the stacked column chart.
  List<StackedColumnSeries<ChartSampleData, String>> getStackedColumnSeries() {
    final List<ChartSampleData> chartData = <ChartSampleData>[
      ChartSampleData(x: 'Q1', y: 50, yValue: 55, yValue2: 72, yValue3: 65),
      ChartSampleData(x: 'Q2', y: 80, yValue: 75, yValue2: 70, yValue3: 60),
      ChartSampleData(x: 'Q3', y: 35, yValue: 45, yValue2: 55, yValue3: 52),
      ChartSampleData(x: 'Q4', y: 65, yValue: 50, yValue2: 70, yValue3: 65),
    ];
    return <StackedColumnSeries<ChartSampleData, String>>[
      StackedColumnSeries<ChartSampleData, String>(
          enableTooltip: true,
          dataSource: chartData,
          xValueMapper: (ChartSampleData sales, _) => sales.x,
          yValueMapper: (ChartSampleData sales, _) => sales.y,
          name: 'Product A'),
      StackedColumnSeries<ChartSampleData, String>(
          enableTooltip: true,
          dataSource: chartData,
          xValueMapper: (ChartSampleData sales, _) => sales.x,
          yValueMapper: (ChartSampleData sales, _) => sales.yValue,
          name: 'Product B'),
      StackedColumnSeries<ChartSampleData, String>(
          enableTooltip: true,
          dataSource: chartData,
          xValueMapper: (ChartSampleData sales, _) => sales.x,
          yValueMapper: (ChartSampleData sales, _) => sales.yValue2,
          name: 'Product C'),
      StackedColumnSeries<ChartSampleData, String>(
          enableTooltip: true,
          dataSource: chartData,
          xValueMapper: (ChartSampleData sales, _) => sales.x,
          yValueMapper: (ChartSampleData sales, _) => sales.yValue3,
          name: 'Product D')
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