import 'package:flutter/material.dart';
import 'package:mohana_priya_portfolio/data/nav_items.dart';

import '../../const/colors.dart';

class DrawerMobile extends StatelessWidget {
  final Function(int) onNavItemTap;
  const DrawerMobile({super.key, required this.onNavItemTap});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const CircleAvatar(
                  radius: 25,
                  child: Text('Mp'),
                ),
                IconButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    icon: const Icon(Icons.close)),
              ],
            ),
          ),
          const Divider(),
          const SizedBox(
            height: 20,
          ),
          for (int i = 0; i < navItems.length; i++)
            ListTile(
              contentPadding:
                  const EdgeInsets.symmetric(horizontal: 30, vertical: 5),
              titleTextStyle: const TextStyle(
                  fontWeight: FontWeight.w600,
                  fontSize: 16,
                  color: CustomColor.bgLight2),
              onTap: () {
                onNavItemTap(i);
              },
              leading: Icon(navItems[i].icon),
              title: Text(navItems[i].title),
            )
        ],
      ),
    );
  }
}
