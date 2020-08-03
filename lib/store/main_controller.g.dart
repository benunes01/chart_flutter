// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'main_controller.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$MainController on _MainController, Store {
  final _$styleAtom = Atom(name: '_MainController.style');

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

  final _$chartTypeAtom = Atom(name: '_MainController.chartType');

  @override
  Widget get chartType {
    _$chartTypeAtom.reportRead();
    return super.chartType;
  }

  @override
  set chartType(Widget value) {
    _$chartTypeAtom.reportWrite(value, super.chartType, () {
      super.chartType = value;
    });
  }

  final _$_MainControllerActionController =
      ActionController(name: '_MainController');

  @override
  void changeChart() {
    final _$actionInfo = _$_MainControllerActionController.startAction(
        name: '_MainController.changeChart');
    try {
      return super.changeChart();
    } finally {
      _$_MainControllerActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
style: ${style},
chartType: ${chartType}
    ''';
  }
}
