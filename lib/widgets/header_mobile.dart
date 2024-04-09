import 'package:flutter/material.dart';
import 'package:mohana_priya_portfolio/widgets/logo.dart';

import '../styles/style.dart';

class HeaderMobile extends StatelessWidget {
  final VoidCallback? onLogoTap;
  final VoidCallback? onMenuTap;
  const HeaderMobile({super.key, this.onLogoTap, this.onMenuTap});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      decoration: headerDecoration,
      margin: const EdgeInsets.fromLTRB(40, 5, 20, 5),
      child: Row(
        children: [
          Logo(
            ontap: () => onLogoTap,
          ),
          const Spacer(),
          IconButton(onPressed: onMenuTap, icon: const Icon(Icons.menu)),
          const SizedBox(
            width: 15,
          )
        ],
      ),
    );
  }
}
