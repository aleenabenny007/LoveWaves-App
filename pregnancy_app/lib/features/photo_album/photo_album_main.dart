//.........Photo Album main page..............

import 'package:flutter/material.dart';

class PhotoAlbum extends StatelessWidget {
  const PhotoAlbum({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Albums'),
        automaticallyImplyLeading: false,
      ),
      
      body: GridView.count(
        crossAxisCount: 2,
        children: List.generate(4, (index) {
          return Container(
            margin: const EdgeInsets.all(10),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              image: const DecorationImage(
                image: AssetImage('assets/sliderImages/img3.png'),
                fit: BoxFit.cover,
              ),
            ),
            child: Align(
              alignment: Alignment.bottomRight,
              child: Padding(
                padding: const EdgeInsets.all(10),
                child: Text(
                  'Album ${index + 1}',
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
          );
        }),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          //To add new photo albums
        },
        backgroundColor: Colors.red[100],
        child: const Icon(Icons.add),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
    );
  }
}
