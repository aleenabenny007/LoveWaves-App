import 'package:flutter/material.dart';
import 'package:pregnancy_app/main_screens/health_care_screen.dart';
import 'package:pregnancy_app/main_screens/home_screen.dart';
import 'package:pregnancy_app/main_screens/my_account_screen.dart';
import 'package:pregnancy_app/screen_widgets/popup.dart';
import 'package:pregnancy_app/main_screens/social_connect_screen.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _currentIndex = 0;

  final List<Widget> _pages = [
    const HomeScreen(),
    const HealthCareScreen(),
    const SocialConnect(),
    const MyAccountScreen(),
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
        MaterialPageRoute(builder: (context) => const SocialConnect()),
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
        return PopUp();
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
            // canvasColor: Colors.white,
            ),
        child: BottomNavigationBar(
          currentIndex: _currentIndex,
          type: BottomNavigationBarType.fixed,
          items: const [
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.local_hospital),
              label: 'Healthcare',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.group),
              label: 'Social Connect',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.person),
              label: 'My Account',
            ),
          ],
          onTap: _onItemTapped,
        ),
      ),
    );
  }
}
