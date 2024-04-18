import 'package:flutter/material.dart';

class AboutMobile extends StatelessWidget {
  const AboutMobile({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.green,
      height: 700,
      child: const Center(child: Text("desktop - mobile")),
    );
  }
}
