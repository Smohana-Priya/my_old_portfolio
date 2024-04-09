import 'package:flutter/material.dart';
import 'package:mohana_priya_portfolio/screens/home.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Mohana Priya',
      theme: ThemeData.dark(),
      home: const Home(),
    );
  }
}
