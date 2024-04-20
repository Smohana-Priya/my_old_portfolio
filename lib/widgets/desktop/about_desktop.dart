import 'package:flutter/material.dart';
import 'package:mohana_priya_portfolio/data/contacts.dart';

import '../../service/services.dart';

class AboutDesktop extends StatelessWidget {
  const AboutDesktop({super.key});

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    return Container(
      width: double.infinity,
      color: Colors.cyan,
      padding: const EdgeInsets.all(20),
      child: Wrap(
        alignment: WrapAlignment.center,
        children: [
          CircleAvatar(
            radius: screenSize.width / 9,
            backgroundImage: const AssetImage('assets/profile.jpeg'),
          ),
          const SizedBox(width: 20),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                "I am a passionate Flutter developer with two years of experience. I love building pixel-perfect apps for iOS and Android, \nensuring responsiveness and publishing on App Store and Play Store. Currently, I'm exploring fresh career paths.",
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 22,
                ),
              ),
              const SizedBox(height: 70),
              const Text(
                'You can also connect with me here - let\'s stay in touch!',
                style: TextStyle(fontSize: 18),
              ),
              const SizedBox(height: 10),
              Wrap(
                alignment: WrapAlignment.start,
                children: [
                  for (int i = 0; i < contacts.length; i++)
                    Padding(
                      padding: const EdgeInsets.all(8.0),
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
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: Colors.white,
                            boxShadow: [
                              BoxShadow(
                                color: Colors.black.withOpacity(0.2),
                                spreadRadius: 1,
                                blurRadius: 2,
                                offset: const Offset(0, 2),
                              ),
                            ],
                          ),
                          child: Image.asset(
                            contacts[i].imgPath,
                            width: 25,
                            height: 25,
                          ),
                        ),
                      ),
                    ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
