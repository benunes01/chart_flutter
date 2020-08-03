import 'package:mobx/mobx.dart';

part 'stacked_column_controller.g.dart';

class StackedColumnController = _StackedColumnController with _$StackedColumnController;

abstract class _StackedColumnController with Store {

  @observable
  int style = 0;

  @action
  void changeStyleChartStacked() {
    if (style == 1) {
      style = 0;
    } else {
      style++;
    }
  }

}