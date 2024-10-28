import 'package:eccomm/features/authentication/screens/sign_up/sign_up_widget/singin_form.dart';

import 'package:eccomm/utils/constants/sizes.dart';
import 'package:eccomm/utils/constants/text_strings.dart';
import 'package:flutter/material.dart';
import 'package:get/get_utils/get_utils.dart';
import '../../../../common/widgets/widgets_login/login_form_divider.dart';
import '../../../../common/widgets/widgets_login/social_button.dart';

class SignUp extends StatelessWidget {
  const SignUp({super.key});

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(TSizes.defaultSpace),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
            
              ///title
              Text(TTexts.signUpTitle, style: Theme.of(context).textTheme.headlineMedium,),
              const SizedBox(height: TSizes.spaceBtwSections,),

              //form
              const TSignInForm(),
               const  SizedBox(
                  height: TSizes.spaceBtwSections,
                ),

                //formdivider
                TFormDivider(dividerText: TTexts.orSignInWith.capitalize!,),
               const  SizedBox(
                  height: 13,
                ),
               // social Button
               const TSocialButton()

              
            ],
          ),),
      ),
    );
  }
}
