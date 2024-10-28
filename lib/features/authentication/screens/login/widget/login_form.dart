
import 'package:eccomm/features/authentication/screens/forgetpassword_configuration/forgot_password.dart';
import 'package:eccomm/features/authentication/screens/sign_up/signup.dart';
import 'package:eccomm/navigation_menu.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import '../../../../../utils/constants/sizes.dart';
import '../../../../../utils/constants/text_strings.dart';

class TLoginForm extends StatelessWidget {
  const TLoginForm({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Form(
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: TSizes.spaceBtwSections),
        child: Column(
        children: [
          //email
          TextFormField(
            decoration:   InputDecoration(
              prefixIcon: const Icon(Iconsax.direct_right),
              label: Text(TTexts.email,style: Theme.of(context).textTheme.titleLarge,)
            ),
          ),
          const SizedBox(
            height: TSizes.spaceBtwInputField,
          ),
           TextFormField(
            decoration:   InputDecoration(
              prefixIcon: const Icon(Iconsax.password_check),
              label: Text(TTexts.password, style: Theme.of(context).textTheme.titleLarge,),
              suffixIcon: const  Icon(Iconsax.eye_slash, )
            ),
            ),
             const SizedBox(
            height: TSizes.spaceBtwInputField/2,
          ),
        
          //REmember me & forgot password
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              //remember me
              Row(
                children: [
                  Checkbox(
                    value: true,
                     onChanged: (value){})
                ],
              ),
        
              //forget password
              TextButton(
                onPressed: ()=> Get.to(()=>const  ForgotPassword()), 
                child: const Text(TTexts.forgetPassword)),
            ],
          ),
           const SizedBox(
            height: TSizes.spaceBtwSections,
          ),
        
          //Sign In Button
          SizedBox(
            width: double.infinity,
            child: ElevatedButton(
              onPressed: ()=>Get.to(()=> const NavigationMenu()), 
              child: const Text(TTexts.singIn)),
          ),
          const SizedBox(
            height: TSizes.spaceBtwItems,
          ),
        
          //create action button
            SizedBox(
            width: double.infinity,
            child: ElevatedButton(
              onPressed: ()=> Get.to(const SignUp()), 
              child: const Text(TTexts.createAccount)),
          )
        ],
     ),
      ),
                );
  }
}
