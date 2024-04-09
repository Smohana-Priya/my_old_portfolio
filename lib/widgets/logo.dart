import 'package:flutter/material.dart';

class Logo extends StatelessWidget {
  final VoidCallback? ontap;
  const Logo({super.key, this.ontap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: ontap,
      child: const Text(
        "Mp",
        style: TextStyle(
            fontSize: 22,
            fontWeight: FontWeight.bold,
            decoration: TextDecoration.underline,
            color: Colors.amber),
      ),
    );
  }
}
