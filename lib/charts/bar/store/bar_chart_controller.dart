import 'package:mobx/mobx.dart';

part 'bar_chart_controller.g.dart';

class BarChartController = _BarChartController with _$BarChartController;

abstract class _BarChartController with Store {

  @observable
  int style = 0;

  @action
  void changeStyleChartBar() {
    if (style == 1) {
      style = 0;
    } else {
      style++;
    }
  }

}