import 'package:chart_flutter/store/main_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:syncfusion_flutter_core/core.dart';

import 'charts/bar/bar_chart.dart';
import 'charts/circular/circular_chart.dart';


Future<void> main() async {
  SyncfusionLicense.registerLicense(
      'NT8mJyc2IWhia31hfWN9Z2doa3xgY3xhY2Fjc2ppZ2tpZ2JzEh5oMTYMPSY9NiAMIzo9OzY6ITwTOzwnPjI6P30wPD4=');
  runApp(MyApp());
}

class MyApp extends StatelessWidget {

  MainController _controller = MainController();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
          appBar: AppBar(title: Text('Gráficos'), actions: <Widget>[
            GestureDetector(
              child: Icon(Icons.skip_next),
              onTap: (){
                _controller.changeChart();
              },
            )
          ], ),
          body: Observer(
              builder: (_) {
                return _controller.chartType;
              },
          ),
          )
      );

  }

}


