import 'package:eccomm/common/widgets/success_screem/success_screen.dart';
import 'package:eccomm/features/authentication/screens/login/login.dart';
import 'package:eccomm/utils/constants/image_strings.dart';
import 'package:eccomm/utils/constants/sizes.dart';
import 'package:eccomm/utils/constants/text_strings.dart';
import 'package:eccomm/utils/helpers/helpers.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';

class VerifyEmailScreen extends StatelessWidget {
  const VerifyEmailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(
            onPressed: ()=> Get.offAll(()=> const LoginScreens()),
             icon: const Icon(CupertinoIcons.clear))
        ],
      ),
      body:  SingleChildScrollView(
        //padding to give default equal space on all sides in all screens
      child: Column(
        children: [
          //Image
         Image(
          width: THelperFunctions.screenWidth() *0.6,
          image: const AssetImage(
            TImages.deliveredEmailIllustration
          ),),
          const SizedBox(
            height: TSizes.spaceBtwItems,
          ),

          //TItle and Subtitle

         Text(TTexts.confirmEmail, style: Theme.of(context).textTheme.headlineMedium, textAlign: TextAlign.center,),
          const SizedBox(
            height: TSizes.spaceBtwItems,
          ),
          Text("support@codeingwithcarl.com", style: Theme.of(context).textTheme.labelLarge, textAlign: TextAlign.center,),
         const SizedBox(
            height: TSizes.spaceBtwItems,
          ),
          Text(TTexts.confirmEmailSubTitle, style: Theme.of(context).textTheme.labelMedium, textAlign: TextAlign.center,),
          const SizedBox(
            height: TSizes.spaceBtwSections,
          ),
          //Button

          SizedBox(
            width: double.infinity,
            child: ElevatedButton(
              onPressed: ()=> Get.to(()=>  SuccessScreen(
                title: TTexts.yourAccountCreatedTitle,
                 onPressed:  () => Get.to(const LoginScreens()), 
                 image: TImages.staticSuccessIllustration, 
                 subTitle: TTexts.yourAccountCreatedSubTitle,)), 
              child: const Text(TTexts.tContinue)),
          ),
          SizedBox(
            width: double.infinity,
            child: TextButton(
              onPressed: (){}, 
              child: const Text(TTexts.resendEmail)),
          )
        ],
      ),
      ),
    );
  }
}