import 'package:eccomm/common/styles/spacing_styles.dart';
import 'package:eccomm/features/authentication/screens/login/widget/login_form.dart';
import 'package:eccomm/common/widgets/widgets_login/login_form_divider.dart';
import 'package:eccomm/features/authentication/screens/login/widget/login_header.dart';
import 'package:eccomm/common/widgets/widgets_login/social_button.dart';
import 'package:eccomm/utils/constants/text_strings.dart';

import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../utils/constants/sizes.dart';

class LoginScreens extends StatelessWidget {
  const LoginScreens({super.key});

  @override
  Widget build(BuildContext context) {
   
    return  Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding:TSpacingStyle.paddingWithAppBarHeight,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              /// Logo, Title and SubTiltle
              const TLoginHeader(),


              ///Form
              const TLoginForm(),


            //Divider
            TFormDivider(dividerText: TTexts.orSignInWith.capitalize!,),
           const  SizedBox(
              height: TSizes.spaceBtwSections,
            ),

            //Footer 
            const TSocialButton()
            ],
          ),

          
        )
      ),
    );
  }
}

