import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AboutUs extends StatelessWidget {
  const AboutUs({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('About Us'),
      leading: IconButton(onPressed: (){Get.back();}, icon: const Icon(Icons.arrow_back_ios)),),
      body: const Center(child: Text('an Overview of our project and team',style: TextStyle(fontSize: 20),),),
    );
  }
}