import 'package:mobx/mobx.dart';

part 'circular_chart_controller.g.dart';

class CircularChartController = _CircularChartController with _$CircularChartController;

abstract class _CircularChartController with Store {

  @observable
  int style = 0;

  @action
  void changeStyleChartCircular(){
    if (style == 2) {
      style = 0;
    }else {
      style++;
    }

    print(style);
  }



}