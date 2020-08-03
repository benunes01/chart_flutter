// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'bar_chart_controller.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$BarChartController on _BarChartController, Store {
  final _$styleAtom = Atom(name: '_BarChartController.style');

  @override
  int get style {
    _$styleAtom.reportRead();
    return super.style;
  }

  @override
  set style(int value) {
    _$styleAtom.reportWrite(value, super.style, () {
      super.style = value;
    });
  }

  final _$_BarChartControllerActionController =
      ActionController(name: '_BarChartController');

  @override
  void changeStyleChartBar() {
    final _$actionInfo = _$_BarChartControllerActionController.startAction(
        name: '_BarChartController.changeStyleChartBar');
    try {
      return super.changeStyleChartBar();
    } finally {
      _$_BarChartControllerActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
style: ${style}
    ''';
  }
}
