import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sample_application_flutter/src/constants/colors.dart';
import 'package:sample_application_flutter/src/constants/image_strings.dart';
import 'package:sample_application_flutter/src/constants/sizes.dart';
import 'package:sample_application_flutter/src/constants/text_strings.dart';
import 'package:sample_application_flutter/src/features/authentication/screens/login/login_screen.dart';


class SignUpFooterWidget extends StatelessWidget {
  const SignUpFooterWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Text("OR"),
        const SizedBox(height: appFormHeight - 20),
        SizedBox(
          width: double.infinity,
          child: OutlinedButton.icon(
            onPressed: () {},
            icon: const Image(
              image: AssetImage(googleLogoImage),
              width: 20.0,
            ),
            label: const Text(signInWithGoogle,style: TextStyle(color: Colors.black)),
          ),
        ),
        TextButton(
          onPressed: ()  => Get.to(() => const LoginScreen()),
          child: Text.rich(TextSpan(children: [
            TextSpan(
              text: alreadyHaveAnAccount,
              style: Theme.of(context).textTheme.bodyMedium,
            ),
            const TextSpan(text:"  "),
            const TextSpan(text: tLogin, style: TextStyle(color: appPrimaryColor))
          ])),
        )
      ],
    );
  }
}


