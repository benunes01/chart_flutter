// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'stacked_column_controller.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$StackedColumnController on _StackedColumnController, Store {
  final _$styleAtom = Atom(name: '_StackedColumnController.style');

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

  final _$_StackedColumnControllerActionController =
      ActionController(name: '_StackedColumnController');

  @override
  void changeStyleChartStacked() {
    final _$actionInfo = _$_StackedColumnControllerActionController.startAction(
        name: '_StackedColumnController.changeStyleChartStacked');
    try {
      return super.changeStyleChartStacked();
    } finally {
      _$_StackedColumnControllerActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
style: ${style}
    ''';
  }
}
