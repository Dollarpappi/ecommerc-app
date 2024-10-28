import 'package:eccomm/common/widgets/custom_shapes/containers/rounded_container.dart';
import 'package:eccomm/common/widgets/texts/section_heading.dart';
import 'package:eccomm/utils/constants/sizes.dart';
import 'package:eccomm/utils/helpers/helpers.dart';
import 'package:flutter/material.dart';

import '../../../../../utils/constants/colors.dart';
import '../../../../../utils/constants/image_strings.dart';

class BillingPaymentSection extends StatelessWidget {
  const BillingPaymentSection({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode(context);
    return  Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        children: [
          TSectionHeading(title: "Payment Method", buttomTitle: "Change", onPressed: (){},),
          const SizedBox(height: TSizes.spaceBtwItems /2,),
      
          Row(
            children: [
              TRoundedContainer(
                width: 60,
                height: 35,
                backgroundColor: dark ? TColors.light : TColors.white,
                padding:    const EdgeInsets.all(TSizes.sm),
                child: const Image(image: AssetImage(TImages.productImage1,), fit: BoxFit.contain,),
              ),
               const SizedBox(height: TSizes.spaceBtwItems /2,),
               Text("Paypal", style: Theme.of(context).textTheme.bodyLarge,)
            ],
          )
        ],
      ),
    );
  }
}