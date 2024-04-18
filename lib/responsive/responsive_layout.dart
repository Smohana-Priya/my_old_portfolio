import 'package:flutter/material.dart';

import '../const/size.dart';

class ResponsiveLayout extends StatelessWidget {
  final Widget? mobile;
  final Widget? desktop;
  const ResponsiveLayout({super.key, this.mobile, this.desktop});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      if (constraints.maxWidth < mobileWidth) {
        return mobile!;
      } else {
        return desktop!;
      }
    });
  }
}
