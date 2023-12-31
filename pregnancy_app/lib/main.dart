import 'package:flutter/material.dart';
import 'package:pregnancy_app/features/authentication/login.dart';

void main() => runApp(const App());

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'LoveWaves App',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: Color.fromARGB(255, 252, 248, 247),
        bottomNavigationBarTheme: BottomNavigationBarThemeData(
          // backgroundColor: Color.fromARGB(255, 239, 237, 243),
          selectedItemColor: Color.fromARGB(255, 233, 180, 186),
          unselectedItemColor: Colors.grey,
        ),
        appBarTheme: AppBarTheme(
          backgroundColor: Colors.white,
        ),
        buttonTheme: ButtonThemeData(
          buttonColor: Colors.white,
        ),
        scaffoldBackgroundColor: Colors.white,
      ),
      home: LoginScreen(),
    );
  }
}
