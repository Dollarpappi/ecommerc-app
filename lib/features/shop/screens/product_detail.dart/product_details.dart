import 'package:eccomm/common/widgets/texts/section_heading.dart';
import 'package:eccomm/features/shop/screens/product_detail.dart/widget/bootom_add_to_cart.dart';
import 'package:eccomm/features/shop/screens/product_detail.dart/widget/product_attributes.dart';
import 'package:eccomm/utils/constants/sizes.dart';
import 'package:flutter/material.dart';

import 'widget/product_detail_image_slider.dart';
import 'widget/product_meta_data.dart';
import 'widget/rating_share_widget.dart';

class ProductDetails extends StatelessWidget {
  const ProductDetails({super.key});

  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      backgroundColor: Colors.white,
      bottomNavigationBar: TBottomAddToCart(),
      body: SingleChildScrollView(
        child: Column(
          children: [
            //.1. Product image design
           const TProductImageSlider(),

           //..2..Products Details
           Padding(
            padding: const EdgeInsets.only(
              right: TSizes.defaultSpace, left: TSizes.defaultSpace, bottom: TSizes.defaultSpace,
            ),
            child: Column(
              children: [

                //Rating & Share
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
                 const  SizedBox(height: TSizes.spaceBtwItems,),
                 
                  //description
                  const TSectionHeading(title: "Description", showActionButton: false,),
                  const  SizedBox(height: TSizes.spaceBtwItems,),
                  //readmePackage
                  
                  const Divider(),

                  //Reviews
                  const SizedBox(height: TSizes.spaceBtwItems,),
                  const TSectionHeading(title: "Reviews (199)", showActionButton: true,)

              ],
            ),)

          ],
        ),
      ),
    );
  }
}