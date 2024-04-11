import 'package:flutter/material.dart';
import 'package:mohana_priya_portfolio/const/colors.dart';
import 'package:mohana_priya_portfolio/const/nav_item.dart';

import '../../styles/style.dart';
import '../logo.dart';

class HeaderDesktop extends StatelessWidget {
  final Function(int) onMenuItemTap;
  const HeaderDesktop({super.key, required this.onMenuItemTap});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60,
      margin: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
      decoration: headerDecoration,
      child: Row(
        children: [
          const Logo(),
          const Spacer(),
          for (int i = 0; i < navTitles.length; i++)
            Padding(
              padding: const EdgeInsets.only(right: 20),
              child: TextButton(
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
            )
        ],
      ),
    );
  }
}
