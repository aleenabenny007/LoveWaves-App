import 'package:flutter/material.dart';

class DietPlan extends StatelessWidget {
  const DietPlan({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Diet'),),
      body: const Center(
        child: Text('Diet Plan Page'),
      ),
    );
  }
}
