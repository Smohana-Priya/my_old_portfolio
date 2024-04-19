// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'package:mohana_priya_portfolio/const/urls.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:mohana_priya_portfolio/const/colors.dart';

class Footer extends StatefulWidget {
  const Footer({
    super.key,
  });

  @override
  State<Footer> createState() => _FooterMobileState();
}

class _FooterMobileState extends State<Footer> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      color: CustomColor.scaffoldbg,
      child: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              "Build with Flutter by ",
              style: TextStyle(color: CustomColor.whiteSecondary),
            ),
            GestureDetector(
              onTap: () {
                _launchURL(Urls.linkedIn);
              },
              child: const Text(
                "Mohana Priya",
                style: TextStyle(
                  color: Colors.blue,
                  decoration: TextDecoration.underline,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  void _launchURL(String url) async {
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }
}
