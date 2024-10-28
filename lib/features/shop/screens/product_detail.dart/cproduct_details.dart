import 'package:eccomm/features/shop/screens/product_detail.dart/widget/bootom_add_to_cart.dart';
import 'package:eccomm/features/shop/screens/product_detail.dart/widget/product_detail_image_slider.dart';
import 'package:eccomm/features/shop/screens/product_review/product_review.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:readmore/readmore.dart';

import '../../../../common/widgets/texts/section_heading.dart';
import '../../../../utils/constants/sizes.dart';
import 'widget/product_attributes.dart';
import 'widget/product_meta_data.dart';
import 'widget/rating_share_widget.dart';

class CProductDetails extends StatelessWidget {
  const CProductDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: const TBottomAddToCart(),
      body: SingleChildScrollView(
        child: Column(
          children: [
            // product image design
            const TProductImageSlider(),

            //product details
            Padding(
              padding: const EdgeInsets.only(
                 right: TSizes.defaultSpace, left: TSizes.defaultSpace, bottom: TSizes.defaultSpace,
              ),
              child: Column(
                children: [
                  //rating share
                    const TRatingAndShare(),

                  //--Price, Title, Stock, & Brand
                const  TProductMetaData(),

                  //--Attributes
                const TProductAttributes(),
                const  SizedBox(height: TSizes.spaceBtwSections,),

                 //checkout button
                SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(onPressed: (){}, child: const Text("CheckOut"),),
                  ),
                 const  SizedBox(height: TSizes.spaceBtwSections,),
                 
                  //description
                  const TSectionHeading(title: "Description", showActionButton: false,),
                  const  SizedBox(height: TSizes.spaceBtwItems,),
                  // ignore: prefer_const_constructors
                  ReadMoreText(
                    "This product is nothing but the best so make sure your able to sarifice for the best products",
                    trimLines: 1,
                    trimMode: TrimMode.Line,
                    trimCollapsedText: "Show more",
                    trimExpandedText: " Less",
                    moreStyle: const TextStyle(fontSize: 14, fontWeight: FontWeight.w800),
                    lessStyle: const TextStyle(fontSize: 14, fontWeight: FontWeight.w800),

                  ),
                  //REVIEWS
                  const Divider(),
                  const SizedBox(
                    height: 6,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                     const  TSectionHeading(title: "Reviews(199)", showActionButton: false,),
                      IconButton(onPressed: ()=>Get.to(()=> const ProductReview()), icon: const Icon(Iconsax.arrow_right_3, size: 18,))
                    ],
                  ),
                  const SizedBox(height: TSizes.spaceBtwSections,)
                ],
              ),
            )
          ], 
        ),
      ),
    );
  }
}