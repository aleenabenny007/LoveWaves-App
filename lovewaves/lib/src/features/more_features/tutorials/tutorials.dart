import 'package:flutter/material.dart';
import 'package:sample_application_flutter/src/constants/colors.dart';

class Tutorials extends StatelessWidget {
  Tutorials({super.key});

  final List<String> babyProducts = List<String>.generate(10, (i) => 'Product ${i+1}');

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: const Text(
            "Tutorials",
            style: TextStyle(
              fontWeight: FontWeight.bold,
            ),
          ),
          automaticallyImplyLeading: false,
          centerTitle: false,
          iconTheme: const IconThemeData(color: Colors.black),
          toolbarHeight: 60,
          titleTextStyle: const TextStyle(
            color: Colors.black,
            fontSize: 25,
            fontWeight: FontWeight.w500,
          ),
        ),
        body: ListView.builder(
      itemCount: babyProducts.length,
      itemBuilder: (context, index) {
        return Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            height: 200,
            decoration: BoxDecoration(
                     color: (index % 2 == 0 )? lightPink:lightGrey,
                    borderRadius: BorderRadius.circular(20)
                  ),
           
            child: Center(child: Text(babyProducts[index])),
            // You can add more widgets or customize each list item here
          ),
        );
      },
    ),
    );
  }
}