// ignore_for_file: deprecated_member_use

import 'package:mohana_priya_portfolio/const/strings.dart';
import 'package:url_launcher/url_launcher.dart';

launchEmail(String email) async {
  final Uri emailLaunchUri = Uri(
    scheme: StringConst.mailTo,
    path: email,
  );

  if (await canLaunch(emailLaunchUri.toString())) {
    await launch(emailLaunchUri.toString());
  } else {
    throw '${StringConst.couldNotLaunch} $emailLaunchUri';
  }
}

launchURL(String url) async {
  if (await canLaunch(url)) {
    await launch(url);
  } else {
    throw '${StringConst.couldNotLaunch} $url';
  }
}
