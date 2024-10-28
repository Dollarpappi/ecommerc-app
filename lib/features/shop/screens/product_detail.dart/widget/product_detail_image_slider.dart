
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

import '../../../../../common/widgets/appbar/appbar.dart';
import '../../../../../common/widgets/custom_shapes/curved_widgets/curved_edges.dart';
import '../../../../../common/widgets/icons/t_circular_icon.dart';
import '../../../../../common/widgets/images/t_rounded_inages.dart';
import '../../../../../utils/constants/colors.dart';
import '../../../../../utils/constants/image_strings.dart';
import '../../../../../utils/constants/sizes.dart';
import '../../../../../utils/helpers/helpers.dart';

class TProductImageSlider extends StatelessWidget {
  const TProductImageSlider({
    super.key,
   
  });

 

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode(context);
    return TCurvedEdgesWidget(
     child: Container(
       color: dark ? TColors.darkGrey : TColors.light,
       child: Stack(
         children: [
           // Main Large Image
          const  SizedBox(
             height: 400,
             child: Padding(
               padding: EdgeInsets.all(TSizes.productImageRaduis * 1.5),
               child: Center(child: Image(
                image: AssetImage(TImages.promoBanner1))),
             )),
    
             //Image slider\
           Positioned(
             right: 40,
             left: 40,
             bottom: 25,
             child: SizedBox(
               height: 60,
               child: ListView.separated(
                 shrinkWrap: true,
                 scrollDirection: Axis.horizontal,
                 itemBuilder: (_, index)=> TRoundedImage(
                   width: 60,
                   backgroundColor: dark ? TColors.dark : TColors.white,
                   border: Border.all(color: TColors.primaryColor),
                   padding: const EdgeInsets.all(TSizes.sm),
                   imageUrl: TImages.clothIcon),
                  separatorBuilder: (_, __) => const SizedBox(width: TSizes.spaceBtwItems,), 
                  itemCount: 8,),
             ),
             
           ),
    
           // APPBAR icon
          const TAppBar(
           showBackArrow: true,
           actions: [
             TCircularIcon(
              icons: Iconsax.heart, color: Colors.red,)
           ],
          )
             
         ],
       ),
     ),
    );
  }
}