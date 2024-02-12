import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class CustomersListPage extends StatelessWidget {
  const CustomersListPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Customers'),
        centerTitle: true,
      ),
      body: const Center(
        child: Text('Customer list'),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => context.push('/customer-create'),
        tooltip: 'New customer',
        child: const Icon(Icons.add),
      ),
    );
  }
}
