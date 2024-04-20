// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';

import 'package:mohana_priya_portfolio/const/urls.dart';
import 'package:mohana_priya_portfolio/const/colors.dart';

import '../service/services.dart';

class Footer extends StatelessWidget {
  const Footer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      color: CustomColor.scaffoldbg,
      width: double.infinity,
      child: Padding(
        padding: const EdgeInsets.all(25.0),
        child: Wrap(
          alignment: WrapAlignment.center,
          children: [
            const Text(
              "Build with Flutter by ",
              style: TextStyle(
                  color: CustomColor.whiteSecondary, letterSpacing: 1.2),
            ),
            GestureDetector(
              onTap: () {
                launchURL(Urls.linkedIn);
              },
              child: const Text(
                "Mohana Priya",
                style: TextStyle(
                  color: Colors.blue,
                  decoration: TextDecoration.underline,
                ),
              ),
            ),
            const Text(
              " | © 2024 all rights reserved",
              style: TextStyle(
                  color: CustomColor.whiteSecondary, letterSpacing: 1.2),
            ),
          ],
        ),
      ),
    );
  }
}
