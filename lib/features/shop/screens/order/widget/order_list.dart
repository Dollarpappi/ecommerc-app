import 'package:eccomm/common/widgets/custom_shapes/containers/rounded_container.dart';
import 'package:eccomm/utils/constants/colors.dart';
import 'package:eccomm/utils/constants/sizes.dart';
import 'package:eccomm/utils/helpers/helpers.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class TOrderListItems extends StatelessWidget {
  const TOrderListItems({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode(context);
    return ListView.separated(
      shrinkWrap: true,
      itemCount: 3,
      separatorBuilder: (_, __)=> const SizedBox(height: TSizes.spaceBtwItems,),
      itemBuilder: (_, value)=> TRoundedContainer(
        showBorder: true,
        backgroundColor: dark ? TColors.dark : TColors.light,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            //--row 1
            Row(
              children: [
                //-- ICon
               const  Icon(
                  Iconsax.ship
                ),
                const SizedBox(width: TSizes.spaceBtwItems /2,),
      
                //2 -- status & date
                Expanded(
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Pocessing",
                        style: Theme.of(context).textTheme.bodyLarge!.apply(color: TColors.primaryColor,fontSizeDelta: 1),
                        
                        ),
                        Text("07 Aug 2024", style: Theme.of(context).textTheme.headlineSmall,)
                    ],
                  ),
                ),
      
                //-- ICON
                IconButton(onPressed: (){},
                 icon: const Icon(Iconsax.arrow_right_34),
                 ),
              ],
            ),
            const SizedBox(height: TSizes.spaceBtwItems,),
      
            //--row 2
            Row(
              children: [
                Expanded(
                  child: Row(
                    children: [
                      //-- ICon
                     const  Icon(
                        Iconsax.ship
                      ),
                      const SizedBox(width: TSizes.spaceBtwItems /2,),
                  
                      //2 -- status & date
                      Expanded(
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Order",
                              style: Theme.of(context).textTheme.labelMedium,
                              
                              ),
                              Text("[#23989830]", style: Theme.of(context).textTheme.titleMedium,)
                          ],
                        ),
                      ),
                  
                     
                    ],
                  ),
                ),
      
                
      
                Expanded(
                  child: Row(
                    children: [
                      //-- ICon
                     const  Icon(
                        Iconsax.calendar
                      ),
                      const SizedBox(width: TSizes.spaceBtwItems /2,),
                  
                      //2 -- status & date
                      Expanded(
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Shopping Date",
                              style: Theme.of(context).textTheme.labelMedium,
                              
                              ),
                              Text("[28 Aug 2024", style: Theme.of(context).textTheme.titleMedium,)
                          ],
                        ),
                      ),
                  
                     
                    ],
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}