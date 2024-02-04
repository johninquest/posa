import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class SalesListPage extends StatelessWidget {
  const SalesListPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: const Center(
        child: Text('Sales list'),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => context.push('/sale-create'),
        tooltip: 'New sale',
        child: const Icon(Icons.add),
      ),
    );
  }
}
