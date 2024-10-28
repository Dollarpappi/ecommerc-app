import 'package:eccomm/common/widgets/custom_shapes/containers/rounded_container.dart';
import 'package:eccomm/common/widgets/products/retings/rating_indicator.dart';
import 'package:eccomm/utils/constants/colors.dart';
import 'package:eccomm/utils/constants/image_strings.dart';
import 'package:eccomm/utils/constants/sizes.dart';
import 'package:eccomm/utils/helpers/helpers.dart';
import 'package:flutter/material.dart';
import 'package:readmore/readmore.dart';

class UserReviewCard extends StatelessWidget {
  const UserReviewCard({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode(context);
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                const CircleAvatar(backgroundImage: AssetImage(TImages.clothIcon),),
                const SizedBox(width: TSizes.spaceBtwItems,),
                Text('John Doe', style: Theme.of(context).textTheme.titleMedium,)
              ],
            ),
            IconButton(onPressed: (){}, icon: const Icon(Icons.more_vert))
          ],
        ),
        const SizedBox(
          width: TSizes.spaceBtwItems,
        ),

        //--Reviews
        Row(
          children: [
            const TRatingsBarIndicator(rating: 5),
            const SizedBox(width: TSizes.spaceBtwItems,),
            Text("01 Aug, 2024", style: Theme.of(context).textTheme.bodySmall,)
          ],
        ),
         const SizedBox(
          height: TSizes.spaceBtwItems,
        ),
        const ReadMoreText(
          "I am writing this letter on the bases of a carry over course CSC305 I wrote last semester but due to that I had reached the limit 28 credit, I wasn’t able to register the course as a first semester course. In this light, I will like to register it as a summer course and because I have already passed it I wish to  plead for your indulgence in not having to seat for the exam again and rather my passed scored be registered as I register for it this summer. Due to the upcoming degree exams, I will not be fully prepared to seat confidently in the hall to retake the exam as I am also preparing for my success in the upcoming degree exam.",
          trimCollapsedText: "Show more",
          trimExpandedText: "Show less",
          trimLines: 2,
          trimMode: TrimMode.Length,
          moreStyle: TextStyle(fontSize: 14, fontWeight: FontWeight.bold, color: TColors.primaryColor),
          lessStyle: TextStyle(fontSize: 14, fontWeight: FontWeight.bold, color: TColors.primaryColor),
        ),
         const SizedBox(
          height: TSizes.spaceBtwItems,
        ),

        //--company Review
        TRoundedContainer(
          backgroundColor: dark ? TColors.darkerGrey : TColors.grey,
          child: Padding(
            padding: const EdgeInsets.all(8),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("T's Store", style: Theme.of(context).textTheme.titleMedium,),
                    
                     Text("02 Aug, 2024", style: Theme.of(context).textTheme.bodyMedium,)
                  ],
                ),
                const SizedBox(
                  height: 10,
                ),
                 const ReadMoreText(
          "I am writing this letter on the bases of a carry over course CSC305 I wrote last semester but due to that I had reached the limit 28 credit, I wasn’t able to register the course as a first semester course. In this light, I will like to register it as a summer course and because I have already passed it I wish to  plead for your indulgence in not having to seat for the exam again and rather my passed scored be registered as I register for it this summer. Due to the upcoming degree exams, I will not be fully prepared to seat confidently in the hall to retake the exam as I am also preparing for my success in the upcoming degree exam.",
          trimCollapsedText: "Show more",
          trimExpandedText: "Show less",
          trimLines: 2,
          trimMode: TrimMode.Length,
          moreStyle: TextStyle(fontSize: 14, fontWeight: FontWeight.bold, color: TColors.primaryColor),
          lessStyle: TextStyle(fontSize: 14, fontWeight: FontWeight.bold, color: TColors.primaryColor),
        ),
              ],
            ),
          ),
        ),
        const SizedBox(
          height: TSizes.spaceBtwSections ,
        )
      ],
      
    );
  }
}