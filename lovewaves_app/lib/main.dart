import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lovewaves_app/src/features/authentication/screens/splash_screen/splash_screen.dart';
import 'package:lovewaves_app/src/utils/theme/theme.dart';

void main() => runApp(const App());

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      theme: TAppTheme.lightTheme,
      themeMode: ThemeMode.light,
      debugShowCheckedModeBanner: false,
      home: SplashScreen(),
    );
  }
}
