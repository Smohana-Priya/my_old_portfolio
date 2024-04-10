import 'package:flutter/material.dart';
import 'package:mohana_priya_portfolio/widgets/desktop/about_desktop.dart';
import 'package:mohana_priya_portfolio/widgets/desktop/skills_desktop.dart';
import 'package:mohana_priya_portfolio/widgets/mobile/about_mobile.dart';
import 'package:mohana_priya_portfolio/widgets/mobile/drawer_mobile.dart';
import 'package:mohana_priya_portfolio/widgets/mobile/header_mobile.dart';
import 'package:mohana_priya_portfolio/widgets/mobile/main_mobile.dart';
import 'package:mohana_priya_portfolio/widgets/mobile/skills_mobile.dart';

import '../const/colors.dart';
import '../const/size.dart';
import '../widgets/desktop/header_desktop.dart';
import '../widgets/desktop/main_desktop.dart';

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
          endDrawer: constraint.maxWidth >= minDesktopWidth
              ? null
              : const DrawerMobile(),
          backgroundColor: CustomColor.scaffoldbg,
          body: ListView(
            // scrollDirection: Axis.vertical,

            children: [
              const SizedBox(
                height: 15,
              ),
              if (constraint.maxWidth >= minDesktopWidth)
                const HeaderDesktop()
              else
                HeaderMobile(
                  onLogoTap: () {},
                  onMenuTap: () {
                    scaffoldKey.currentState?.openEndDrawer();
                  },
                ),
              if (constraint.maxWidth >= minDesktopWidth)
                const MainDesktop()
              else
                const MainMobile(),
              if (constraint.maxWidth >= minDesktopWidth)
                const SkillDesktop()
              else
                const SkillsMobile(),
              if (constraint.maxWidth >= minDesktopWidth)
                const AboutDesktop()
              else
                const AboutMobile()
            ],
          ));
    });
  }
}
