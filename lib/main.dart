import 'package:chart_flutter/store/main_controller.dart';
import 'package:chart_flutter/util.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:syncfusion_flutter_core/core.dart';

import 'charts/bar/bar_chart.dart';
import 'charts/circular/circular_chart.dart';


Future<void> main() async {
  SyncfusionLicense.registerLicense(
      tokenSync);
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


