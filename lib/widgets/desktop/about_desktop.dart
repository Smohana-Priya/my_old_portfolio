import 'package:flutter/material.dart';
import 'package:mohana_priya_portfolio/const/strings.dart';
import 'package:mohana_priya_portfolio/data/contacts.dart';

import '../../service/services.dart';

class AboutDesktop extends StatelessWidget {
  const AboutDesktop({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    return Container(
      width: double.infinity,
      color: Colors.cyan,
      padding: const EdgeInsets.all(20),
      child: Column(
        children: [
          const Align(
              alignment: Alignment.topLeft,
              child: Text(
                StringConst.aboutMe,
                style: TextStyle(fontSize: 20),
              )),
          CircleAvatar(
            radius: screenSize.width / 9,
            backgroundImage: const AssetImage(StringConst.profile),
          ),
          const SizedBox(height: 40),
          const Text(
            StringConst.passinateDeveloper,
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 22,
            ),
          ),
          const SizedBox(height: 70),
          const Text(
            StringConst.letsConnect,
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
                      if (contacts[i].imgPath == StringConst.mailId) {
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
    );
  }
}
