import 'package:flutter/material.dart';

import 'package:mohana_priya_portfolio/const/size.dart';
import 'package:mohana_priya_portfolio/data/skills.dart';

class Skills extends StatelessWidget {
  const Skills({super.key});

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    return Container(
        width: double.infinity,
        color: Colors.purple,
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            children: [
              const Align(
                  alignment: Alignment.topLeft, child: Text("My Skills")),
              Wrap(
                alignment: WrapAlignment.center,
                children: [
                  for (int i = 0; i < skills.length; i++)
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 20, vertical: 10),
                      child: SizedBox(
                        width:
                            screenWidth < mobileWidth ? double.infinity : 170,
                        child: Card(
                          elevation: 10,
                          child: Padding(
                            padding: const EdgeInsets.all(40),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Image.asset(
                                  skills[i].imagePath,
                                  width: 64,
                                  height: 64,
                                ),
                                const SizedBox(height: 8),
                                Text(
                                  skills[i].name,
                                  style: const TextStyle(
                                      fontSize: 16, color: Colors.black),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                ],
              ),
            ],
          ),
        ));
  }
}
