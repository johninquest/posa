import 'package:flutter/material.dart';
// import '../../style/colors.dart';
// import 'package:go_router/go_router.dart';

class CustomerCreatePage extends StatelessWidget {
  const CustomerCreatePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('New customer'),
        centerTitle: true,
      ),
      body: const Center(
        child: Text('Create new customer'),
      ),
    );
  }
}
