import 'package:flutter/material.dart';

import '../../data/contacts.dart';
import '../../service/services.dart';

// ignore_for_file: deprecated_member_use
class AboutMobile extends StatelessWidget {
  const AboutMobile({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 500,
      width: double.infinity,
      color: Colors.cyan,
      padding: const EdgeInsets.all(10),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const Align(alignment: Alignment.topLeft, child: Text("About Me")),
          const SizedBox(
            height: 30,
          ),
          const Text(
            "I am a passionate Flutter developer with two years of experience, I love building pixel-perfect apps for iOS and Android, ensuring responsiveness and publishing on App Store and Play Store. Now exploring fresh career paths!!!.",
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 15,
              color: Colors.white,
            ),
          ),
          const SizedBox(
            height: 30,
          ),
          const Text(
              'You can also connect with me here - let\'s stay in touch!'),
          const SizedBox(
            height: 5,
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
                        width: 25,
                        height: 25,
                      ),
                    ),
                  ),
                ),
              const SizedBox(
                height: 10,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
