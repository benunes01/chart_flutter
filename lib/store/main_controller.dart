import 'package:chart_flutter/charts/bar/bar_chart.dart';
import 'package:chart_flutter/charts/circular/circular_chart.dart';
import 'package:chart_flutter/charts/column/column_chart.dart';
import 'package:chart_flutter/charts/line/line_chart.dart';
import 'package:chart_flutter/charts/line_column/line_colunm_chart.dart';
import 'package:chart_flutter/charts/stacked_column/stacked_column_chart.dart';
import 'package:flutter/cupertino.dart';
import 'package:mobx/mobx.dart';

part 'main_controller.g.dart';

class MainController = _MainController with _$MainController;

abstract class _MainController with Store {

  @observable
  int style = 0;

  @observable
  Widget chartType = PieChartSF();

  @action
  void changeChart() {

    if (style == 5) {
      style = 0;
    } else {
      style++;
    }

    switch (style) {
      case 0 : chartType = PieChartSF();
      break;

      case 1 :  chartType = BarChartSF();
      break;

      case 2 :  chartType = LineChartSF();
      break;

      case 3 :  chartType = StackedChartSF();
      break;

      case 4 :  chartType = LineColumnChartSF();
      break;

      case 5 :  chartType = ColumnChartSF();
      break;
    }
  }




}