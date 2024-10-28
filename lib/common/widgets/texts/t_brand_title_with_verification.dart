
import 'package:eccomm/common/widgets/texts/t_brand_title_text.dart';
import 'package:eccomm/utils/constants/colors.dart';
import 'package:eccomm/utils/constants/enums.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

import '../../../utils/constants/sizes.dart';

class TBrandTitleWithVerification extends StatelessWidget {
  final String title;
  final int maxLines;
  final Color? textColor, iconColor;
  final TextSizes brandTextSizes;
  final TextAlign textAlign;

  const TBrandTitleWithVerification({
    super.key, required this.title, 
  this.maxLines = 1,
     this.textColor, 
     this.iconColor = TColors.primaryColor , 
    this.brandTextSizes = TextSizes.small,
     this.textAlign = TextAlign.center, 
      
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        Flexible(
          child: TBrandTitleText(
            title: title,
            color: textColor,
            maxLines: maxLines,
            textAlign: textAlign,
            brandTextSizes: brandTextSizes,
            ),
        ),
       const   SizedBox(
          width: TSizes.xs,
         ),
         Icon(Iconsax.verify5, color: iconColor, size: TSizes.iconsXs,)
      ],
    );
  }
}

