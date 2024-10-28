

import 'package:eccomm/utils/constants/image_strings.dart';
import 'package:eccomm/utils/constants/sizes.dart';
import 'package:flutter/material.dart';

import '../../../utils/constants/colors.dart';

class TSocialButton extends StatelessWidget {
  const TSocialButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          decoration: BoxDecoration(
            border: Border.all(
              color: TColors.grey,
            ),
            borderRadius: BorderRadius.circular(100)
          ),
          child: IconButton(
            onPressed: (){}, 
            icon: const Image( 
              width: 40,
              height: 30,
              //width: TSizes.iconsMd,
              //height: TSizes.iconsMd,
              image: AssetImage(
                
                TImages.google,))),
        ),
        const SizedBox(width: TSizes.spaceBtwItems,),
        
        Container(
          decoration: BoxDecoration(
            border: Border.all(
              color: TColors.grey,
            ),
            borderRadius: BorderRadius.circular(100)
          ),
          child: IconButton(
            onPressed: (){}, 
            icon: const Image( 
              width: TSizes.iconsMd,
              height: TSizes.iconsMd,
              image: AssetImage(TImages.facebook))),
        )
      ],
    );
  }
}