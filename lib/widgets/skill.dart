import 'package:flutter/material.dart';
import 'package:mohana_priya_portfolio/const/skills_item.dart';

class Skills extends StatelessWidget {
  const Skills({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        width: double.infinity,
        color: Colors.purple,
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Wrap(
            alignment: WrapAlignment.center,
            children: [
              for (int i = 0; i < skillsImg.length; i++)
                Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                  child: SizedBox(
                    width: 170,
                    child: Card(
                      elevation: 10,
                      child: Padding(
                        padding: const EdgeInsets.all(40),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Image.asset(
                              skillsImg[i],
                              width: 64,
                              height: 64,
                            ),
                            const SizedBox(height: 8),
                            Text(
                              skillsName[i],
                              style: const TextStyle(
                                fontSize: 16,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
            ],
          ),
        ));
  }
}
