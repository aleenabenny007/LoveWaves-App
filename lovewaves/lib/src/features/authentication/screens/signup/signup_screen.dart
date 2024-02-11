import 'package:flutter/material.dart';
import 'package:sample_application_flutter/src/constants/image_strings.dart';
import 'package:sample_application_flutter/src/constants/sizes.dart';
import 'package:sample_application_flutter/src/constants/text_strings.dart';
import 'package:sample_application_flutter/src/features/authentication/screens/signup/signup_footer_widget.dart';
import 'package:sample_application_flutter/src/features/authentication/screens/signup/signup_form_widget.dart';
import 'package:sample_application_flutter/src/features/authentication/screens/signup/signup_header_widget.dart';


class SignUpScreen extends StatelessWidget {
  const SignUpScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Container(
            padding: const EdgeInsets.all(defaultSize),
            child: const Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                FormHeaderWidget(
                  image: welcomeScreenImage,
                  title: signUpTitle,
                  subTitle: signUpSubTitle,
                  imageHeight: 0.15,
                ),
                SignUpFormWidget(),
                SignUpFooterWidget(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}