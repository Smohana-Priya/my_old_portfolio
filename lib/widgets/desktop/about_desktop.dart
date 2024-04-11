import 'package:flutter/material.dart';

class AboutDesktop extends StatelessWidget {
  const AboutDesktop({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 800,
      color: Colors.blue,
      child: const Text("About desktop"),
    );
  }
}
