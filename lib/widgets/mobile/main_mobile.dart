import 'package:flutter/material.dart';
import 'package:mohana_priya_portfolio/const/urls.dart';

import '../../const/colors.dart';
import '../../data/contacts.dart';
import '../../service/services.dart';

class MainMobile extends StatelessWidget {
  const MainMobile({super.key});

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    return Container(
      constraints: const BoxConstraints(minHeight: 560),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const SizedBox(
            height: 30,
          ),
          const Align(
            alignment: Alignment.center,
            child: Text(
              'Hi there, Welcome to My Portfolio',
              style: TextStyle(
                letterSpacing: 1.5,
                fontSize: 16,
                color: CustomColor.whiteSecondary,
              ),
            ),
          ),
          const Text(
            'I\'m Mohana Priya',
            style: TextStyle(
                // fontWeight: FontWeight.bold,
                height: 1.5,
                fontSize: 20,
                // letterSpacing: 1,
                color: CustomColor.whitePrimary),
          ),
          const Text(
            'Flutter Developer',
            style: TextStyle(
                // fontWeight: FontWeight.bold,
                height: 1.5,
                fontSize: 22,
                letterSpacing: 1.5,
                color: Colors.amber),
          ),
          const SizedBox(
            height: 20,
          ),
          ClipOval(
            child: Image.asset(
              'assets/my_profile.jpeg',
              width: screenSize.width,
              height: screenSize.height / 2.5,
            ),
          ),
          const SizedBox(
            height: 25,
          ),
          Wrap(
            alignment: WrapAlignment.center,
            children: [
              ElevatedButton(
                onPressed: () {
                  launchURL(Urls.resume);
                },
                style: ElevatedButton.styleFrom(
                  padding:
                      const EdgeInsets.symmetric(vertical: 15, horizontal: 20),
                ),
                child: const Text('Download CV'),
              ),
              const SizedBox(width: 15),
              ElevatedButton(
                onPressed: () {
                  launchEmail("smohanapriya2604@gmail.com");
                },
                style: ElevatedButton.styleFrom(
                  padding:
                      const EdgeInsets.symmetric(vertical: 15, horizontal: 20),
                ),
                child: const Text('Hire Me Now'),
              )
            ],
          ),
          const SizedBox(
            height: 20,
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
            ],
          ),
          const SizedBox(
            height: 25,
          ),
        ],
      ),
    );
  }
}
