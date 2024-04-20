import 'package:flutter/material.dart';
import 'package:mohana_priya_portfolio/const/colors.dart';
import 'package:mohana_priya_portfolio/const/strings.dart';
import 'package:mohana_priya_portfolio/data/nav_items.dart';

import '../../service/services.dart';

class HeaderDesktop extends StatelessWidget {
  final Function(int) onMenuItemTap;
  const HeaderDesktop({super.key, required this.onMenuItemTap});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(18.0),
      child: SizedBox(
        height: 60,
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text(
                StringConst.mp,
                style: TextStyle(
                    fontSize: 22, color: Colors.amber, letterSpacing: 1.2),
              ),
              const Spacer(),
              for (int i = 0; i < navItems.length; i++)
                TextButton(
                    onPressed: () {
                      onMenuItemTap(i);
                    },
                    child: Text(
                      navItems[i].title,
                      style: const TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w500,
                          color: CustomColor.whitePrimary),
                    )),
              const SizedBox(
                width: 30,
              ),
              ElevatedButton(
                onPressed: () {
                  launchEmail(StringConst.mailId);
                },
                style: ElevatedButton.styleFrom(
                  padding:
                      const EdgeInsets.symmetric(vertical: 15, horizontal: 20),
                ),
                child: const Text(
                  StringConst.connectMe,
                  style: TextStyle(
                    fontSize: 20,
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
