import 'package:flutter/material.dart';
import 'package:mohana_priya_portfolio/const/colors.dart';

class FooterMobile extends StatefulWidget {
  const FooterMobile({super.key});

  @override
  State<FooterMobile> createState() => _FooterMobileState();
}

class _FooterMobileState extends State<FooterMobile> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      color: CustomColor.scaffoldbg,
      child: const Padding(
        padding: EdgeInsets.all(15.0),
        child: Text(
          textAlign: TextAlign.center,
          "Build with Flutter by Mohana Priya",
          style: TextStyle(color: CustomColor.whiteSecondary),
        ),
      ),
    );
  }
}
