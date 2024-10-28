import 'package:eccomm/features/authentication/screens/sign_up/verify_email.dart';
import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';
import 'package:iconsax/iconsax.dart';

import '../../../../../utils/constants/colors.dart';
import '../../../../../utils/constants/sizes.dart';
import '../../../../../utils/constants/text_strings.dart';
import '../../../../../utils/helpers/helpers.dart';

class TSignInForm extends StatelessWidget {
  const TSignInForm({
    super.key,
  });

  

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode(context);
    return Form(
      child: Column(
        children: [
    
          //First and Last name
          Row(
            children: [
              Expanded(
                child: TextFormField(
                  expands: false,
                            decoration:   InputDecoration(
                              prefixIcon: const Icon(Iconsax.user),
                              label: Text(TTexts.firstNmae,style: Theme.of(context).textTheme.titleLarge,)
                            ),
                          ),
              ),
              const SizedBox(
                width: 6,
              ),
                Expanded(
                child: TextFormField(
                  expands: false,
                            decoration:   InputDecoration(
                              prefixIcon: const Icon(Iconsax.user),
                              label: Text(TTexts.lastName,style: Theme.of(context).textTheme.titleLarge,)
                            ),
                          ),
              ),
            ],
          ),
        const SizedBox(
                height: 8,
              ),
          // username
          TextFormField(
           expands: false,
           decoration:   InputDecoration(
           prefixIcon: const Icon(Iconsax.user_edit),
           label: Text(TTexts.username,style: Theme.of(context).textTheme.titleLarge,)
           ),
        ),
        const SizedBox(
                height: 8,
              ),
    
        //email
          TextFormField(
           decoration:   InputDecoration(
           prefixIcon: const Icon(Iconsax.direct),
           label: Text(TTexts.email,style: Theme.of(context).textTheme.titleLarge,)
           ),
        ),
        const SizedBox(
                height: 8,
              ),
    
        //phone number
          TextFormField(
           decoration:   InputDecoration(
           prefixIcon: const Icon(Iconsax.call),
           label: Text(TTexts.phoneNo,style: Theme.of(context).textTheme.titleLarge,)
           ),
        ),
        const SizedBox(
                height: 8,
              ),
        /// password
          TextFormField(
            obscureText: true,
           decoration:   InputDecoration(
           prefixIcon: const Icon(Iconsax.password_check),
           suffixIcon: const Icon(Iconsax.eye_slash),
           label: Text(TTexts.password,style: Theme.of(context).textTheme.titleLarge,)
           ),
        ),
        const SizedBox(
          height: TSizes.spaceBtwSections,
        ),
    
        // Terms and condition
        Row(
          children: [
            SizedBox(
              height: 24,
              width: 24,
              child: Checkbox(
                value: true,
                 onChanged: (value){}),
                 
            ),
            const SizedBox(
              width: TSizes.spaceBtwItems,
            ),
            Text.rich(TextSpan(
              children: [
                TextSpan(text:  "${TTexts.iagreeTo} ", style: Theme.of(context).textTheme.bodySmall),
                TextSpan(text:  "${TTexts.privacyPolicy} ", style: Theme.of(context).textTheme.bodyMedium!.apply(
                  color: dark ? TColors.white : TColors.primaryColor,
                  decoration: TextDecoration.underline,
                  decorationColor: dark ? TColors.white: TColors.primaryColor
                )),
                TextSpan(text:  "${TTexts.and} ", style: Theme.of(context).textTheme.bodySmall),
                TextSpan(text:  "${TTexts.termsOfUse} ", style: Theme.of(context).textTheme.bodyMedium!.apply(
                  color: dark ? TColors.white : TColors.primaryColor,
                  decoration: TextDecoration.underline,
                  decorationColor: dark ? TColors.white: TColors.primaryColor
               
                )),
              ]
            ))
          ],
        ),
    
        const SizedBox(
          height: TSizes.spaceBtwSections,
        ),
    
    
        ///Sign up Button
        SizedBox(
          width: double.infinity,
          child: ElevatedButton(
            onPressed: ()=> Get.to(()=> const VerifyEmailScreen()),
             child: const Text(TTexts.createAccount)),
        )
    
        ],
      ));
  }
}