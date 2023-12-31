import 'package:flutter/material.dart';
import 'package:pregnancy_app/features/remainders/alarms_remainders.dart';
import 'package:pregnancy_app/features/diary/diary_page.dart';
import 'package:pregnancy_app/features/entertainment/learn_entertain.dart';
import 'package:pregnancy_app/features/music/music.dart';
import 'package:pregnancy_app/main_screens/my_account_screen.dart';
import 'package:pregnancy_app/features/photo_album/photo_album_main.dart';

class AppDrawer extends StatefulWidget {
  const AppDrawer({super.key});

  @override
  State<AppDrawer> createState() => _AppDrawer();
}

class _AppDrawer extends State<AppDrawer> {
  @override
  Widget build(BuildContext context) {
    return const Drawer(
      child: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            HeadOfDrawer(),
            DrawerList(),
          ],
        ),
      ),
    );
  }
}

class HeadOfDrawer extends StatefulWidget {
  const HeadOfDrawer({super.key});

  @override
  State<HeadOfDrawer> createState() => _HeadOfDrawerState();
}

class _HeadOfDrawerState extends State<HeadOfDrawer> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color.fromARGB(255, 233, 180, 186),
      width: double.infinity,
      height: 200,
      child: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              width: 100,
              height: 100,
              decoration: const BoxDecoration(
                shape: BoxShape.circle,
                image: DecorationImage(
                  image: AssetImage('assets/profilePics/userProfile.jpeg'),
                ),
              ),
            ),
            const SizedBox(
              width: 5,
            ),
            OutlinedButton(
              onPressed: () {
                //Navigate to User Profile from here.
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) {
                      return const MyAccountScreen();
                    },
                  ),
                );
              },
              child: const Text(
                'View Profile',
                // style: TextStyle(
                //   color: Colors.white,
                // ),
              ),
            ),
            const SizedBox(
              width: 5,
            ),
          ],
        ),
      ),
    );
  }
}

class DrawerList extends StatelessWidget {
  const DrawerList({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ListTile(
          title: const Text('Diary Entry'),
          textColor: Colors.black,
          leading: const Icon(Icons.auto_stories),
          onTap: () {
            //Go to Diary
            Navigator.of(context).push(
              MaterialPageRoute(
                builder: (context) {
                  return DiaryPage();
                },
              ),
            );
          },
        ),
        const Divider(),
        ListTile(
          title: const Text('Photo Album'),
          textColor: Colors.black,
          leading: const Icon(Icons.photo),
          onTap: () {
            //Go to Photo Album
            Navigator.of(context).push(
              MaterialPageRoute(
                builder: (context) {
                  return const PhotoAlbum();
                },
              ),
            );
          },
        ),
        const Divider(),
        ListTile(
          title: const Text('Music for moods'),
          textColor: Colors.black,
          leading: const Icon(Icons.music_note),
          onTap: () {
            //Go to Music for moods
            Navigator.of(context).push(
              MaterialPageRoute(
                builder: (context) {
                  return const Music();
                },
              ),
            );
          },
        ),
        const Divider(),
        ListTile(
          title: const Text('Alarms & Remainders'),
          textColor: Colors.black,
          leading: const Icon(Icons.alarm),
          onTap: () {
            //Go to Learn & Entertain
            Navigator.of(context).push(
              MaterialPageRoute(
                builder: (context) {
                  return const Remainders();
                },
              ),
            );
          },
        ),
        const Divider(),
        ListTile(
          title: const Text('Learn & Entertain'),
          textColor: Colors.black,
          leading: const Icon(Icons.gamepad),
          onTap: () {
            //Go to Learn & Entertain
            Navigator.of(context).push(
              MaterialPageRoute(
                builder: (context) {
                  return const LearnAndEntertain();
                },
              ),
            );
          },
        ),
        const Divider(),
      ],
    );
  }
}
