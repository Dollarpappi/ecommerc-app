import 'package:eccomm/common/widgets/appbar/appbar.dart';
import 'package:eccomm/common/widgets/images/t_rounded_inages.dart';
import 'package:eccomm/common/widgets/products/product_cards/product_card_horizontal.dart';
import 'package:eccomm/common/widgets/texts/section_heading.dart';
import 'package:eccomm/utils/constants/image_strings.dart';
import 'package:eccomm/utils/constants/sizes.dart';
import 'package:flutter/material.dart';

class SubCategory extends StatelessWidget {
  const SubCategory({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const TAppBar(
        title: Text("Sports shirts"),
        showBackArrow: true,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(TSizes.defaultSpace),
          child: Column(
            children: [
              //-- Banner
              const TRoundedImage(
                imageUrl: TImages.productImage1,
                applyImageRadius: true,
                width: double.infinity,
              ),
              const SizedBox(
                height: TSizes.spaceBtwItems,
              ),

              //-- sub-category
              Column(
                children: [
                  //--Heading
                  TSectionHeading(
                    title: "Sports shirts",
                    onPressed: () {},
                  ),
                  const SizedBox(
                    height: TSizes.spaceBtwItems / 2,
                  ),
                  SizedBox(
                      height: 120,
                      child: ListView.separated(
                        shrinkWrap: true,
                        scrollDirection: Axis.horizontal,
                        itemCount: 4,
                        itemBuilder: (_, index) =>
                            const TProductCardhorizontal(),
                        separatorBuilder: (context, index) => const SizedBox(
                          width: TSizes.spaceBtwItems,
                        ),
                      )),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
