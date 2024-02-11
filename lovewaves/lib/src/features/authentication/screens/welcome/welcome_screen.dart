import 'package:flutter/material.dart';
import 'package:sample_application_flutter/src/constants/sizes.dart';
import 'package:sample_application_flutter/src/features/authentication/screens/login/login_screen.dart';
import 'package:sample_application_flutter/src/features/authentication/screens/signup/signup_screen.dart';
import '../../../../constants/colors.dart';
import '../../../../constants/image_strings.dart';
import '../../../../constants/text_strings.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var mediaQuery = MediaQuery.of(context);
    var height = mediaQuery.size.height;

    return Scaffold(
      backgroundColor: white,
      body: Container(
        padding: const EdgeInsets.all(defaultSize),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Image(
                image: const AssetImage(welcomeScreenImage),
                height: height * 0.5,
                ),
            Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children:[
                Text(welcomeTitleLeading,
                    style: Theme.of(context).textTheme.headlineMedium),
                     Text(welcomeTitleTrailing,
                    style: Theme.of(context).textTheme.headlineSmall),
               ], ),
                Text(welcomeSubTitle,
                    style: Theme.of(context).textTheme.bodyLarge,
                    textAlign: TextAlign.center),
              ],
            ),
            Row(
              children: [
                Expanded(
                  child: OutlinedButton(
                    style: OutlinedButton.styleFrom(
                      foregroundColor: white,
                      backgroundColor: appPrimaryColor,
                    ),
                    onPressed: () {Navigator.of(context).push(MaterialPageRoute(builder: (context){return const LoginScreen();}));},
                    child: Text(tLogin.toUpperCase()),
                  ),
                ),
                const SizedBox(width: 10.0),
                Expanded(
                  child: ElevatedButton(
                    onPressed: () {Navigator.of(context).push(MaterialPageRoute(builder: (context){return const SignUpScreen();}));},
                    child: Text(tSignup.toUpperCase()),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
