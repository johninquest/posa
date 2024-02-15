import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import '../../pages/customers/customer_list.dart';
import '../../pages/customers/customer_create.dart';
import '../../pages/home.dart';
import '../../pages/info.dart';
import '../../pages/user/user_details.dart';
import '../../pages/user/user_create.dart';
import '../../pages/auth.dart';
import '../../pages/inventory/inventory_list.dart';
import '../../pages/inventory/inventory_create.dart';
import '../../pages/sales/sales_list.dart';
import '../../pages/sales/sale_create.dart';
/* import '../../pages/home.dart'; */

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
    path: '/customers-list',
    builder: (context, state) => const CustomersListPage(),
  ),
  GoRoute(
    path: '/customer-create',
    builder: (context, state) => const CustomerCreatePage(),
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

class PageRouter {
  void navigateToPage(Widget widgetName, BuildContext widgetContext) {
    Navigator.of(widgetContext)
        .push(MaterialPageRoute(builder: (context) => widgetName));
  }
}
