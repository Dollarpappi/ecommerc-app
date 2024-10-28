import 'package:eccomm/common/widgets/images/t_circular_image.dart';
import 'package:eccomm/common/widgets/texts/product_price_text.dart';
import 'package:eccomm/common/widgets/texts/product_title_text.dart';
import 'package:eccomm/common/widgets/texts/t_brand_title_with_verification.dart';
import 'package:eccomm/utils/constants/enums.dart';
import 'package:eccomm/utils/constants/image_strings.dart';
import 'package:flutter/material.dart';

import '../../../../../common/widgets/custom_shapes/containers/rounded_container.dart';
import '../../../../../utils/constants/colors.dart';
import '../../../../../utils/constants/sizes.dart';

class TProductMetaData extends StatelessWidget {
  const TProductMetaData({super.key});

  @override
  Widget build(BuildContext context) {
    
    return  Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        //price & sale price
        Row(
          children: [
            //sale tag
             TRoundedContainer(
                      radius: TSizes.sm,
                      backgroundColor: TColors.secondary.withOpacity(0.8),
                      padding:const  EdgeInsets.symmetric(horizontal: TSizes.sm, vertical: TSizes.xs),
                      child: Text("25%",style: Theme.of(context).textTheme.labelLarge!.apply(color: TColors.black)),
                    ),
                    const SizedBox(width: TSizes.spaceBtwItems,),

                    //price
                    Text("\$250", style: Theme.of(context).textTheme.titleMedium!.apply(decoration: TextDecoration.lineThrough),),
                    const SizedBox(width: TSizes.spaceBtwItems,),
                    const TProductPriceText(price: "175", isLarge: true,),
          ],
        ),
        const SizedBox(height: TSizes.spaceBtwItems,),

        //Tile
       const  TProductTitleText(
          title: "Green Nike Sports Shirt"
          ),
          const SizedBox(height: TSizes.spaceBtwItems / 1.5,),

          //Stock status
          Row(
            children: [
              const  TProductTitleText(
              title: "Status"
              ),
              const SizedBox(width: TSizes.spaceBtwItems,),
              Text("In Stock", style: Theme.of(context).textTheme.titleMedium,)
            ],
          ),
          const SizedBox(height: TSizes.spaceBtwItems / 1.5,),

          //Brand
          const Row(
            children: [
              TCircularImage(
                width: 32,
                height: 32, image: TImages.clothIcon1),
              TBrandTitleWithVerification(title: "Nike", brandTextSizes: TextSizes.meduim,),
            ],
          )
      ],
    );
  }
}