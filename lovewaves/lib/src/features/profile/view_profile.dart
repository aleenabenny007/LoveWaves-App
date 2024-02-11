import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sample_application_flutter/src/constants/colors.dart';
import 'package:sample_application_flutter/src/features/profile/edit_profile.dart';
import 'package:sample_application_flutter/src/utils/dimensions.dart';

class ViewProfile extends StatelessWidget {
  const ViewProfile({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.grey[200],
      child: SafeArea(
        child: ListView(physics: const BouncingScrollPhysics(), children: [
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Column(children: [
              Stack(
            children: [
              //rounded image view container
              SizedBox(
                height: Dimensions.height190,
                width: Dimensions.width170,
                child: ClipRRect(
                    borderRadius: BorderRadius.circular(Dimensions.height300),
                    child: Image.asset(
                        fit: BoxFit.cover, 'assets/images/default.png')),
              ),

              Positioned(
                  bottom: 0,
                  right: -20,
                  child: RawMaterialButton(
                    onPressed: () {
                      // Function to add Profile Image
                    },
                    elevation: 2.0,
                    fillColor: const Color(0xFFF5F6F9),
                    padding: const EdgeInsets.all(10.0),
                    shape: const CircleBorder(),
                    child: const Icon(
                      Icons.camera_alt_outlined,
                      color: Colors.black,
                    ),
                  )),
            ],
          ),
              
              SizedBox(
                height: Dimensions.height10,
              ),
              Text(
                'Name of User',
                style: TextStyle(
                  fontSize: Dimensions.height30,
                  fontWeight: FontWeight.w700,
                  color: black,
                ),
              ),
              Text('Email ID of the user',
                  style: TextStyle(
                    fontSize: Dimensions.height22,
                    fontWeight: FontWeight.w400,
                    color: black,
                  )),
              SizedBox(
                height: Dimensions.height20,
              ),
              SizedBox(
                height: Dimensions.height20,
              ),
              card(
                  title: 'Last Period Date',
                  content: 'dd/mm/yyyy',
                  cardicon: const Icon(Icons.date_range)),
              card(
                  title: 'Pregnancy ',
                  content: 'x weeks x days',
                  cardicon: const Icon(Icons.child_care)),
              card(
                  title: 'Husband\'s Phone No.',
                  content: '1234567890',
                  cardicon: const Icon(Icons.phone)),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  TextButton.icon(
                      onPressed: () {
                        Get.to(() => const EditProfile());
                      },
                      icon: Icon(
                        Icons.edit,
                        size: Dimensions.height18,
                        color: black,
                      ),
                      label: Text(
                        'Edit',
                        style: TextStyle(
                            color: black,
                            fontSize: Dimensions.height14,
                            fontWeight: FontWeight.w500),
                      )),
                  const SizedBox(
                    width: 20,
                  ),
                ],
              ),
            ]),
          ),
        ]),
      ),
    );
  }

  Card card({String? title, String? content, Icon? cardicon}) {
    return Card(
      color: const Color.fromARGB(255, 244, 245, 245),
      elevation: Dimensions.height1,
      margin: EdgeInsets.symmetric(
          horizontal: Dimensions.width14, vertical: Dimensions.height10),
      child: Padding(
          padding: EdgeInsets.all(Dimensions.height10),
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            Text(title!,
                style:
                    const TextStyle(color: Color.fromARGB(255, 126, 124, 124))),
            SizedBox(height: Dimensions.height5),
            Row(children: [
              cardicon!,
              SizedBox(width: Dimensions.width5),
              Text(content!, style: const TextStyle()),
            ]),
          ])),
    );
  }
}
