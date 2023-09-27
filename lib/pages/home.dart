import 'package:flutter/material.dart';
import '../style/colors.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: primaryColor,
        title: const Text(
          'PolicyTrackr',
          style: TextStyle(color: textWhiteColor, letterSpacing: 1.0),
        ),
        centerTitle: true,
        actions: const [
          /* IconButton(
            onPressed: () => showDialog(
                context: context,
                builder: (_) => const LogoutDialog(),
                barrierDismissible: true),
            icon: const Icon(Icons.logout_outlined),
            tooltip: 'Log out',
          ) */
        ],
      ),
      /* drawer: const LeftMenu(), */
      body: const Center(
          child: Center(
        child: Text('Hello world!'),
      )),
      /* bottomNavigationBar: const BottomNavBar(), */
    );
  }
}
