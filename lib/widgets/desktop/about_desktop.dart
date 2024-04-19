import 'package:flutter/material.dart';
import '../../const/contact_item.dart';

import '../../service/services.dart';

// ignore_for_file: deprecated_member_use
class AboutDesktop extends StatelessWidget {
  const AboutDesktop({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        width: double.infinity,
        color: Colors.cyan,
        padding: const EdgeInsets.all(10),
        child: Row(
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
        ));
  }
}
