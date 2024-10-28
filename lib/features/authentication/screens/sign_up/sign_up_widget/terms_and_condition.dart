
import 'package:flutter/material.dart';

import '../../../../../utils/constants/colors.dart';
import '../../../../../utils/constants/sizes.dart';
import '../../../../../utils/constants/text_strings.dart';
import '../../../../../utils/helpers/helpers.dart';

class SigninTerms extends StatelessWidget {
  const SigninTerms({
    super.key,
  });


  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode(context);
    return Row(
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
    );
  }
}