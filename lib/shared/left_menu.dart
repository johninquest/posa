import 'package:flutter/material.dart';
import '../../pages/info.dart';
import '../style/colors.dart';
import '../utils/router.dart';
import 'dart:developer';

class LeftMenu extends StatefulWidget {
  const LeftMenu({Key? key}) : super(key: key);

  @override
  State<LeftMenu> createState() => _LeftMenuState();
}

class _LeftMenuState extends State<LeftMenu> {
  String? currentUserName;
  @override
  Widget build(BuildContext context) {
    final router = PageRouter();
    return SizedBox(
      width: MediaQuery.of(context).size.width * 0.5,
      child: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            DrawerHeader(
                decoration: const BoxDecoration(color: primaryColor),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    const Icon(
                      Icons.settings,
                      color: Colors.white,
                      size: 50.0,
                    ),
                    Text(
                      currentUserName ?? '',
                      style: const TextStyle(
                          fontWeight: FontWeight.bold, fontSize: 20.0),
                    )
                  ],
                )),
            ListTile(
              leading: const Icon(
                Icons.person,
                color: primaryColor,
              ),
              title: const Text(
                'Person',
              ),
              /* onTap: () => PageRouter().navigateToPage(const SchoolInfoPage(), context) */
              onTap: () => log('Tapped 1'),
            ),
            ListTile(
              leading: const Icon(
                Icons.manage_accounts_outlined,
                color: primaryColor,
              ),
              title: const Text('Item 2'),
              onTap: () => log('Tapped 2'),
            ),
            /*  const SizedBox(
              height: 25.0,
            ), */
            ListTile(
              leading: const Icon(
                Icons.build_outlined,
                color: primaryColor,
              ),
              title: const Text(
                'Item 3',
              ),
              onTap: () => log('Tapped 3'),
            ),
            ListTile(
              leading: const Icon(
                Icons.info_outline,
                color: primaryColor,
              ),
              title: const Text(
                'Info',
              ),
              onTap: () => router.navigateToPage(const AppInfoPage(), context),
            ),
          ],
        ),
      ),
    );
  }
}
