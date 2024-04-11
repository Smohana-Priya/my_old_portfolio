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
  final scrollCntrl = ScrollController();
  final List<GlobalKey> navbarKeys = List.generate(3, (index) => GlobalKey());

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraint) {
      return Scaffold(
          key: scaffoldKey,
          endDrawer: constraint.maxWidth >= minDesktopWidth
              ? null
              : DrawerMobile(
                  onNavItemTap: (navIndex) {
                    scaffoldKey.currentState?.closeEndDrawer();
                    scrollToSection(navIndex);
                  },
                ),
          backgroundColor: CustomColor.scaffoldbg,
          body: SingleChildScrollView(
            controller: scrollCntrl,
            child: Column(
              children: [
                SizedBox(
                  key: navbarKeys.first,
                ),
                if (constraint.maxWidth >= minDesktopWidth)
                  HeaderDesktop(
                    onMenuItemTap: (navIndex) {
                      scrollToSection(navIndex);
                    },
                  )
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
                  SkillDesktop(
                    key: navbarKeys[1],
                  )
                else
                  SkillsMobile(
                    key: navbarKeys[1],
                  ),
                if (constraint.maxWidth >= minDesktopWidth)
                  AboutDesktop(
                    key: navbarKeys[2],
                  )
                else
                  AboutMobile(
                    key: navbarKeys[2],
                  )
              ],
            ),
          ));
    });
  }

  void scrollToSection(int navIndex) {
    final key = navbarKeys[navIndex];
    Scrollable.ensureVisible(key.currentContext!,
        duration: const Duration(
          milliseconds: 500,
        ),
        curve: Curves.easeInOut);
  }
}
