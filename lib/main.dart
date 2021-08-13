import 'package:encuestas1/src/Inicio.dart';
import 'package:encuestas1/src/encuestapendiente.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Material App',
      initialRoute: 'Ini',
      color: Colors.blue,
      routes: {
        'Ini': (context) => Inicio(),
        'page': (context) => Encuesta(),
      },
    );
  }
}
