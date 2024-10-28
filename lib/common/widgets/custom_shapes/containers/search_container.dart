

import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

import '../../../../utils/constants/colors.dart';
import '../../../../utils/constants/sizes.dart';
import '../../../../utils/device/device_utility.dart';
import '../../../../utils/helpers/helpers.dart';

class TSearchContainer extends StatelessWidget {
  final String text;
  final IconData? icon;
  final bool showBackground, showBorder;
  final VoidCallback? onTap;
  final EdgeInsetsGeometry padding;

  const TSearchContainer({
    super.key,
     required this.text,
      this.icon,
      this.showBackground = true, 
     this.showBorder = true, 
     this.onTap, 
     this.padding = const EdgeInsets.symmetric(horizontal:TSizes.defaultSpace ),
  });

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode(context);
    return GestureDetector(
      onTap: onTap,
      child: Padding(
        padding: padding,
        child: Container(
          width: TDeviceUtils.getScreenWidth(context),
          padding:const  EdgeInsets.all(TSizes.md),
          decoration: BoxDecoration(
            color: showBackground ? dark ?TColors.dark : TColors.light :Colors.transparent,
            borderRadius: BorderRadius.circular(TSizes.cardRadiusLg),
            border: showBorder ? Border.all(color:dark ?TColors.darkGrey :TColors.grey) : null
          ),
          child: Row(
            children: [
              const Icon(Iconsax.search_normal, color: TColors.darkerGrey,),
              const SizedBox(
                width: TSizes.spaceBtwItems,
              ),
              Text(text, style: Theme.of(context).textTheme.bodySmall,)
      
            ],
          ),
        ),
      ),
    );
  }
}
