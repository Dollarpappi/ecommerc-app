import 'package:eccomm/common/widgets/custom_shapes/containers/rounded_container.dart';
import 'package:eccomm/common/widgets/icons/t_circular_icon.dart';
import 'package:eccomm/common/widgets/images/t_rounded_inages.dart';
import 'package:eccomm/common/widgets/texts/product_price_text.dart';
import 'package:eccomm/common/widgets/texts/product_title_text.dart';
import 'package:eccomm/common/widgets/texts/t_brand_title_with_verification.dart';
import 'package:eccomm/utils/constants/image_strings.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

import '../../../../utils/constants/colors.dart';
import '../../../../utils/constants/sizes.dart';
import '../../../../utils/helpers/helpers.dart';

class TProductCardhorizontal extends StatelessWidget {
  const TProductCardhorizontal({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode(context);

    return Container(
        width: 262,
        padding: const EdgeInsets.all(1),
        decoration: BoxDecoration(
          // boxShadow: [TShadowStyle.verticalProductShadow],
          borderRadius: BorderRadius.circular(TSizes.productImageRaduis),
          color: dark ? TColors.darkerGrey : TColors.softGrey,
        ),
        child: Row(
          children: [
            //thumbnail
            TRoundedContainer(
              height: 120,
              backgroundColor: dark ? TColors.dark : TColors.white,
              child: Stack(
                children: [
                  //thumbnail image
                  const TRoundedImage(
                    height: 120,
                    width: 120,
                    imageUrl: TImages.clothIcon,
                    applyImageRadius: true,
                    fit: BoxFit.cover,
                  ),
                  //sale tag
                  Positioned(
                    top: 0,
                    child: TRoundedContainer(
                      radius: TSizes.sm,
                      backgroundColor: (TColors.secondary).withOpacity(0.8),
                      padding: const EdgeInsets.symmetric(
                          horizontal: TSizes.sm, vertical: TSizes.xs),
                      child: Text(
                        "25%",
                        style: Theme.of(context)
                            .textTheme
                            .labelLarge!
                            .apply(color: TColors.black),
                      ),
                    ),
                  ),

                  ///favorite icon button
                  const Positioned(
                      top: 0,
                      right: 0,
                      child: TCircularIcon(
                        icons: Iconsax.heart5,
                        color: Colors.red,
                      )),
                ],
              ),
            ),

            //Details
            SizedBox(
                width: 140,
                child: Padding(
                    padding: const EdgeInsets.only(
                      top: TSizes.sm,
                      left: TSizes.sm,
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            TProductTitleText(
                                title: "Green Nike half Sleeces Shirt"),
                            SizedBox(
                              height: TSizes.spaceBtwItems / 2,
                            ),
                            TBrandTitleWithVerification(title: "Nike"),
                          ],
                        ),
                        const Spacer(),
                        //DETAILS
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            const TProductPriceText(price: "33"),
                            // add to cart
                            Container(
                              decoration: const BoxDecoration(
                                  color: TColors.dark,
                                  borderRadius: BorderRadius.only(
                                      topLeft:
                                          Radius.circular(TSizes.cardRadiusMd),
                                      bottomRight: Radius.circular(
                                          TSizes.productImageRaduis))),
                              child: const SizedBox(
                                width: TSizes.iconsLg * 1.2,
                                height: TSizes.iconsLg * 1.2,
                                child: Center(
                                  child: Icon(
                                    Iconsax.add,
                                    color: TColors.white,
                                  ),
                                ),
                              ),
                            )
                          ],
                        )
                      ],
                    )))
          ],
        ));
  }
}
