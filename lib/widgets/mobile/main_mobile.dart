import 'package:flutter/material.dart';
import 'package:mohana_priya_portfolio/const/urls.dart';

import '../../const/colors.dart';
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
          const Text(
            'Hi there, Welcome to My Portfolio',
            style: TextStyle(
              letterSpacing: 1.5,
              fontSize: 20,
              color: CustomColor.whiteSecondary,
            ),
          ),
          const Text(
            'I\'m Mohana Priya',
            style: TextStyle(
                // fontWeight: FontWeight.bold,
                height: 1.5,
                fontSize: 24,
                // letterSpacing: 1,
                color: CustomColor.whitePrimary),
          ),
          const Text(
            'Flutter Developer',
            style: TextStyle(
                // fontWeight: FontWeight.bold,
                height: 1.5,
                fontSize: 25,
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
            height: 25,
          ),
        ],
      ),
    );
  }
}
