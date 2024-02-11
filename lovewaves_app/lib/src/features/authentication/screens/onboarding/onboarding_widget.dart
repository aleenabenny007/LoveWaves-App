import 'package:flutter/material.dart';
import 'package:lovewaves_app/src/constants/sizes.dart';
import 'package:lovewaves_app/src/features/authentication/models/model_onboarding.dart';

class OnBoardingPageWidget extends StatelessWidget {
  const OnBoardingPageWidget({
    Key? key,
    required this.model,
  }) : super(key: key);

  final OnBoardingModel model;

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Container(
      padding: const EdgeInsets.all(defaultSize),
      color: model.bgColor,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          const SizedBox(height: 80,),
          Expanded(
            flex: 4,
            child: Image(
              image: AssetImage(model.image),
              height: size.height * 0.45,
            ),
          ),
          const SizedBox(height: 20,),
          Text(
            model.title,
            textAlign: TextAlign.center,
            style: Theme.of(context).textTheme.headlineMedium,
          ),
          Text(
            model.subTitle,
            textAlign: TextAlign.center,
            style: Theme.of(context).textTheme.bodyLarge,
          ),
          const SizedBox(height: 20,),
          Expanded(
            child: Text(
              model.counterText,
            ),
          ),
          const Expanded(
            child: SizedBox(
              height: 80.0,
            ),
          )
        ],
      ),
    );
  }
}
