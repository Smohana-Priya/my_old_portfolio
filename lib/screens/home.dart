import 'package:flutter/material.dart';
import 'package:mohana_priya_portfolio/responsive/responsive_layout.dart';
import 'package:mohana_priya_portfolio/widgets/desktop/about_desktop.dart';
import 'package:mohana_priya_portfolio/widgets/desktop/skills_desktop.dart';
import 'package:mohana_priya_portfolio/widgets/mobile/about_mobile.dart';
import 'package:mohana_priya_portfolio/widgets/mobile/drawer_mobile.dart';
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
    final screenSize = MediaQuery.of(context).size;
    return LayoutBuilder(builder: (context, constraint) {
      return Scaffold(
          backgroundColor: CustomColor.scaffoldbg,
          key: scaffoldKey,
          appBar: screenSize.width <= mobileWidth
              ? AppBar(
                  backgroundColor: Colors.amberAccent,
                  title: const Text("Mohana priya"),
                )
              : PreferredSize(
                  preferredSize: Size(screenSize.width, 100),
                  child: HeaderDesktop(
                    onMenuItemTap: (navIndex) {
                      scrollToSection(navIndex);
                    },
                  )),
          drawer: screenSize.width >= mobileWidth
              ? null
              : Drawer(
                  child: DrawerMobile(
                    onNavItemTap: (navIndex) {
                      scaffoldKey.currentState?.closeDrawer();
                      scrollToSection(navIndex);
                    },
                  ),
                ),
          body: SingleChildScrollView(
            controller: scrollCntrl,
            child: Column(
              children: [
                ResponsiveLayout(
                  mobile: MainMobile(
                    key: navbarKeys[0],
                  ),
                  desktop: MainDesktop(
                    key: navbarKeys[0],
                  ),
                ),
                ResponsiveLayout(
                  mobile: SkillsMobile(
                    key: navbarKeys[1],
                  ),
                  desktop: SkillDesktop(
                    key: navbarKeys[1],
                  ),
                ),
                ResponsiveLayout(
                  mobile: AboutMobile(
                    key: navbarKeys[2],
                  ),
                  desktop: AboutDesktop(
                    key: navbarKeys[2],
                  ),
                ),
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
