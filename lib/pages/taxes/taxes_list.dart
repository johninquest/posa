import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class TaxesPage extends StatelessWidget {
  const TaxesPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Taxes'),
        centerTitle: true,
      ),
      body: const Center(
        child: Text('Taxes list'),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => context.push('/tax-create'),
        tooltip: 'New tax',
        child: const Icon(Icons.add),
      ),
    );
  }
}
