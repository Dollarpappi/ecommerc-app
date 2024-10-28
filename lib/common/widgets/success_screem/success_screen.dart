import 'package:eccomm/common/styles/spacing_styles.dart';
import 'package:flutter/material.dart';
import '../../../utils/constants/sizes.dart';
import '../../../utils/constants/text_strings.dart';
import '../../../utils/helpers/helpers.dart';

class SuccessScreen extends StatelessWidget {
  final String image, title, subTitle;
  final VoidCallback onPressed;
  
  const SuccessScreen({super.key, required this.image, required this.title, required this.subTitle, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: TSpacingStyle.paddingWithAppBarHeight * 2,
          child: Column(
            children: [
              
          //Image
         Image(
          width: THelperFunctions.screenWidth() *0.6,
          image:  AssetImage(
            image
          ),),
          const SizedBox(
            height: TSizes.spaceBtwItems,
          ),

          //TItle and Subtitle

         Text(title, style: Theme.of(context).textTheme.headlineMedium, textAlign: TextAlign.center,),
          const SizedBox(
            height: TSizes.spaceBtwItems,
          ),
           Text(subTitle, style: Theme.of(context).textTheme.labelSmall, textAlign: TextAlign.center,),
         
           const SizedBox(
            height: TSizes.spaceBtwSections,
          ),
          //Button

          SizedBox(
            width: double.infinity,
            child: ElevatedButton(
              onPressed: onPressed, 
              child: const Text(TTexts.tContinue)),
          ),
            ],
          ),),
          
      ),
    );
  }
}