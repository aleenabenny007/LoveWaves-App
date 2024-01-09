import 'package:flutter/material.dart';
import 'package:sample_application_flutter/src/constants/colors.dart';
import 'package:sample_application_flutter/src/constants/sizes.dart';
import 'package:sample_application_flutter/src/constants/text_strings.dart';
import 'package:sample_application_flutter/src/screen_widgets/bottom_navbar/bottom_nav_home.dart';

class LoginForm extends StatelessWidget {
  const LoginForm({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Form(
      child: Container(
        padding: const EdgeInsets.symmetric(vertical: appFormHeight - 10),
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
            const SizedBox(height: appFormHeight - 20),
            TextFormField(
              decoration: const InputDecoration(
                prefixIcon: Icon(Icons.lock),
                labelText: password,
                hintText: password,
                border: OutlineInputBorder(),
                suffixIcon: IconButton(
                  onPressed: null,
                  icon: Icon(Icons.remove_red_eye_sharp),
                ),
              ),
            ),
            const SizedBox(height: appFormHeight - 30),
            Align(
              alignment: Alignment.centerRight,
              child: TextButton(
                  onPressed: () {}, child: const Text(forgetPassword, style: TextStyle(color: appPrimaryColor))),
            ),
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  foregroundColor: white,
                  backgroundColor: appPrimaryColor,
                ),
                onPressed: () {
                  Navigator.of(context).push(MaterialPageRoute(builder: (context){return const BottomNavHome();}));
                },
                child: Text(tLogin.toUpperCase()),
              ),
            ),
          ],
        ),
      ),
    );
  }
}