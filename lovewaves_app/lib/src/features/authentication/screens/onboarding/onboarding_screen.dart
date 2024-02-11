import 'package:flutter/material.dart';
import 'package:lovewaves_app/src/features/authentication/screens/welcome/welcome_screen.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:get/get_state_manager/src/rx_flutter/rx_obx_widget.dart';
import 'package:liquid_swipe/liquid_swipe.dart';
import 'package:lovewaves_app/src/constants/colors.dart';
import 'package:lovewaves_app/src/features/authentication/controllers/onboarding_controller.dart';

class OnBoardingScreen extends StatelessWidget {
  const OnBoardingScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    final obController = OnBoardingController();
    return Scaffold(
      body: Stack(
        alignment: Alignment.center,
        children: [
          LiquidSwipe(
            pages: obController.pages,
            enableSideReveal: false,
            liquidController: obController.controller,
            onPageChangeCallback: obController.onPageChangedCallback,
            waveType: WaveType.circularReveal,
          ),
          Positioned(
            bottom: height * 0.07,
            child: OutlinedButton(
              onPressed: () => obController.animateToNextSlide(),
              style: ElevatedButton.styleFrom(
                side: const BorderSide(color: Colors.black26),
                shape: const CircleBorder(),
                fixedSize: Size.square(height * 0.1),
                padding: const EdgeInsets.all(20),
                foregroundColor: Colors.white,
              ),
              child: Container(
                padding: const EdgeInsets.all(20.0),
                height: height * 0.2,
                width: height * 0.2,
                decoration: const BoxDecoration(
                    color: appDarkColor, shape: BoxShape.circle),
                alignment: Alignment.center,
              ),
            ),
          ),
          Positioned(
            bottom: height * 0.09,
            left: width * 0.44,
            child: IconButton(
              onPressed: () => obController.animateToNextSlide(),
              icon: Icon(
                Icons.arrow_forward_ios,
                color: white,
                size: height * 0.03,
              ),
            ),
          ),
          Positioned(
            top: height * 0.05,
            right: width * 0.005,
            child: TextButton(
              onPressed: () {
                Navigator.of(context).pushAndRemoveUntil(
              MaterialPageRoute(
                builder: (context) => const WelcomeScreen(),
              ),
              // Predicate that always returns false
              (route) => false, 
            );
              },
              child: const Text("Skip",
                  style: TextStyle(color: Color.fromARGB(255, 65, 60, 60))),
            ),
          ),
          Obx(
            () => Positioned(
              bottom: height * 0.01,
              child: AnimatedSmoothIndicator(
                count: 3,
                activeIndex: obController.currentPage.value,
                effect: const ExpandingDotsEffect(
                  activeDotColor: Color(0xff272727),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
