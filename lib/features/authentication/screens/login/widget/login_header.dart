
import 'package:flutter/material.dart';

import '../../../../../utils/constants/image_strings.dart';
import '../../../../../utils/constants/text_strings.dart';
import '../../../../../utils/helpers/helpers.dart';

class TLoginHeader extends StatelessWidget {
  const TLoginHeader({
    super.key,
    
  });

 

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode(context);
    
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        //logo, title, and sub title
        Image(
          height: 130,
          image: AssetImage(dark ? TImages.lightAppLogo: TImages.darkAppLogo)
          ),
          
      Text(TTexts.loginTitle, style: Theme.of(context).textTheme.headlineMedium,),
      Text(TTexts.loginSubTitle, style: Theme.of(context).textTheme.headlineSmall,)
              
      ],
    );
  }
}