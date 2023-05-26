import 'package:flutter/material.dart';

class ProfileUpdateScreen extends StatelessWidget {
  const ProfileUpdateScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('ProfileUpdatePage'),
        centerTitle: true,
      ),
      body: const Center(
        child: Text(
          'ProfileUpdatePage is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
