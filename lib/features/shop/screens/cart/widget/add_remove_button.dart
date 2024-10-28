
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

import '../../../../../common/widgets/icons/t_circular_icon.dart';
import '../../../../../utils/constants/colors.dart';
import '../../../../../utils/constants/sizes.dart';
import '../../../../../utils/helpers/helpers.dart';

class TProductQuantiyWithAddRemoveButton extends StatelessWidget {
  const TProductQuantiyWithAddRemoveButton({
    super.key,
  
  });



  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode(context);
    return Row(
      children: [
        TCircularIcon(
          icons: Iconsax.minus,
          width: 32,
          height: 32,
          size: TSizes.md,
          color: dark ?TColors.white : TColors.black,
          backgroundColor: dark ? TColors.darkerGrey : TColors.light,
          ),
      
    
    
    const SizedBox(
    width: TSizes.spaceBtwItems,
    ),
    Text("2", style: Theme.of(context).textTheme.titleSmall,),
    const SizedBox(width: TSizes.spaceBtwItems,),
    
                     const  TCircularIcon(
      icons: Iconsax.add,
      width: 32,
      height: 32,
      size: TSizes.md,
      color:  TColors.white ,
      backgroundColor:  TColors.primaryColor,)
                   
                 ], );
  }
}
