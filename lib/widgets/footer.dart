// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'package:mohana_priya_portfolio/const/urls.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:mohana_priya_portfolio/const/colors.dart';

import '../const/contact_item.dart';
import '../service/services.dart';

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
    return Column(
      children: [
        const Padding(
          padding: EdgeInsets.all(8.0),
          child: Text(
            "Get In Touch",
            style: TextStyle(color: CustomColor.whiteSecondary),
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            for (int i = 0; i < imgs.length; i++)
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Container(
                  padding: const EdgeInsets.all(8),
                  decoration: const BoxDecoration(
                      shape: BoxShape.circle, color: Colors.white),
                  child: InkWell(
                      onTap: () {
                        if (imgs[i] == 'mail.png') {
                          launchEmail(urls[i]);
                        } else {
                          launchURL(urls[i]);
                        }
                      },
                      child: Image.asset(
                        imgs[i],
                        width: 15,
                        height: 15,
                      )),
                ),
              ),
            const SizedBox(
              height: 10,
            ),
          ],
        ),
        Container(
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
        ),
      ],
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
