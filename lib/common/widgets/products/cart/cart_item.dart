
import 'package:eccomm/utils/helpers/helpers.dart';
import 'package:flutter/material.dart';

import '../../../../utils/constants/colors.dart';
import '../../../../utils/constants/image_strings.dart';
import '../../images/t_rounded_inages.dart';
import '../../texts/product_title_text.dart';
import '../../texts/t_brand_title_with_verification.dart';

class TCartItem extends StatelessWidget {
  const TCartItem({
    super.key,
   
  });

  

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode(context);
    return Row(
      children: [
        //--image
        TRoundedImage(
          imageUrl: TImages.clothIcon,
          height: 40,
          width: 40,
          backgroundColor: dark ? TColors.white : TColors.dark,
          ),
         const  SizedBox(width: 10,),
    
       //--Title, Price & size
        Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const TBrandTitleWithVerification(title: "Nike"),
          const Flexible(child: TProductTitleText(title: "Black Sports shoes", maxLines: 1,)),
    
          //ATTRIBUTES
          Text.rich(
            TextSpan(
              children: [
                TextSpan(
                  text: "Color: ", style: Theme.of(context).textTheme.bodySmall
                ),
                TextSpan(
                  text: "Green", style: Theme.of(context).textTheme.bodyLarge
                ),
                TextSpan(
                  text: "  Size: ", style: Theme.of(context).textTheme.bodySmall
                ),
                TextSpan(
                  text: "UK 08", style: Theme.of(context).textTheme.bodyLarge
                )
              ]
            )
          )
        ],
       )
      ],
    );
  }
}