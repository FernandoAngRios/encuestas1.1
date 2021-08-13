import 'package:encuestas1/src/Evaluadas.dart';
import 'package:encuestas1/src/Pendientes.dart';
import 'package:encuestas1/src/Realizadas.dart';
import 'package:encuestas1/src/TTD.dart';
import 'package:encuestas1/src/encuestapendiente.dart';
import 'package:flutter/material.dart';

class Inicio extends StatefulWidget {
  @override
  _ttdState createState() => _ttdState();
}

class _ttdState extends State<Inicio> {
  @override
  Widget build(BuildContext context) {
    final TabController = DefaultTabController(
      length: 4,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.indigo,
          title: Text('Encuestas'),
          bottom: TabBar(
            indicatorColor: Colors.white,
            tabs: <Widget>[
              Tab(
                icon: Icon(Icons.all_inbox_outlined),
                text: "Todas",
              ),
              Tab(
                icon: Icon(Icons.pending_actions),
                text: "Pendientes",
              ),
              Tab(
                icon: Icon(Icons.done_outline_rounded),
                text: "Realizadas",
              ),
              Tab(
                icon: Icon(Icons.task_outlined),
                text: "Evaluadas",
              ),
            ],
          ),
        ),
        body: TabBarView(
          children: <Widget>[
            TTD(),
            Pendientes(),
            Realizadas(),
            Evaluadas(),
          ],
        ),
      ),
    );
    return new MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(),
      home: TabController,
      routes: {
        'Ini': (context) => Inicio(),
        'page': (context) => Encuesta(),
      },
    );
  }
}
