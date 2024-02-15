import 'package:flutter/material.dart';
// import 'package:go_router/go_router.dart';

class TaxeCreatePage extends StatelessWidget {
  const TaxeCreatePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('New tax'),
        centerTitle: true,
      ),
      body: const Center(
        child: Text('Add new tax'),
      ),
    );
  }
}
