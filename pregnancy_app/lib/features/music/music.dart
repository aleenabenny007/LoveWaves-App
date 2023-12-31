import 'package:flutter/material.dart';

class Music extends StatelessWidget {
  const Music({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Music for moods'),
        automaticallyImplyLeading: false,
      ),
      body: const Center(child: Text('Music for moods')),
    );
  }
}