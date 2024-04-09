import 'package:flutter/material.dart';

import '../const/colors.dart';

class MainDesktop extends StatelessWidget {
  const MainDesktop({super.key});

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    return Container(
        height: screenSize.height / 1.2,
        margin: const EdgeInsets.symmetric(horizontal: 20),
        constraints: const BoxConstraints(
          minHeight: 320,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                  'Hi I\'m Mohana Priya',
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      height: 1.5,
                      fontSize: 30,
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
                  height: 15,
                ),
                const Text(
                  "Skilled Flutter Developer with Two years ofexperience, specializing in designing\nand maintaining high-performance cross- platform mobile applications.",
                  style: TextStyle(color: Colors.grey),
                ),
                const SizedBox(
                  height: 15,
                ),
                Row(
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
                      onPressed: () {},
                      child: const Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Text('Hire Me Now'),
                      ),
                    )
                  ],
                )
              ],
            ),
            ClipOval(
              child: Image.asset(
                'assets/profile.jpeg',
                width: 400,
                height: 400,
              ),
            )
          ],
        ));
  }
}
