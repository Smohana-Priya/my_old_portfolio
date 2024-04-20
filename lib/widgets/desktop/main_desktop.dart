import 'package:flutter/material.dart';
import 'package:mohana_priya_portfolio/const/urls.dart';

import '../../const/colors.dart';
import '../../data/contacts.dart';
import '../../service/services.dart';

class MainDesktop extends StatelessWidget {
  const MainDesktop({super.key});

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    return Container(
      width: screenSize.width,
      // height: screenSize.height / 1.2,
      // margin: const EdgeInsets.symmetric(horizontal: 20),
      constraints: const BoxConstraints(minHeight: 320),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Expanded(
            flex: 2,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
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
                    fontSize: 30,
                    color: CustomColor.whitePrimary,
                  ),
                ),
                const Text(
                  'Flutter Developer',
                  style: TextStyle(
                    // fontWeight: FontWeight.bold,
                    height: 1.5,
                    fontSize: 25,
                    color: Colors.amber,
                  ),
                ),
                const SizedBox(height: 20),
                Wrap(
                  alignment: WrapAlignment.center,
                  children: [
                    ElevatedButton(
                      onPressed: () {
                        launchURL(Urls.resume);
                      },
                      style: ElevatedButton.styleFrom(
                        padding: const EdgeInsets.symmetric(
                            vertical: 15, horizontal: 20),
                      ),
                      child: const Text('Download CV'),
                    ),
                    const SizedBox(width: 15),
                    ElevatedButton(
                      onPressed: () {
                        launchEmail("smohanapriya2604@gmail.com");
                      },
                      style: ElevatedButton.styleFrom(
                        padding: const EdgeInsets.symmetric(
                            vertical: 15, horizontal: 20),
                      ),
                      child: const Text(
                        'Hire Me Now',
                        style: TextStyle(),
                      ),
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
              ],
            ),
          ),
          Expanded(
            flex: 1,
            child: ClipRRect(
              borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(100.0),
                bottomLeft: Radius.circular(100.0),
              ),
              child: Image.asset('assets/my_profile.jpeg'),
            ),
          ),

          // child: CircleAvatar(
          //   radius: screenSize.width / 6,
          //   backgroundImage: const AssetImage('assets/profile.jpeg'),
          // ),
        ],
      ),
    );
  }
}
