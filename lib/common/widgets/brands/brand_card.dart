
import 'package:flutter/material.dart';

import '../custom_shapes/containers/rounded_container.dart';
import '../images/t_circular_image.dart';
import '../texts/t_brand_title_with_verification.dart';
import '../../../utils/constants/colors.dart';
import '../../../utils/constants/enums.dart';
import '../../../utils/constants/image_strings.dart';
import '../../../utils/constants/sizes.dart';
import '../../../utils/helpers/helpers.dart';

class TBrandCard extends StatelessWidget {
  final bool showBorder;
  final void Function()? onTap;

  const TBrandCard({
    super.key, 
    required this.showBorder,
     this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    final isDark = THelperFunctions.isDarkMode(context);
    return GestureDetector(
           onTap: onTap,
           //container design
           child: TRoundedContainer(
             padding: const EdgeInsets.only(top:TSizes.sm),
             showBorder: showBorder,
             backgroundColor: Colors.transparent,
             child: Row(
               children: [
                 //icon
                 //flexible is going to take the neccessary space for the image to appear
                 Flexible(
                   child: TCircularImage(
                     image: TImages.clothIcon1,
                     isNetworkImage: false,
                     backgroundColor: Colors.transparent,
                     overlayColor: isDark ? TColors.white :TColors.black,
                     ),
                 ),
                   const SizedBox(
                     width: 5,
                   ),
           
                   //text
                   //expanded is going to take the maximum space it can take
                    Expanded(
                      child: Column(
                       //the column will take only the minimum space
                       mainAxisSize: MainAxisSize.min,
                       crossAxisAlignment: CrossAxisAlignment.start,
                       children: [
                       const   TBrandTitleWithVerification(
                           title: "Nike",
                           brandTextSizes: TextSizes.large,),
                           Text(
                             "250 products",
                             style: Theme.of(context).textTheme.labelLarge,
                             overflow: TextOverflow.ellipsis,
                           )
                       ],
                                                    ),
                    )
               ],
             ),
           ),
         );
  }
}
