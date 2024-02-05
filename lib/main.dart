import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:google_fonts/google_fonts.dart';
import 'pages/home.dart';
import 'pages/info.dart';
import 'pages/user/user_details.dart';
import 'pages/user/user_create.dart';
/* import '../../pages/storage.dart'; */
import '../../pages/auth.dart';
import '../../pages/inventory/inventory_list.dart';
import 'pages/inventory/inventory_create.dart';
import '../../pages/sales/sales_list.dart';
import '../../pages/sales/sale_create.dart';
/* import '../../pages/home.dart'; */
import '../../style/colors.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({super.key});

  /* This widget is the root of your application. */
  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
        routerConfig: _router,
        debugShowCheckedModeBanner: false,
        /* title: 'Flutter Demo', */
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: primaryColor),
          useMaterial3: true,
          /*  fontFamily: GoogleFonts.quicksand().fontFamily, */
          textTheme: GoogleFonts.latoTextTheme(),
          // home: const AuthPage(),
        ));
  }

  final GoRouter _router = GoRouter(initialLocation: '/auth', routes: [
    GoRoute(
      path: '/auth',
      builder: (context, state) => const AuthPage(),
    ),
    GoRoute(
      path: '/home',
      builder: (context, state) => const HomePage(),
    ),
    GoRoute(
      path: '/info',
      builder: (context, state) => const AppInfoPage(),
    ),
    GoRoute(
      path: '/user',
      builder: (context, state) => const UserPage(),
    ),
    GoRoute(
      path: '/user-create',
      builder: (context, state) => const UserCreatePage(),
    ),
    GoRoute(
      path: '/inventory-list',
      builder: (context, state) => const InventoryListPage(),
    ),
    GoRoute(
      path: '/inventory-create',
      builder: (context, state) => const InventoryCreatePage(),
    ),
    GoRoute(
      path: '/sales-list',
      builder: (context, state) => const SalesListPage(),
    ),
    GoRoute(
      path: '/sale-create',
      builder: (context, state) => const SaleCreatePage(),
    ),
  ]);
}
