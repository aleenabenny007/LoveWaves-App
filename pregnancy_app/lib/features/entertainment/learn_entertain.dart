import 'package:flutter/material.dart';

class LearnAndEntertain extends StatelessWidget {
  const LearnAndEntertain
({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Learn & Entertain'),
        automaticallyImplyLeading: false,
      ),
      body: const Center(child: Text('Learn and entertain')),
    );
  }
}