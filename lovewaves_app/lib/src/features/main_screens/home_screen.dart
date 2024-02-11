import 'package:flutter/material.dart';
import 'package:lovewaves_app/src/constants/colors.dart';
import 'package:lovewaves_app/src/constants/image_strings.dart';
import 'package:lovewaves_app/src/constants/text_strings.dart';
import 'package:lovewaves_app/src/screen_widgets/appbar/appbar.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;

    return Scaffold(
      appBar: const HomeScreenAppBar(),
      body: ListView(
        children: [
          //to give some space from above
          Container(
            width: width,
            height: height * 0.02,
            color: appPrimaryColor,
          ),
          Container(
            width: width,
            height: height * 0.4,
            color: white,
            child: Stack(
              // to arrange each widget over another to get the layout
              children: [
                Column(
                  children: [
                    Container(
                      width: width,
                      height: height * 0.18,
                      color: appPrimaryColor,
                    ),
                    Container(
                      width: width,
                      height: height * 0.22,
                      color: white,
                    ),
                  ],
                ),
                // baby background circle
                Positioned(
                  top: height * 0.003,
                  left: width * 0.0001,
                  child: Container(
                    width: width * 0.7,
                    height: width * 0.7,
                    decoration: const BoxDecoration(
                      color: lightGrey,
                      shape: BoxShape.circle,
                    ),
                  ),
                ),
                // baby comparison background circle
                Positioned(
                  top: height * 0.24,
                  left: width * 0.622,
                  child: Container(
                    width: width * 0.27,
                    height: width * 0.27,
                    decoration: const BoxDecoration(
                      color: lightGrey,
                      shape: BoxShape.circle,
                    ),
                  ),
                ),
                // container box below
                Positioned(
                  top: height * 0.18,
                  child: Container(
                    width: width,
                    height: height * 0.22,
                    color: lightPink,
                  ),
                ),
                // baby image circle
                Positioned(
                  top: height * 0.039,
                  left: width * 0.075,
                  child: Container(
                    width: width * 0.55,
                    height: width * 0.55,
                    decoration: const BoxDecoration(
                        color: white,
                        shape: BoxShape.circle,
                        image: DecorationImage(
                          image: AssetImage(thisWeekBabyImage),
                          fit: BoxFit.cover,
                        )),
                  ),
                ),
                // baby comparison image circle
                Positioned(
                  top: height * 0.263,
                  left: width * 0.667,
                  child: Container(
                    width: width * 0.18,
                    height: width * 0.18,
                    decoration: const BoxDecoration(
                      color: white,
                      shape: BoxShape.circle,
                      image: DecorationImage(
                          image: AssetImage(thisWeekCompareImage),
                          fit: BoxFit.cover,
                        ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Stack(
            children: [
              Container(
                width: width,
                height: height * 0.082,
                color: white,
              ),
              // week displaying widget
              Positioned(
                left: width * 0.27,
                child: Container(
                  width: width * 0.45,
                  height: height * 0.08,
                  decoration: const BoxDecoration(
                      color: appPrimaryColor,
                      borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(35),
                          bottomRight: Radius.circular(35))),
                          child: const Column(
                            children: [
                              Text(thisWeekText,style: TextStyle(fontSize: 24,fontWeight: FontWeight.bold),),
                              Text(thisWeekDayText,style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold),),
                            ],
                          ),
                ),
              ),
              // circles on both sides
              Positioned(
                top: height * 0.01,
                left: width * 0.08,
                child: Container(
                  width: width * 0.13,
                  height: width * 0.13,
                  decoration: const BoxDecoration(
                    color: lightGrey,
                    shape: BoxShape.circle,
                  ),
                ),
              ),
              Positioned(
                top: height * 0.01,
                right: width * 0.08,
                child: Container(
                  width: width * 0.13,
                  height: width * 0.13,
                  decoration: const BoxDecoration(
                    color: lightGrey,
                    shape: BoxShape.circle,
                  ),
                ),
              ),
            ],
          ),

          //... content starts here...

          Padding(
            padding: const EdgeInsets.all(15.0),
            child: Container(
              // outer container
              width: width,
              decoration: const BoxDecoration(
                color: lightGrey,
                borderRadius: BorderRadius.all(
                  Radius.circular(20.0),
                ),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  // following are data containers
                  Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: Container(
                      height: height * 0.2,
                      padding: const EdgeInsets.all(15.0),
                      decoration: const BoxDecoration(
                        color: white,
                         image: DecorationImage(
                          image: AssetImage(dataImage1),
                          fit: BoxFit.cover,
                        ),
                        borderRadius: BorderRadius.all(
                          Radius.circular(15.0),
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: Container(
                      // width: width * 0.85,
                      height: height * 0.2,
                      padding: const EdgeInsets.all(15.0),
                      decoration: const BoxDecoration(
                        color: white,
                         image: DecorationImage(
                          image: AssetImage(dataImage2),
                          fit: BoxFit.cover,
                        ),
                        borderRadius: BorderRadius.all(
                          Radius.circular(15.0),
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: Container(
                      // width: width * 0.85,
                      height: height * 0.2,
                      padding: const EdgeInsets.all(15.0),
                      decoration: const BoxDecoration(
                        color: white,
                         image: DecorationImage(
                          image: AssetImage(dataImage1),
                          fit: BoxFit.cover,
                        ),
                        borderRadius: BorderRadius.all(
                          Radius.circular(15.0),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
