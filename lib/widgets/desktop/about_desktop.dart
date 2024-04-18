import 'package:flutter/material.dart';

class AboutDesktop extends StatelessWidget {
  const AboutDesktop({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.green,
      height: 700,
      child: const Center(child: Text("desktop - about")),
    );
  }
}
