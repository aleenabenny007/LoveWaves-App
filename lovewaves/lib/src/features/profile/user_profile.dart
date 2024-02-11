import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sample_application_flutter/src/constants/colors.dart';
import 'package:sample_application_flutter/src/features/profile/about_us/about_us.dart';
import 'package:sample_application_flutter/src/features/profile/ratings/ratings.dart';
import 'package:sample_application_flutter/src/features/profile/view_profile.dart';
import 'package:sample_application_flutter/src/utils/dimensions.dart';

class UserProfile extends StatelessWidget {
  const UserProfile({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            children: [
              HeadSection(),
              Padding(
                padding: EdgeInsets.all(20.0),
                child: OptionsList(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class HeadSection extends StatefulWidget {
  const HeadSection({super.key});

  @override
  State<HeadSection> createState() => _HeadSectionState();
}

class _HeadSectionState extends State<HeadSection> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: 300,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(
                height: Dimensions.height190,
                width: Dimensions.width170,
                child: ClipRRect(
                    borderRadius: BorderRadius.circular(Dimensions.height300),
                    child: Image.asset(
                        fit: BoxFit.cover, 'assets/images/default.png')),
              ),
          const SizedBox(
            width: 5,
          ),
          OutlinedButton(
            onPressed: () {
              Get.to(() => const ViewProfile());
            },
            child: const Text(
              'View Profile',
              style: TextStyle(
                  color: appPrimaryColor, fontWeight: FontWeight.w600),
            ),
          ),
          const SizedBox(
            width: 5,
          ),
        ],
      ),
    );
  }
}

class OptionsList extends StatelessWidget {
  const OptionsList({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Divider(),
        ListTile(
          title: const Text('About us'),
          textColor: Colors.black,
          leading: const Icon(
            Icons.info_rounded,
            color: appPrimaryColor,
          ),
          onTap: () {
            Get.to(() => const AboutUs());
          },
        ),
        const Divider(),
        ListTile(
          title: const Text('Rate us'),
          textColor: Colors.black,
          leading: const Icon(
            Icons.star_half_rounded,
            color: appPrimaryColor,
          ),
          onTap: () {
            Get.to(() => const Ratings());
          },
        ),
        const Divider(),
        ListTile(
          title: const Text('Delete Account'),
          textColor: Colors.black,
          leading: const Icon(
            Icons.delete_forever_rounded,
            color: appPrimaryColor,
          ),
          onTap: () {
            // Delete user's account permanently
          },
        ),
        const Divider(),
        ListTile(
          title: const Text('Log out'),
          textColor: Colors.black,
          leading: const Icon(
            Icons.logout_rounded,
            color: appPrimaryColor,
          ),
          onTap: () {
            // Logout
          },
        ),
      ],
    );
  }
}
