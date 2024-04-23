import 'package:flutter/material.dart';
import 'package:mohana_priya_portfolio/const/strings.dart';
import 'package:mohana_priya_portfolio/responsive/responsive_layout.dart';

import 'package:mohana_priya_portfolio/widgets/mobile/drawer_mobile.dart';
import 'package:mohana_priya_portfolio/widgets/footer.dart';
import 'package:mohana_priya_portfolio/widgets/mobile/main_mobile.dart';
import 'package:mohana_priya_portfolio/widgets/skill.dart';

import '../const/colors.dart';
import '../const/size.dart';
import '../widgets/desktop/about_desktop.dart';
import '../widgets/desktop/header_desktop.dart';
import '../widgets/desktop/main_desktop.dart';
import '../widgets/mobile/about_mobile.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  final scaffoldKey = GlobalKey<ScaffoldState>();
  final scrollCntrl = ScrollController();
  final List<GlobalKey> navbarKeys = List.generate(3, (index) => GlobalKey());
  bool isfabVisible = false;
  @override
  void initState() {
    super.initState();
    scrollCntrl.addListener(() {
      setState(() {
        isfabVisible = scrollCntrl.offset > 0;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    return SafeArea(
        child: Scaffold(
            backgroundColor: CustomColor.scaffoldbg,
            key: scaffoldKey,
            appBar: screenSize.width <= mobileWidth
                ? AppBar(
                    backgroundColor: Theme.of(context).cardColor,
                    actions: const [
                      Padding(
                        padding: EdgeInsets.only(right: 20),
                        child: Text(
                          StringConst.mp,
                          style: TextStyle(fontSize: 20),
                        ),
                      )
                    ],
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
                  Skills(
                    key: navbarKeys[1],
                  ),
                  ResponsiveLayout(
                    mobile: AboutMobile(
                      key: navbarKeys[2],
                    ),
                    desktop: AboutDesktop(
                      key: navbarKeys[2],
                    ),
                  ),
                  const Footer()
                ],
              ),
            ),
            floatingActionButton: isfabVisible
                ? FloatingActionButton(
                    onPressed: () {
                      scrollToSection(0);
                    },
                    child: const Icon(Icons.arrow_upward),
                  )
                : null));
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
