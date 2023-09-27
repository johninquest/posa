import 'dart:developer';
import 'package:url_launcher/url_launcher.dart';

class WebService {
  Future<void> openUrl(String targetUrl, context) async {
    final Uri url = Uri.parse(targetUrl);
    if (await canLaunchUrl(url)) {
      await launchUrl(url, mode: LaunchMode.externalApplication);
    } else {
      /* showDialog(
          context: context,
          builder: (_) => ErrorDialog('Could not launch $targetUrl')); */
      log('An error occured!');
    }
  }
}
