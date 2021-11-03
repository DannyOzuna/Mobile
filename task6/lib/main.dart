import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';
import 'package:tablaperiodica/screens/elements.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Tabla periodica',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Elements(),
    );
  }
}
