import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lovewaves_app/src/constants/colors.dart';
import 'package:lovewaves_app/src/constants/image_strings.dart';
import 'package:lovewaves_app/src/constants/sizes.dart';
import 'package:lovewaves_app/src/constants/text_strings.dart';
import 'package:lovewaves_app/src/features/authentication/screens/signup/signup_screen.dart';

class LoginFooterWidget extends StatelessWidget {
  const LoginFooterWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        const Text("OR"),
        const SizedBox(height: appFormHeight - 20),
        SizedBox(
          width: double.infinity,
          child: OutlinedButton.icon(
            icon: const Image(image: AssetImage(googleLogoImage), width: 20.0),
            onPressed: () {},
            label: const Text(signInWithGoogle,style: TextStyle(color: Colors.black)),
          ),
        ),
        const SizedBox(height: appFormHeight - 20),
        TextButton(
          onPressed: () => Get.to(() => const SignUpScreen()),
          child: Text.rich(TextSpan(children: [
            TextSpan(
              text: dontHaveAnAccount,
              style: Theme.of(context).textTheme.bodyMedium,
            ),
            const TextSpan(text: "  "),
            TextSpan(text: tSignup, style: TextStyle(color: appPrimaryColor)),
          ])),
        ),
      ],
    );
  }
}
