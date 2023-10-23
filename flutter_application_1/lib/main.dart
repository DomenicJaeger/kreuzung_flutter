import 'package:flutter/material.dart';
import 'widgetKreuzung.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.blueGrey[100],
        appBar: AppBar(
          title: const Text('Ampeln und Kreuzung'),
        ),
        body: Center(
          child: KreuzungWidget(),
        ),
      ),
    );
  }
}
