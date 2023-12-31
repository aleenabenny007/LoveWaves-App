import 'package:flutter/material.dart';
import 'package:pregnancy_app/features/others/feedback_rating.dart';

class MyAccountScreen extends StatelessWidget {
  const MyAccountScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text(
            "My Account",
          ),
          automaticallyImplyLeading: false,
          // iconTheme: const IconThemeData(color: Colors.white),
          // toolbarHeight: 60,
          // titleTextStyle: const TextStyle(
          //   color: Colors.white,
          //   fontSize: 25,
          //   fontWeight: FontWeight.w500,
          // ),
          backgroundColor: Color.fromARGB(255, 233, 180, 186),
        ),
        body: ListView(
          children: [
            Container(
              color: Color.fromARGB(255, 233, 180, 186),
              child: Column(
                children: [
                  SizedBox(
                    height: 10,
                  ),
                  Container(
                    width: 200,
                    height: 200,
                    decoration: const BoxDecoration(
                      shape: BoxShape.circle,
                      image: DecorationImage(
                        image:
                            AssetImage('assets/profilePics/userProfile.jpeg'),
                      ),
                    ),
                  ),
                  Text(
                    'Username',
                    style: TextStyle(
                        fontSize: 20, color: Color.fromARGB(255, 40, 6, 134)),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      //Go to Profile
                    },
                    style: ButtonStyle(
                      shape: MaterialStatePropertyAll(
                        RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10)),
                      ),
                      fixedSize: const MaterialStatePropertyAll(
                        Size(90, 10),
                      ),
                    ),
                    child: const Text(
                      'Profile',
                    ),
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                ],
              ),
            ),
            ListTile(
              title: const Text('Settings'),
              textColor: Colors.black,
              leading: const Icon(Icons.settings),
              onTap: () {
                //Go to Settings
              },
            ),
            const Divider(),
            ListTile(
              title: const Text('Help & Support'),
              textColor: Colors.black,
              leading: const Icon(Icons.handshake),
              onTap: () {
                //Go to Help & Support
              },
            ),
            const Divider(),
            ListTile(
              title: const Text('Feedback & Ratings'),
              textColor: Colors.black,
              leading: const Icon(Icons.star),
              onTap: () {
                //Go to Feedback & Ratings
                Navigator.of(context)
                    .push(MaterialPageRoute(builder: (context) {
                  return FeebackRating();
                }));
              },
            ),
            const Divider(),
            ListTile(
              title: const Text('About us'),
              textColor: Colors.black,
              leading: const Icon(Icons.web),
              onTap: () {
                //Go to About us
              },
            ),
          ],
        ));
  }
}
