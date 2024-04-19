import 'package:flutter/material.dart';
import '../../const/contact_item.dart';
import 'package:url_launcher/url_launcher.dart';

import '../../service/services.dart';

// ignore_for_file: deprecated_member_use
class AboutMobile extends StatelessWidget {
  const AboutMobile({super.key});

  @override
  Widget build(BuildContext context) {
    return Wrap(
      children: [
        for (int i = 0; i < imgs.length; i++)
          Padding(
            padding: const EdgeInsets.all(15.0),
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
                    width: 20,
                    height: 20,
                  )),
            ),
          ),
        const SizedBox(
          height: 10,
        ),
      ],
    );
  }
}
