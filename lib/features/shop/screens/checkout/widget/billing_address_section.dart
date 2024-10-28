import 'package:eccomm/common/widgets/texts/section_heading.dart';
import 'package:flutter/material.dart';

import '../../../../../utils/constants/sizes.dart';

class BillingAddressSection extends StatelessWidget {
  const BillingAddressSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        children: [
          TSectionHeading(title: "Shopping  Address", buttomTitle: "change", onPressed: (){},),
          Text('Coding with Carl', style: Theme.of(context).textTheme.bodyLarge,),
      
          Row(
            children: [
              const Icon(Icons.phone, color: Colors.grey, size: 16,),
              const SizedBox(width: TSizes.spaceBtwItems,),
              Text("+234 908404894", style: Theme.of(context).textTheme.bodyMedium,),
            ],
          ),
          const SizedBox(height: TSizes.spaceBtwItems /2,),
          Row(
            children: [
              const Icon(Icons.location_history, color: Colors.grey, size: 34,),
              const SizedBox(width: TSizes.spaceBtwItems,),
              Expanded(child: Text("Soyh Liana, maine 7989, usa", style: Theme.of(context).textTheme.bodyMedium, softWrap: true,))
            ],
          )
        ],
      ),
    );
  }
}