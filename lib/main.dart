import 'package:clean_arc/layers/core/inject/inject.dart';
import 'package:clean_arc/layers/presentation/UI/views/carro_page.dart';
import 'package:flutter/material.dart';

void main() {
  Inject.init();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'CA',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: CarroPage());
  }
}
