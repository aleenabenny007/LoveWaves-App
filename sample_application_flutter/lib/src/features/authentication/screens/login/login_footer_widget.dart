import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sample_application_flutter/src/constants/colors.dart';
import 'package:sample_application_flutter/src/constants/image_strings.dart';
import 'package:sample_application_flutter/src/constants/sizes.dart';
import 'package:sample_application_flutter/src/constants/text_strings.dart';
import 'package:sample_application_flutter/src/features/authentication/screens/signup/signup_screen.dart';

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
            const TextSpan(text: tSignup, style: TextStyle(color: appPrimaryColor)),
          ])),
        ),
      ],
    );
  }
}
