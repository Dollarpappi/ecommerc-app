import 'package:eccomm/common/widgets/layouts/grid_layout.dart';
import 'package:eccomm/common/widgets/products/product_cards/product_card_vertical.dart';
import 'package:eccomm/features/shop/screens/home/widgets/home_appbar.dart';
import 'package:eccomm/features/shop/screens/home/widgets/home_categories.dart';
import 'package:eccomm/features/shop/screens/home/widgets/promo_slider.dart';
import 'package:eccomm/utils/constants/image_strings.dart';
import 'package:eccomm/utils/constants/sizes.dart';
import 'package:flutter/material.dart';
import '../../../../common/widgets/custom_shapes/containers/primary_header_container.dart';
import '../../../../common/widgets/custom_shapes/containers/search_container.dart';
import '../../../../common/widgets/texts/section_heading.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key,});
  @override
  Widget build(BuildContext context) {
    return   SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            children: [
              //Header
              const TPrimaryHeaderContainer(
                child: Column(
                  children: [
      
                 //appbar
                  THomeAppBar(),
                  SizedBox(
                    height: TSizes.spaceBtwSections,
                  ),
                  
      
                    //searcher 
                    TSearchContainer(
                     
                      text: "Search in Shop",
                    ),
                   SizedBox(
                            height: TSizes.spaceBtwItems,
                          ),
                          
                    //Category
                    Padding(
                      padding: EdgeInsets.only(left: TSizes.defaultSpace),
                      child: Column(
                        children: [
                         TSectionHeading(
                            title: "Popular Categories",
                            showActionButton: false,
                            textColor: Colors.white,
                          ),
                          SizedBox(
                            height: TSizes.spaceBtwItems,
                          ),
                          
                          //categories
                          HomeCategories()
      
                        ],
                      ),
                      ),
                   SizedBox(
                    height: 25,
                   )
                  ],
                ),
              ),
      
              //body
              Padding(
                padding: const EdgeInsets.all(10),
                child: Column(
                  children: [
                    //promo slider
                    const TPromoSlider(
                      
                      banner: [
                        TImages.promoBanner1,
                        TImages.promoBanner2,
                        TImages.promoBanner3,
                      ],
                    ),
                    const SizedBox(
                      height: TSizes.spaceBtwItems,
                    ),
      
                    //HEADING
                    TSectionHeading(
                      title: "Popular Products",
                      onPressed: (){},),
      
                   TGridLayout(
                    mainAxisExtent: 250,
                    itemCount: 2,
                    itemBuilder: (_, idex)=>const  TProductCardVertical(),
                   )
                  
                  ],
                )
              )
              ],
          ),
        ),
      ),
    );
  }
}
