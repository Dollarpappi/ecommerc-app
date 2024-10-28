import 'package:eccomm/features/authentication/controllers_onboarding.dart/onboarding_controller.dart';
import 'package:eccomm/utils/constants/sizes.dart';
import 'package:eccomm/utils/device/device_utility.dart';
import 'package:flutter/material.dart';

class SkipButton extends StatelessWidget {
  const SkipButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: TDeviceUtils.getAppBarHeight(),
      right: TSizes.defaultSpace,
      child: TextButton(
        onPressed:()=> OnBoardingController.instance.skipPage(),
        child: const Text("Skip"),
        ),
        );
  }
}