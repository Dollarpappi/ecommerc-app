
import 'package:flutter/material.dart';

import '../../../utils/constants/colors.dart';
import '../../../utils/constants/sizes.dart';
import '../../../utils/helpers/helpers.dart';

class TVerticalImageText extends StatelessWidget {
  final String image, title;
  final Color textColor;
  final Color? backgroundColor;
  final void Function()? onTap;
  const TVerticalImageText({
    super.key,
     required this.image,
      required this.title, 
      this.textColor = TColors.white,
       this.onTap, 
       this.backgroundColor = TColors.white,
  });

  @override
  Widget build(BuildContext context) {
   final dark = THelperFunctions.isDarkMode(context);
    return GestureDetector(
      onTap: onTap,
      child: Padding(
        padding: const EdgeInsets.only(right: TSizes.spaceBtwItems/1.5),
        child: Column(
          children: [
            Container(
              width: 56,
              height: 56,
              padding: const EdgeInsets.all(TSizes.sm),
              decoration: BoxDecoration(
                //the double ?? means if its null use the back other wise use the wight
                color: backgroundColor ?? (dark ? TColors.black : TColors.white),
                borderRadius: BorderRadius.circular(100),
              ),
              child: Image(
                image: AssetImage(image),
               fit: BoxFit.cover, 
              
               ),
            ),
        
            //Text
            const SizedBox(
              height: TSizes.spaceBtwItems/2,
            ),
            Text(title, style: Theme.of(context).textTheme.labelMedium!.apply(color: textColor),
            maxLines: 1,
            overflow: TextOverflow.ellipsis,)
          ],
        ),
      ),
    );
  }
}