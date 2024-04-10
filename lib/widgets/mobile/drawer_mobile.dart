import 'package:flutter/material.dart';

import '../../const/colors.dart';
import '../../const/nav_item.dart';

class DrawerMobile extends StatelessWidget {
  const DrawerMobile({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: CustomColor.scaffoldbg,
      child: ListView(
        children: [
          Align(
              alignment: Alignment.topLeft,
              child: Padding(
                padding: const EdgeInsets.only(left: 20, bottom: 20, top: 20),
                child: IconButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    icon: const Icon(Icons.close)),
              )),
          for (int i = 0; i < navTitles.length; i++)
            ListTile(
              contentPadding: const EdgeInsets.symmetric(horizontal: 30),
              titleTextStyle: const TextStyle(
                  fontWeight: FontWeight.w600,
                  fontSize: 16,
                  color: CustomColor.whitePrimary),
              onTap: () {},
              leading: Icon(navIcons[i]),
              title: Text(navTitles[i]),
            )
        ],
      ),
    );
  }
}
