import 'package:flutter/material.dart';
import 'package:sample_application_flutter/src/features/community/community_screen.dart';
import 'package:sample_application_flutter/src/features/health/health_screen.dart';
import 'package:sample_application_flutter/src/features/main_pages/home_screen.dart';
import 'package:sample_application_flutter/src/features/main_pages/more_screen.dart';
import 'package:sample_application_flutter/src/screen_widgets/popup/popup.dart';

class BottomNavHome extends StatefulWidget {
  const BottomNavHome({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _BottomNavHomeState createState() => _BottomNavHomeState();
}

class _BottomNavHomeState extends State<BottomNavHome> {
  int _currentIndex = 0;

  final List<Widget> _pages = [
    const HomeScreen(),
    const HealthScreen(),
    const CommunityScreen(),
    const MoreScreen(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _currentIndex = index;
    });
    if (index == 2) {
      //to return back to home page after closing social connect
      _onItemTapped(0);
      // Navigate to a new screen with a different bottom navigation bar
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => const CommunityScreen()),
      );
    }
  }

  @override
  void initState() {
    super.initState();
    // Show the pop up box when the home page loads
    WidgetsBinding.instance.addPostFrameCallback((_) async {
      // Wait for one second
      await Future.delayed(const Duration(seconds: 1));
      _showPopUpBox();
    });
  }

  // A method to show the pop up box
  Future<void> _showPopUpBox() async {
    // Display the dialog widget
    await showDialog<void>(
      context: context,
      barrierDismissible: false, // user must tap button!
      builder: (BuildContext context) {
        return const PopUp();
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IndexedStack(
        index: _currentIndex,
        children: _pages,
      ),
      bottomNavigationBar: Theme(
        data: Theme.of(context).copyWith(
          primaryColor: Colors.red,
          textTheme: Theme.of(context).textTheme.copyWith(
                bodySmall: const TextStyle(color: Colors.yellow, fontSize: 18),
              ),
        ),
        child: BottomNavigationBar(
          currentIndex: _currentIndex,
          type: BottomNavigationBarType.fixed,
          items: const [
            BottomNavigationBarItem(
              icon: Icon(Icons.home_rounded),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.local_hospital),
              label: 'Health',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.group),
              label: 'Community',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.menu_rounded),
              label: 'More',
            ),
          ],
          onTap: _onItemTapped,
        ),
      ),
    );
  }
}
