import 'package:flutter/material.dart';
import 'package:lovewaves_app/src/constants/colors.dart';
import 'package:lovewaves_app/src/constants/sizes.dart';
import 'package:lovewaves_app/src/constants/text_strings.dart';
import 'package:lovewaves_app/src/screen_widgets/bottom_navigation/bottom_nav_home.dart';

class SignUpFormWidget extends StatelessWidget {
  const SignUpFormWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: appFormHeight - 10),
      child: Form(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            TextFormField(
              decoration: const InputDecoration(
                label: Text(fullName),
                prefixIcon: Icon(Icons.person_outline_rounded),
                border: OutlineInputBorder(),
              ),
            ),
            const SizedBox(height: appFormHeight - 20),
            TextFormField(
              decoration: const InputDecoration(
                label: Text(email),
                prefixIcon: Icon(Icons.email_outlined),
                border: OutlineInputBorder(),
              ),
            ),
            const SizedBox(height: appFormHeight - 20),
            TextFormField(
              keyboardType: TextInputType.number,
              decoration: const InputDecoration(
                label: Text(phoneNo),
                prefixIcon: Icon(Icons.phone),
                border: OutlineInputBorder(),
              ),
            ),
            const SizedBox(height: appFormHeight - 20),
            TextFormField(
              decoration: const InputDecoration(
                label: Text(password),
                prefixIcon: Icon(Icons.lock),
                border: OutlineInputBorder(),
              ),
            ),
            const SizedBox(height: appFormHeight - 20),
            TextFormField(
              decoration: const InputDecoration(
                label: Text(lastPeriod),
                prefixIcon: Icon(Icons.date_range),
                border: OutlineInputBorder(),
              ),
            ),
            const SizedBox(height: appFormHeight - 10),
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
                child: Text(tSignup.toUpperCase()),
              ),
            )
          ],
        ),
      ),
    );
  }
}
