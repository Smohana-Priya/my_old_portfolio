// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';

import 'package:mohana_priya_portfolio/const/urls.dart';
import 'package:mohana_priya_portfolio/const/colors.dart';
import 'package:mohana_priya_portfolio/data/contacts.dart';

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
        Wrap(
          alignment: WrapAlignment.center,
          children: [
            for (int i = 0; i < contacts.length; i++)
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: InkWell(
                  onTap: () {
                    if (contacts[i].imgPath == 'assets/mail.png') {
                      launchEmail(contacts[i].url);
                    } else {
                      launchURL(contacts[i].url);
                    }
                  },
                  child: Container(
                    padding: const EdgeInsets.all(8),
                    decoration: const BoxDecoration(
                        shape: BoxShape.circle, color: Colors.white),
                    child: Image.asset(
                      contacts[i].imgPath,
                      width: 15,
                      height: 15,
                    ),
                  ),
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
            child: Wrap(
              alignment: WrapAlignment.center,
              children: [
                const Text(
                  "Build with Flutter by ",
                  style: TextStyle(color: CustomColor.whiteSecondary),
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
                  style: TextStyle(color: CustomColor.whiteSecondary),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
