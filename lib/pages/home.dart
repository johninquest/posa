import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import '../../shared/left_menu.dart';
import '../../utils/date_time_helper.dart';
import '../style/colors.dart';
import 'dart:developer';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int currentIndex = 0;
  static const List _body = [
    Icon(
      Icons.home,
      size: 55.0,
    ),
    Icon(
      Icons.list,
      size: 55.0,
    ),
    Icon(
      Icons.person,
      size: 55.0,
    )
  ];

  @override
  Widget build(BuildContext context) {
    // final dtHelper = DateTimeHelper();
    return Scaffold(
      appBar: AppBar(
        iconTheme: const IconThemeData(color: textWhiteColor),
        backgroundColor: primaryColor,
        title: const Text(
          'repr',
          style: TextStyle(color: textWhiteColor, letterSpacing: 1.0),
        ),
        centerTitle: true,
        actions: [
          /* IconButton(
            onPressed: () => showDialog(
                context: context,
                builder: (_) => const LogoutDialog(),
                barrierDismissible: true),
            icon: const Icon(Icons.logout_outlined),
            tooltip: 'Log out',
          ) */
          IconButton(
            onPressed: () => context.push('/auth'),
            icon: const Icon(Icons.logout_outlined),
            tooltip: 'Log out',
          )
        ],
      ),
      /* drawer: const LeftMenu(), */
      body: Center(
        child: _body.elementAt(currentIndex),
        /* child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
        Column(
          children: [
            Text(
              dtHelper.toDeDateTimeStr(DateTime.now())['date'],
              style: const TextStyle(
                  fontWeight: FontWeight.bold, letterSpacing: 3.0),
            ),
            Text(dtHelper.toDeDateTimeStr(DateTime.now())['time'],
                style: const TextStyle(
                    fontWeight: FontWeight.bold, letterSpacing: 3.0))
          ],
        ),
        const SizedBox(
          height: 13.0,
        ),
        ElevatedButton(
          style: ElevatedButton.styleFrom(),
          onPressed: () {},
          child: const Text('TAP ME'),
        )
      ]) */
      ),
      /* bottomNavigationBar: const BottomNavBar(), */
      drawer: const LeftMenu(),
      bottomNavigationBar: NavigationBar(
        destinations: const [
          NavigationDestination(icon: Icon(Icons.home), label: 'Home'),
          NavigationDestination(icon: Icon(Icons.list), label: 'List'),
          NavigationDestination(icon: Icon(Icons.person), label: 'User')
        ],
        selectedIndex: currentIndex,
        onDestinationSelected: (int index) {
          setState(() {
            currentIndex = index;
          });
        },
      ),
    );
  }
}
