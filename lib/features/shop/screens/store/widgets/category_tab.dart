import 'package:eccomm/common/widgets/layouts/grid_layout.dart';
import 'package:eccomm/common/widgets/products/product_cards/product_card_vertical.dart';
import 'package:eccomm/common/widgets/texts/section_heading.dart';
import 'package:eccomm/utils/constants/sizes.dart';
import 'package:flutter/material.dart';

import '../../../../../common/widgets/brands/brands_showcase.dart';
import '../../../../../utils/constants/image_strings.dart';

class TCategoryTab extends StatelessWidget {
  const TCategoryTab({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      shrinkWrap: true,
      physics:const NeverScrollableScrollPhysics(),
      children: [
        Padding(
            padding:  const EdgeInsets.all(10),
            child: Column(
              children: [
                //BRANDS
                const TBrandShowCase(
                  images: [
                    TImages.productImage1,
                    TImages.shoeIcon,
                    TImages.jeweryIcon
                  ],
                ),
      
                //--Products
                TSectionHeading(title: "You might like", showActionButton: true, onPressed: (){},),
                const SizedBox(
                  height: TSizes.spaceBtwItems,
                ),
                TGridLayout(
                  itemCount: 4, 
                  itemBuilder: (_, index){
                    return const  TProductCardVertical();
                  }),
                  const SizedBox(
                    height: TSizes.spaceBtwItems,
                  )
              ],
            ), ),]
    );
  }
}