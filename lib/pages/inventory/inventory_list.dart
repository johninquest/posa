import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class InventoryListPage extends StatelessWidget {
  const InventoryListPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Inventory list'),
        centerTitle: true,
      ),
      body: const Center(
        child: Text('Inventory list'),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => context.push('/inventory-create'),
        tooltip: 'New inventory',
        child: const Icon(Icons.add),
      ),
    );
  }
}
