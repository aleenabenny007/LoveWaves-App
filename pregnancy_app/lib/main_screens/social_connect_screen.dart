import 'package:flutter/material.dart';
import 'package:pregnancy_app/features/social_connect/social_chats.dart';
import 'package:pregnancy_app/features/social_connect/social_home.dart';
import 'package:pregnancy_app/features/social_connect/social_profile.dart';
import 'package:pregnancy_app/features/social_connect/social_search.dart';

class SocialConnect extends StatefulWidget {
  const SocialConnect({super.key});

  @override
  State<SocialConnect> createState() => _SocialConnectState();
}

class _SocialConnectState extends State<SocialConnect> {
  int _currentIndex = 0;

  final List<Widget> _pages = [
    const SocialHome(),
    const SocialSearch(),
    const SocialChats(),
    const SocialProfile(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Social Connect'),
      ),
      body: IndexedStack(
        index: _currentIndex,
        children: _pages,
      ),
      bottomNavigationBar: Theme(
        data: Theme.of(context).copyWith(
            // canvasColor: Colors.white,
            ),
        child: BottomNavigationBar(
          // selectedItemColor: Color.fromARGB(193, 212, 113, 146),
          // unselectedItemColor: Colors.grey,
          currentIndex: _currentIndex,
          type: BottomNavigationBarType.fixed,
          items: const [
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.search),
              label: 'Search',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.messenger),
              label: 'Chats',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.person),
              label: 'Profile',
            ),
          ],
          onTap: (index) {
            setState(() {
              _currentIndex = index;
            });
          },
        ),
      ),
    );
  }
}
