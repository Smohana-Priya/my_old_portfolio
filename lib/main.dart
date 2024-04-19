import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
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
      theme: ThemeData(
          textTheme: GoogleFonts.lobsterTextTheme(Typography.dense2014)),
      home: const Home(),
    );
  }
}
