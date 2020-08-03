// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'circular_chart_controller.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$CircularChartController on _CircularChartController, Store {
  final _$styleAtom = Atom(name: '_CircularChartController.style');

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

  final _$_CircularChartControllerActionController =
      ActionController(name: '_CircularChartController');

  @override
  void changeStyleChartCircular() {
    final _$actionInfo = _$_CircularChartControllerActionController.startAction(
        name: '_CircularChartController.changeStyleChartCircular');
    try {
      return super.changeStyleChartCircular();
    } finally {
      _$_CircularChartControllerActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
style: ${style}
    ''';
  }
}
