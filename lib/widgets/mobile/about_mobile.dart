import 'package:flutter/material.dart';

import '../../const/strings.dart';
import '../../data/contacts.dart';
import '../../service/services.dart';

// ignore_for_file: deprecated_member_use
class AboutMobile extends StatelessWidget {
  const AboutMobile({super.key});

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    return Container(
      width: double.infinity,
      color: Colors.cyan,
      padding: const EdgeInsets.all(10),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const Align(
              alignment: Alignment.topLeft,
              child: Text(
                StringConst.aboutMe,
                style: TextStyle(fontSize: 15),
              )),
          CircleAvatar(
            radius: screenSize.width / 7,
            backgroundImage: const AssetImage(StringConst.profile),
          ),
          const SizedBox(
            height: 20,
          ),
          const Text(
            StringConst.passinateDeveloper,
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 13,
            ),
          ),
          const SizedBox(
            height: 30,
          ),
          const Text(StringConst.connectWithMe),
          const Text(StringConst.stayInTouch),
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
                      if (contacts[i].imgPath == StringConst.mailId) {
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
        ],
      ),
    );
  }
}
