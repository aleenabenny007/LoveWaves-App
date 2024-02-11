import 'package:flutter/material.dart';
import 'package:lovewaves_app/src/constants/colors.dart';

class Games extends StatelessWidget {
  const Games({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text(
            "Games",
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
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: GridView.builder(
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              crossAxisSpacing: 10.0,
              mainAxisSpacing: 10.0,
            ),
            itemCount: 8,
            itemBuilder: (context, index) {
              return Container(
                decoration: BoxDecoration(
                  color: lightGrey,
                  borderRadius: BorderRadius.circular(20)
                ),
                alignment: Alignment.center,
                child: Text(
                  'Game ${index + 1}',
                  style: const TextStyle(color: black),
                ),
              );
            },
          ),
        ));
  }
}
