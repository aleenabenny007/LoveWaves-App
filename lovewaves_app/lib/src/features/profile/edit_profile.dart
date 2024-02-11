import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lovewaves_app/src/constants/colors.dart';
import 'package:lovewaves_app/src/constants/text_strings.dart';
import 'package:lovewaves_app/src/utils/dimensions.dart';

class EditProfile extends StatelessWidget {
  const EditProfile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade100,
      appBar: AppBar(
        backgroundColor: Colors.grey.shade100,
        elevation: 0,
        titleSpacing: 0,
        leading: IconButton(
          onPressed: () {
            Get.back();
          },
          icon: const Icon(Icons.arrow_back_ios),
          color: Colors.black,
        ),
        title: Text(
          'Edit',
          style: GoogleFonts.poppins(color: Colors.black),
        ),
      ),
      body: ListView(
        physics: const BouncingScrollPhysics(),
        children: [
          CircleAvatar(
            backgroundColor: Colors.transparent,
            maxRadius: Dimensions.height130,
            child: Image.asset(
              'assets/images/img26.png',
              fit: BoxFit.cover,
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: Dimensions.width20),
            child: Column(
              children: [
                const SizedBox(
                  height: 20,
                ),
                // Name
                TextFormField(
                  decoration: InputDecoration(
                      prefixIcon: const Icon(Icons.person),
                      label: Text(
                        'Name',
                        style: GoogleFonts.poppins(),
                      ),
                      border: const OutlineInputBorder(),),
                ),
                SizedBox(
                  height: Dimensions.height10,
                ),
                //Last Period Date
                TextFormField(
                  decoration: const InputDecoration(
                    label: Text(lastPeriod),
                    hintText: 'dd/mm/yyyy',
                    prefixIcon: Icon(Icons.date_range),
                    border: OutlineInputBorder(),
                  ),
                  onTap: () {
                    // Show the date picker dialog
                    // Pick date of Last Period
                  },
                ),
                SizedBox(
                  height: Dimensions.height10,
                ),

                //Husband's Phone Number
                TextFormField(
                  keyboardType: TextInputType.phone,
                  decoration: InputDecoration(
                    prefixIcon: const Icon(Icons.phone),
                    label: Text(
                      'Husband\'s Phone Number',
                      style: GoogleFonts.poppins(),
                    ),
                    border: const OutlineInputBorder(),
                  ),
                ),
                SizedBox(
                  height: Dimensions.height10,
                ),

                SizedBox(
                  height: Dimensions.height10,
                ),

                SizedBox(
                  height: Dimensions.height20,
                ),
                //submit button
                GestureDetector(
                  onTap: () {
                    // validate edit profile form
                  },
                  child: Container(
                    margin: EdgeInsets.symmetric(
                        horizontal: Dimensions.width5,
                        vertical: Dimensions.height5),
                    padding: EdgeInsets.all(Dimensions.height20),
                    decoration: BoxDecoration(
                        color: appPrimaryColor,
                        borderRadius:
                            BorderRadius.circular(Dimensions.height12)),
                    child: Center(
                        child: Text(
                      'Submit',
                      style: GoogleFonts.poppins(
                          color: white,
                          fontWeight: FontWeight.w600,
                          fontSize: Dimensions.height18),
                    )),
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 30,
          ),
          //
        ],
      ),
    );
  }
}
