import 'package:flutter/material.dart';
import 'package:mohana_priya_portfolio/widgets/drawer_mobile.dart';
import 'package:mohana_priya_portfolio/widgets/header_mobile.dart';

import '../const/colors.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  final scaffoldKey = GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        key: scaffoldKey,
        endDrawer: const DrawerMobile(),
        backgroundColor: CustomColor.scaffoldbg,
        body: ListView(
          // scrollDirection: Axis.vertical,

          children: [
            // HeaderDesktop(),
            HeaderMobile(
              onLogoTap: () {},
              onMenuTap: () {
                scaffoldKey.currentState?.openEndDrawer();
              },
            )
          ],
        ));
  }
}
