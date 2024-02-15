import 'package:flutter/material.dart';

class BusinessInfoPage extends StatelessWidget {
  const BusinessInfoPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Business info'),
        centerTitle: true,
      ),
      body: const Center(
        child: Text('Business information'),
      ),
    );
  }
}
