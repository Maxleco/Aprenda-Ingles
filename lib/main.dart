import 'package:aprenda_ingles/screens/HomeWidget.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Aprenda Inglês',
      theme: ThemeData(
        primaryColor: Color(0xFF795548),
        scaffoldBackgroundColor: Color(0xFFF5e9b9),
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: HomeWidget(),
    );
  }
}