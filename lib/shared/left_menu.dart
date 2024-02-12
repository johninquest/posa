import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import '../style/colors.dart';
// import 'dart:developer';

class LeftMenu extends StatefulWidget {
  const LeftMenu({super.key});

  @override
  State<LeftMenu> createState() => _LeftMenuState();
}

class _LeftMenuState extends State<LeftMenu> {
  String? currentUserName;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width * 0.45,
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
                Icons.groups_2_outlined,
                color: primaryColor,
              ),
              title: const Text(
                'Customers',
              ),
              /* onTap: () => PageRouter().navigateToPage(const SchoolInfoPage(), context) */
              onTap: () => context.push('/customers-list'),
            ),
            ListTile(
              leading: const Icon(
                Icons.inventory_outlined,
                color: primaryColor,
              ),
              title: const Text(
                'Inventory',
              ),
              /* onTap: () => PageRouter().navigateToPage(const SchoolInfoPage(), context) */
              onTap: () => context.push('/inventory-list'),
            ),
            ListTile(
              leading: const Icon(
                Icons.point_of_sale_outlined,
                color: primaryColor,
              ),
              title: const Text(
                'Sales',
              ),
              /* onTap: () => PageRouter().navigateToPage(const SchoolInfoPage(), context) */
              onTap: () => context.push('/sales-list'),
            ),
            ListTile(
              leading: const Icon(
                Icons.person_outline,
                color: primaryColor,
              ),
              title: const Text(
                'User',
              ),
              /* onTap: () => PageRouter().navigateToPage(const SchoolInfoPage(), context) */
              onTap: () => context.push('/user'),
            ),
            ListTile(
              leading: const Icon(
                Icons.info_outline,
                color: primaryColor,
              ),
              title: const Text(
                'Info',
              ),
              onTap: () => context.push('/info'),
            ),
            /* ListTile(
              leading: const Icon(
                Icons.save_outlined,
                color: primaryColor,
              ),
              title: const Text(
                'Storage',
              ),
              onTap: () => context.push('/storage'),
            ), */
          ],
        ),
      ),
    );
  }
}
