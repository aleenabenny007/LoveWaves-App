import 'package:flutter/material.dart';

class Exercise extends StatelessWidget {
  const Exercise({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Exercise'),),
      body: const Center(
        child: Text('Exercise Page'),
      ),
    );
  }
}
