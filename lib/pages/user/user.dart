import 'package:flutter/material.dart';

class UserPage extends StatelessWidget {
  const UserPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('User'),
        centerTitle: true,
      ),
      body: const Center(
        child: Text(
          '🚀 Now Or Never 🚀',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}
