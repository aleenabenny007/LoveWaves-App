import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sample_application_flutter/src/constants/colors.dart';
import 'package:sample_application_flutter/src/features/more_features/diary/diary.dart';
import 'package:sample_application_flutter/src/features/more_features/games/games.dart';
import 'package:sample_application_flutter/src/features/more_features/music/music.dart';
import 'package:sample_application_flutter/src/features/more_features/tutorials/tutorials.dart';

class MoreScreen extends StatelessWidget {
  const MoreScreen({super.key});

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;

    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: const Center(
          child: Text(
            'More',
            style: TextStyle(
              color: black,
              fontSize: 24,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        centerTitle: true,
        toolbarHeight: 80,
      ),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: ListView(
          children: [
            GestureDetector(
              onTap: () => Get.to(()=>const DiaryPage()),
              child: Container(
                width: width * 0.7,
                height: height * 0.08,
                decoration: const BoxDecoration(
                    color: lightGrey,
                    borderRadius: BorderRadius.all(Radius.circular(10))),
                child: const Center(child: Text('Diary')),
              ),
            ),
            const SizedBox(height: 10),
            GestureDetector(
              onTap: () => Get.to(()=>const MusicForMoods()) ,
              child: Container(
                width: width * 0.7,
                height: height * 0.08,
                decoration: const BoxDecoration(
                    color: lightGrey,
                    borderRadius: BorderRadius.all(Radius.circular(10))),
                child: const Center(child: Text('Music')),
              ),
            ),
            const SizedBox(height: 10),
            GestureDetector(
              onTap: () => Get.to(()=>const Games()) ,
              child: Container(
                width: width * 0.7,
                height: height * 0.08,
                decoration: const BoxDecoration(
                    color: lightGrey,
                    borderRadius: BorderRadius.all(Radius.circular(10))),
                child: const Center(child: Text('Games')),
              ),
            ),
            const SizedBox(height: 10),
            GestureDetector(
              onTap: () => Get.to(()=>Tutorials()) ,
              child: Container(
                width: width * 0.7,
                height: height * 0.08,
                decoration: const BoxDecoration(
                    color: lightGrey,
                    borderRadius: BorderRadius.all(Radius.circular(10))),
                child: const Center(child: Text('Tutorials')),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
