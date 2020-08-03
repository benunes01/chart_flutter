import 'package:chart_flutter/charts/circular/store/circular_chart_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

class PieChartSF extends StatelessWidget {

  CircularChartController _controller = CircularChartController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          Observer(
            builder: (_) {
              return Container(
                margin: EdgeInsets.fromLTRB(20, 20, 20, 40),
                child: SfCircularChart(
                  title: ChartTitle(text: 'Gráfico Pizza'),
                  series: getDefaultPieSeries(true),
                  legend: Legend(isVisible: true, orientation: _controller.style == 1 ? LegendItemOrientation.horizontal : LegendItemOrientation.vertical, alignment: _controller.style == 0 ? ChartAlignment.near : ChartAlignment.center, ),

                ),
              );
            }
          ),
          Container(
            margin: EdgeInsets.only(top: 20),
            child: RaisedButton(
              elevation: 10,
              color: Colors.red,
              child: Text('Mudar Estilo', style: TextStyle(color: Colors.white),),
              onPressed: () {
                _controller.changeStyleChartCircular();
              },

            ),
          ),
        ],
      ),
    );
  }


  List<PieSeries<ChartSampleData, String>> getDefaultPieSeries(bool isCardView) {
    final List<ChartSampleData> pieData = <ChartSampleData>[
      ChartSampleData(x: 'Produto 1', y: 20, text: 'Produto 1 \n 20%'),
      ChartSampleData(x: 'Produto 2', y: 14, text: 'Produto 2 \n 19%'),
      ChartSampleData(x: 'Produto 3', y: 36, text: 'Produto 3 \n 31%'),
      ChartSampleData(x: 'Produto 4', y: 30, text: 'Produto 4 \n 30%'),
    ];
    return <PieSeries<ChartSampleData, String>>[
      PieSeries<ChartSampleData, String>(
          explode: false,
          explodeIndex: 0,
          explodeOffset: '90%',
          dataSource: pieData,
          xValueMapper: (ChartSampleData data, _) => data.x,
          yValueMapper: (ChartSampleData data, _) => data.y,
          dataLabelMapper: (ChartSampleData data, _) => data.text,
          startAngle: 90,
          endAngle: 90,
          dataLabelSettings: DataLabelSettings(isVisible: true)),
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