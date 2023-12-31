import 'package:flutter/material.dart';

class Remainders extends StatelessWidget {
  const Remainders({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Alarms & Remainders'),
        automaticallyImplyLeading: false,
      ),
      body: const Center(child: Text('Alarms and Remainders')),
    );
  }
}