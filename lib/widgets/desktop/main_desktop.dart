import 'package:flutter/material.dart';

import '../../const/colors.dart';

class MainDesktop extends StatelessWidget {
  const MainDesktop({super.key});

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    return Container(
      width: screenSize.width,
      height: screenSize.height / 1.2,
      margin: const EdgeInsets.symmetric(horizontal: 20),
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
                  'Hi, I\'m Mohana Priya',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    height: 1.5,
                    fontSize: 30,
                    color: CustomColor.whitePrimary,
                  ),
                ),
                const Text(
                  'Flutter Developer',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    height: 1.5,
                    fontSize: 25,
                    color: Colors.amber,
                  ),
                ),
                const SizedBox(height: 20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                        padding: const EdgeInsets.symmetric(
                            vertical: 15, horizontal: 20),
                      ),
                      child: const Text('Download CV'),
                    ),
                    const SizedBox(width: 15),
                    ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                        padding: const EdgeInsets.symmetric(
                            vertical: 15, horizontal: 20),
                      ),
                      child: const Text('Hire Me Now'),
                    )
                  ],
                )
              ],
            ),
          ),
          Expanded(
            flex: 1,
            child: CircleAvatar(
              radius: screenSize.width / 6,
              backgroundImage: const AssetImage('assets/my_profile.jpeg'),
              // child: Image.asset('assets/pic.jpeg'),
            ),
          )
        ],
      ),
    );
  }
}
