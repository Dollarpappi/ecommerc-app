
import 'package:flutter/material.dart';

import '../../../utils/constants/colors.dart';
import '../../../utils/constants/sizes.dart';
import '../../../utils/helpers/helpers.dart';
import '../custom_shapes/containers/rounded_container.dart';
import 'brand_card.dart';

class TBrandShowCase extends StatelessWidget {
  final List<String> images;
  
  const TBrandShowCase({
    super.key, required this.images,
  });

  @override
  Widget build(BuildContext context) {
    return TRoundedContainer(
      showBorder: true,
      borderColor: TColors.darkGrey,
      backgroundColor: Colors.transparent,
      margin: const EdgeInsets.only(bottom: TSizes.spaceBtwItems),
      padding: const EdgeInsets.all(TSizes.md),
      child: Column(
        children: [
          //BRANDS WITH PRODUCT COUNT
          const TBrandCard(showBorder: false),
    
           //Brand for 3 products images
         Padding(
           padding: const EdgeInsets.only(top: 5),
           child: Row(
              children: 
                images.map((image)=> brandTopProductImageWidget(image, context)).toList()
              
             ),
         )
        ],
      ),
    );
  }
}

Widget brandTopProductImageWidget(String image, context){
  return Expanded(
    child: TRoundedContainer(
          height: 90,
          backgroundColor: THelperFunctions.isDarkMode(context)
           ? TColors.darkerGrey : TColors.light ,   
           margin: const EdgeInsets.only(right: TSizes.sm),
          child: Image(
          image: AssetImage(image), 
          fit: BoxFit.contain,),
                ), 
                );
}