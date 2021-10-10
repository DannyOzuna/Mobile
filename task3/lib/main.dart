import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    DateTime now = DateTime.now();
    return MaterialApp(
      title: 'Tarea 3',
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Tarea 3'),
          elevation: 0,
        ),
        body: Center(
            child: Column(
          children: [
            Image.asset(
              'assets/foto.jpeg',
              width: 300,
            ),
            const Text('Danny Ozuna Vasquez'),
            Text(now.toString())
          ],
        )),
      ),
    );
  }
}
