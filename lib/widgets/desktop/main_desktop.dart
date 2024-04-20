import 'package:flutter/material.dart';

import '../../const/colors.dart';
import '../../const/strings.dart';
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
                  StringConst.welcome,
                  style: TextStyle(
                    letterSpacing: 1.5,
                    fontSize: 20,
                    color: CustomColor.whiteSecondary,
                  ),
                ),
                const Text(
                  StringConst.mohanapriya,
                  style: TextStyle(
                    // fontWeight: FontWeight.bold,
                    height: 1.5,
                    fontSize: 30,
                    color: CustomColor.whitePrimary,
                  ),
                ),
                const Text(
                  StringConst.flutterDeveloper,
                  style: TextStyle(
                    // fontWeight: FontWeight.bold,
                    height: 1.5,
                    fontSize: 25,
                    color: Colors.amber,
                  ),
                ),
                const SizedBox(height: 30),
                Wrap(
                  alignment: WrapAlignment.center,
                  children: [
                    ElevatedButton(
                      onPressed: () {
                        launchURL(StringConst.resumeUrl);
                      },
                      style: ElevatedButton.styleFrom(
                        padding: const EdgeInsets.symmetric(
                            vertical: 15, horizontal: 20),
                      ),
                      child: const Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Text(
                          StringConst.dwnld,
                          style: TextStyle(fontSize: 18),
                        ),
                      ),
                    ),
                    const SizedBox(width: 15),
                    ElevatedButton(
                      onPressed: () {
                        launchEmail(StringConst.mailId);
                      },
                      style: ElevatedButton.styleFrom(
                        padding: const EdgeInsets.symmetric(
                            vertical: 15, horizontal: 20),
                      ),
                      child: const Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Text(
                          StringConst.hireMe,
                          style: TextStyle(fontSize: 18),
                        ),
                      ),
                    )
                  ],
                ),
                const SizedBox(
                  height: 30,
                ),
                Wrap(
                  alignment: WrapAlignment.center,
                  children: [
                    for (int i = 0; i < contacts.length; i++)
                      Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: InkWell(
                          onTap: () {
                            if (contacts[i].imgPath == StringConst.gamilLogo) {
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
              child: Image.asset(StringConst.profile2),
            ),
          ),
        ],
      ),
    );
  }
}
