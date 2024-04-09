import 'package:flutter/material.dart';
import 'package:mohana_priya_portfolio/widgets/drawer_mobile.dart';
import 'package:mohana_priya_portfolio/widgets/header_mobile.dart';

import '../const/colors.dart';
import '../const/size.dart';
import '../widgets/header_desktop.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  final scaffoldKey = GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraint) {
      return Scaffold(
          key: scaffoldKey,
          endDrawer: constraint.maxWidth >= minDsktopWidth
              ? null
              : const DrawerMobile(),
          backgroundColor: CustomColor.scaffoldbg,
          body: ListView(
            // scrollDirection: Axis.vertical,

            children: [
              if (constraint.maxWidth >= minDsktopWidth)
                const HeaderDesktop()
              else
                HeaderMobile(
                  onLogoTap: () {},
                  onMenuTap: () {
                    scaffoldKey.currentState?.openEndDrawer();
                  },
                )
            ],
          ));
    });
  }
}
