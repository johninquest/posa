import 'package:flutter/material.dart';
import '../../utils/version_info.dart';
// import '../style/colors.dart';

class AppInfoPage extends StatelessWidget {
  const AppInfoPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        /* iconTheme: const IconThemeData(color: textWhiteColor),
        backgroundColor: primaryColor, */
        title: const Text(
          'App info',
        ),
        centerTitle: true,
      ),
      body: const Center(
        child: VersionInfo(),
      ),
    );
  }
}
