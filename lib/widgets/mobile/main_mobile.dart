import 'package:flutter/material.dart';

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
          ClipOval(
            child: Image.asset(
              'assets/my_profile.jpeg',
              width: screenSize.width,
              height: screenSize.height / 2.5,
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          const Text(
            'Hi, I\'m Mohana Priya',
            style: TextStyle(
                fontWeight: FontWeight.bold,
                height: 1.5,
                fontSize: 24,
                color: CustomColor.whitePrimary),
          ),
          const Text(
            'Flutter Developer',
            style: TextStyle(
                fontWeight: FontWeight.bold,
                height: 1.5,
                fontSize: 25,
                color: Colors.amber),
          ),
          const SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                onPressed: () {},
                child: const Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Text('Download CV'),
                ),
              ),
              const SizedBox(
                width: 15,
              ),
              ElevatedButton(
                onPressed: () {
                  launchEmail("smohanapriya2604@gmail.com");
                },
                child: const Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Text('Hire Me Now'),
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
