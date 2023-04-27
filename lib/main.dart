import 'package:flutter/material.dart';
import 'package:playground/home/presentation/home.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Paralelo',
      home: Scaffold(
        body: HomeWidget(),
      ),
    );
  }
}
