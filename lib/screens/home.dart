import 'package:flutter/material.dart';
import 'package:mohana_priya_portfolio/widgets/header_desktop.dart';

import '../const/colors.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: CustomColor.scaffoldbg,
        body: ListView(
          // scrollDirection: Axis.vertical,

          children: const [
            HeaderDesktop(),
          ],
        ));
  }
}
