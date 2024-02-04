import 'package:flutter/material.dart';
// import 'package:go_router/go_router.dart';

class SaleCreatePage extends StatelessWidget {
  const SaleCreatePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('New sale'),
        centerTitle: true,
      ),
      body: const Center(
        child: Text('Create a new sale'),
      ),
    );
  }
}

class SaleCreateForm extends StatefulWidget {
  const SaleCreateForm({super.key});

  @override
  State<SaleCreateForm> createState() => _SaleCreateFormState();
}

class _SaleCreateFormState extends State<SaleCreateForm> {
  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}
