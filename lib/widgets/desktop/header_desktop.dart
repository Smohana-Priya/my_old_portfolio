import 'package:flutter/material.dart';
import 'package:mohana_priya_portfolio/const/colors.dart';
import 'package:mohana_priya_portfolio/const/nav_item.dart';

import '../../service/services.dart';

class HeaderDesktop extends StatelessWidget {
  final Function(int) onMenuItemTap;
  const HeaderDesktop({super.key, required this.onMenuItemTap});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: CustomColor.hintDark,
      height: 60,
      // margin: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const Text(
              "Mp",
              style: TextStyle(fontSize: 22, color: Colors.amber),
            ),
            const Spacer(),
            for (int i = 0; i < navTitles.length; i++)
              TextButton(
                  onPressed: () {
                    onMenuItemTap(i);
                  },
                  child: Text(
                    navTitles[i],
                    style: const TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                        color: CustomColor.whitePrimary),
                  )),
            const SizedBox(
              width: 30,
            ),
            ElevatedButton(
              onPressed: () {
                launchEmail("smohanapriya2604@gmail.com");
              },
              style: ElevatedButton.styleFrom(
                padding:
                    const EdgeInsets.symmetric(vertical: 15, horizontal: 20),
              ),
              child: const Text('Contact Me'),
            )
          ],
        ),
      ),
    );
  }
}
