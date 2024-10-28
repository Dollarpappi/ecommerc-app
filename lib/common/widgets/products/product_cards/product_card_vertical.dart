import 'package:eccomm/common/styles/shadows.dart';
import 'package:eccomm/common/widgets/custom_shapes/containers/rounded_container.dart';
import 'package:eccomm/common/widgets/images/t_rounded_inages.dart';
import 'package:eccomm/common/widgets/texts/t_brand_title_with_verification.dart';
import 'package:eccomm/features/shop/screens/product_detail.dart/cproduct_details.dart';
import 'package:eccomm/utils/constants/colors.dart';
import 'package:eccomm/utils/constants/image_strings.dart';
import 'package:eccomm/utils/constants/sizes.dart';
import 'package:eccomm/utils/helpers/helpers.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

import '../../icons/t_circular_icon.dart';
import '../../texts/product_price_text.dart';
import '../../texts/product_title_text.dart';

class TProductCardVertical extends StatelessWidget {
  const TProductCardVertical({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode(context);
    // container with side padding, color, widget, and shadow
    return GestureDetector(
     onTap: ()=> Get.to(()=> const CProductDetails()),
      child: Container(
        width: 180,
        padding: const EdgeInsets.all(1),
        decoration: BoxDecoration(
          boxShadow: [TShadowStyle.verticalProductShadow],
          borderRadius: BorderRadius.circular(TSizes.productImageRaduis),
          color: dark ? TColors.darkerGrey : TColors.white,
        ),
        child: Column(
          children: [
            //thumnail, wishlist button, discount tag
      
            TRoundedContainer(
              height: 150,
              padding: const EdgeInsets.all(TSizes.sm),
              backgroundColor: dark? TColors.dark : TColors.light,
              child: Stack(
                children: [
                  //Thumbnail images
                  const TRoundedImage(
                    height: 160,
                    imageUrl: TImages.productImage1, applyImageRadius: true,fit: BoxFit.cover,),
      
                  //sale tag
                  Positioned(
                    top: 12,
                    child: TRoundedContainer(
                      radius: TSizes.sm,
                      backgroundColor: TColors.secondary.withOpacity(0.8),
                      padding:const  EdgeInsets.symmetric(horizontal: TSizes.sm, vertical: TSizes.xs),
                      child: Text("25%",style: Theme.of(context).textTheme.labelLarge!.apply(color: TColors.black)),
                    ),
                  ),
      
                  //Favorite icon button
                    const Positioned(
                    top: 0,
                    right: 0,
                    child: TCircularIcon(icons: Iconsax.heart5,color: Colors.red,))
                ],
              ),
            ),
            const SizedBox(
              height: TSizes.spaceBtwItems/2.5,
            ),
            //Details
            const Padding(
              padding: EdgeInsets.only(left: 8),
              child: Row(
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                    
                      TProductTitleText(
                        title: "Green Nike Air Shoe",
                        smallSize: true,
                      ),
                       SizedBox(
                    height: TSizes.spaceBtwItems/2,
                  ),
                  TBrandTitleWithVerification(
                    title: "Nike")
                        
                    ],
                  ),
                ],
              ),
            ),
           
            //spacer will cause problem be weary used only in grid
           const  Spacer(),
           Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              //price
              const TProductPriceText(
                price: "35.90",
                isLarge: true,
              ),
           Container(
      decoration: const BoxDecoration(
        color: TColors.dark,
        borderRadius: BorderRadius.only(
      topLeft: Radius.circular(TSizes.cardRadiusMd),
      bottomRight: Radius.circular(TSizes.productImageRaduis),
        )
      ),
      child: const SizedBox(
        width: TSizes.iconsLg*1.2,
        height: TSizes.iconsLg*1.2,
        child: Center(child: Icon(Iconsax.add, color: TColors.white,))),
           )
           ],
           )
          ],
        ),
      ),
    );
  }
}