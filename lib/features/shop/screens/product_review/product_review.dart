import 'package:eccomm/common/widgets/appbar/appbar.dart';
import 'package:eccomm/utils/constants/sizes.dart';
import 'package:flutter/material.dart';

import '../../../../common/widgets/products/retings/rating_indicator.dart';
import 'widget/rating_progress_indicator.dart';
import 'widget/user_review_card.dart';

class ProductReview extends StatelessWidget {
  const ProductReview({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: const TAppBar(
        //appbar
        title: Text("Reviews & Ratings"),
        showBackArrow: true,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(TSizes.defaultSpace),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text("Ratings and reviews are verified and are from people who use the same type of devices that you use"),
              const SizedBox(height: TSizes.defaultSpace,),

              /// Overall Product Ratings
              const TOverAllProductRating(),

              //Star Ratings
              const TRatingsBarIndicator(rating: 3.8,),
              Text("12,611", style: Theme.of(context).textTheme.bodySmall,),

              const SizedBox(
                height: TSizes.spaceBtwSections,
              ),
              //--USER REVIEW LIST
              const UserReviewCard()
            ],
          ),
          ),
      ),
      
       
        
    );
  }
}