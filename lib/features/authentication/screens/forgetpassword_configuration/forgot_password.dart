import 'package:eccomm/features/authentication/screens/forgetpassword_configuration/reset_password_screen.dart';
import 'package:eccomm/utils/constants/sizes.dart';
import 'package:eccomm/utils/constants/text_strings.dart';
import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';
import 'package:iconsax/iconsax.dart';

class ForgotPassword extends StatelessWidget {
  const ForgotPassword({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: const EdgeInsets.all(TSizes.defaultSpace),
        child: Column(
          children: [
            ///Headings
            
         Text(TTexts.forgetPassword, style: Theme.of(context).textTheme.headlineMedium,),
          const SizedBox(
            height: TSizes.spaceBtwItems,
          ),
           Text(TTexts.forgetPasswordSubTitle, style: Theme.of(context).textTheme.labelMedium,),
         const SizedBox(
            height: TSizes.spaceBtwSections *2,
          ),
          //TEXT FIELD
          TextFormField(
            decoration:   InputDecoration(
              prefixIcon: const Icon(Iconsax.direct_right),
              label: Text(TTexts.email,style: Theme.of(context).textTheme.titleLarge,)
            ),
          ),
          const SizedBox(
            height: TSizes.spaceBtwSections ,
          ),
          //SUBMIT BUTTON
          SizedBox(
            width: double.infinity,
            child: ElevatedButton(
              onPressed: ()=> Get.off(()=> const ResetPassword()), 
              child: const Text(TTexts.submite)),
          ) ],
        ),),
    );
  }
}