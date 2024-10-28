
import 'package:eccomm/features/authentication/controllers_onboarding.dart/onboarding_controller.dart';
import 'package:eccomm/utils/constants/colors.dart';
import 'package:eccomm/utils/constants/sizes.dart';
import 'package:eccomm/utils/device/device_utility.dart';
import 'package:eccomm/utils/helpers/helpers.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class OnboardingDotNavifation extends StatelessWidget {
  const OnboardingDotNavifation({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final controller = OnBoardingController.instance;
    final dark = THelperFunctions.isDarkMode(context);
    return Positioned(
      bottom: TDeviceUtils.getBottomNavigationBarHeight() + 25,
      left: TSizes.defaultSpace,
      child: SmoothPageIndicator(

        effect: ExpandingDotsEffect(
          activeDotColor: dark ? TColors.light : TColors.dark,
          dotHeight: 8,
        ),
        controller: controller.pageController,
        onDotClicked: controller.dotNavigationClick, 
        count: 3)
      );
  }
}

