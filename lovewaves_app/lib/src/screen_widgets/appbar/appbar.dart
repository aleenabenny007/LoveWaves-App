import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lovewaves_app/src/constants/colors.dart';
import 'package:lovewaves_app/src/constants/image_strings.dart';
import 'package:lovewaves_app/src/constants/text_strings.dart';
import 'package:lovewaves_app/src/features/profile/user_profile.dart';

class HomeScreenAppBar extends StatelessWidget implements PreferredSizeWidget {
  const HomeScreenAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: appPrimaryColor,
      leading:  Ink(
          decoration:  BoxDecoration(
            border: Border.all(
              color: Colors.black,
              width: 1.0,
            ),
            shape: BoxShape.circle,
            image: const DecorationImage(
              image: AssetImage(profileImage),
              fit: BoxFit.cover,
            ),
          ),
          width: 40.0,
          height: 40.0,
          child: IconButton(
            icon: const Icon(null),
            color: Colors.white, 
            onPressed: () {
              // Implement the button logic
              Get.to(() => const UserProfile());
            },
          ),
        ),
      title: const Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children:[
                Text(welcomeTitleLeading,
                    style: TextStyle(color: black,fontSize: 24, fontWeight: FontWeight.bold,),),
                     Text(welcomeTitleTrailing,
                    style: TextStyle(color: white,fontSize: 24, fontWeight: FontWeight.bold,),),
               ], ),
      
    );
  }

  @override
  // TODO: implement preferredSize
  Size get preferredSize => const Size.fromHeight(40);
}
