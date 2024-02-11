import 'package:flutter/material.dart';
import 'package:lovewaves_app/src/constants/colors.dart';
import 'package:lovewaves_app/src/constants/image_strings.dart';
import 'package:lovewaves_app/src/constants/sizes.dart';
import 'package:lovewaves_app/src/constants/text_strings.dart';

class ForgetPassword extends StatelessWidget {
  const ForgetPassword({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Container(
            padding: const EdgeInsets.all(defaultSize),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Center(
                      child: Image(
                          image: const AssetImage(lock),
                          height: size.height * 0.2),
                    ),
                    const SizedBox(height: 40),
                    Center(
                      child: Text('Forgot Password ? ',
                          style: Theme.of(context).textTheme.headlineSmall),
                    ),
                  ],
                ),
                Form(
                  child: Container(
                    padding: const EdgeInsets.symmetric(
                        vertical: appFormHeight - 10),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        TextFormField(
                          decoration: const InputDecoration(
                              prefixIcon: Icon(Icons.person_outline_outlined),
                              labelText: email,
                              hintText: email,
                              border: OutlineInputBorder()),
                        ),
                        const SizedBox(height: 30),
                        SizedBox(
                          width: double.infinity,
                          child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              foregroundColor: white,
                              backgroundColor: appPrimaryColor,
                            ),
                            onPressed: () {
                              // TODO handle forget password operation here
                            },
                            child: const Text('SUBMIT'),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                const SizedBox(height: appFormHeight - 20),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
