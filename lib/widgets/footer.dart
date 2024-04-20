// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';

import 'package:mohana_priya_portfolio/const/colors.dart';

import '../const/strings.dart';
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
              StringConst.build,
              style: TextStyle(
                  color: CustomColor.whiteSecondary, letterSpacing: 1.2),
            ),
            GestureDetector(
              onTap: () {
                launchURL(StringConst.linkedInUrl);
              },
              child: const Text(
                StringConst.mohanapriyaLink,
                style: TextStyle(
                  color: Colors.blue,
                  decoration: TextDecoration.underline,
                ),
              ),
            ),
            const Text(
              StringConst.copyRight,
              style: TextStyle(
                  color: CustomColor.whiteSecondary, letterSpacing: 1.2),
            ),
          ],
        ),
      ),
    );
  }
}
