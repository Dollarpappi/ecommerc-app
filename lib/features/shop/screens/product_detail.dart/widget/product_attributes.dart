import 'package:eccomm/common/widgets/custom_shapes/containers/rounded_container.dart';
import 'package:eccomm/common/widgets/texts/product_price_text.dart';
import 'package:eccomm/common/widgets/texts/product_title_text.dart';
import 'package:eccomm/common/widgets/texts/section_heading.dart';
import 'package:eccomm/utils/constants/colors.dart';
import 'package:eccomm/utils/constants/sizes.dart';
import 'package:eccomm/utils/helpers/helpers.dart';
import 'package:flutter/material.dart';

import '../../../../../common/widgets/chips/choice_chip.dart';

class TProductAttributes extends StatelessWidget {
  const TProductAttributes({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode(context);
    return  Column(
       children: [
        //selected attribute pricing & description
        TRoundedContainer(
          padding: const EdgeInsets.all(TSizes.md),
          backgroundColor: dark ? TColors.darkGrey : TColors.grey,
          child: Column(
            children: [
              //Title, price and stock status
              Row(
                children: [
                  const TSectionHeading(title: "Variation", showActionButton: false,),
                  const SizedBox(width: TSizes.spaceBtwItems,),
                
                   Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          const TProductTitleText(title: "price", smallSize: true,),
                          const SizedBox(width: TSizes.spaceBtwItems,),
                           //-- Actual Price
                           Text(
                            "\$25", style: Theme.of(context).textTheme.titleMedium!.apply(decoration: TextDecoration.lineThrough),
                           ),
                           const SizedBox(width: 10,),
                      
                           //sales price 
                           const TProductPriceText(price: "20")
                        ],
                      ),
                      //stock 
                      Row(
                        children: [
                          const TProductTitleText(title: "Stock : ", smallSize: true,),
                          Text("In Stock", style: Theme.of(context).textTheme.titleMedium,)
                        ],
                      )
                    ],
                  )
                ],
              ),

              //variation description
              const TProductTitleText(
                title: "this is the description of the product and it can go upto max 4 lines",
                maxLines: 4,
                smallSize: true,)
            ],
          ),
        ),

      const SizedBox(height: TSizes.spaceBtwItems,),

      //--Attributes
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
           children: [
          const  TSectionHeading(title: "Colors", showActionButton: false,),
           const SizedBox(height: TSizes.spaceBtwItems / 2,),
           // wrap widget puts it in a row and shit it to the next line en ever it reaches the limit
           Wrap(
            spacing: 6,
            children: [
            TChoiceChip(
            text: "Green",
            selected: true,
            onSelected: (value){},
           ),
            TChoiceChip(
            text: "Brown",
            selected: false,
            onSelected: (value){},
           ),
            TChoiceChip(
            text: "Pink",
            selected: false,
            onSelected: (value){},
           ),
          
           
            ],
           )
        ],
      ),
      
      const SizedBox(height: 10,),
       Column(
        crossAxisAlignment: CrossAxisAlignment.start,
           children: [
          const  TSectionHeading(title: "Size", showActionButton: false,),
           const SizedBox(height: TSizes.spaceBtwItems / 2,),
           //wrap maks the chip value horizontal 
          Wrap(
            spacing: 6,
            children: [
               TChoiceChip(
            text: "EU 20",
            selected: true,
            onSelected: (value){},
           ),
             TChoiceChip(
            text: "EU 30",
            selected: false,
            onSelected: (value){},
           ),
             TChoiceChip(
            text: "EU 40",
            selected: true,
            onSelected: (value){},
           ),
          
            ],
          )
        ],
      ),

       ],
    );
  }
}