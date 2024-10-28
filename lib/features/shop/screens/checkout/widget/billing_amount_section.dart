import 'package:eccomm/utils/constants/sizes.dart';
import 'package:flutter/material.dart';

class BillingAmountSection extends StatelessWidget {
  const BillingAmountSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        children: [
          //-- SubTotal
          Row(
            children: [
              Expanded(
                child: Text("Subtotal", style: Theme.of(context).textTheme.bodyMedium,)),
                Text("\$256.0", style: Theme.of(context).textTheme.bodyMedium,)
            ],
          ),
         const  SizedBox(height: TSizes.spaceBtwItems/2,),
      
           //--Shipping fee
            Row(
            children: [
              Expanded(
                child: Text("Shipping Fee", style: Theme.of(context).textTheme.bodyMedium,)),
                Text("\$6.0", style: Theme.of(context).textTheme.labelLarge,),
            ]),
               const  SizedBox(height: TSizes.spaceBtwItems/2,),
      
                // --Tax Fee
            Row(
              children: [
              Expanded(
                child: Text("Tax Fee", style: Theme.of(context).textTheme.bodyMedium,)),
                Text("\$6.0", style: Theme.of(context).textTheme.labelLarge,),
              ]),
                const  SizedBox(height: TSizes.spaceBtwItems/2,),
      
                //--Order Tax
                  Row(
              children: [
              Expanded(
                child: Text("Order Fee", style: Theme.of(context).textTheme.bodyMedium,)),
                Text("\$6.0", style: Theme.of(context).textTheme.titleMedium,),
              ]),
         
        ],
      ),
    );
  }
}