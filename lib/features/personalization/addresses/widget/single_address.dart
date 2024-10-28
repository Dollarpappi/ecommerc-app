import 'package:eccomm/common/widgets/custom_shapes/containers/rounded_container.dart';
import 'package:eccomm/utils/constants/colors.dart';
import 'package:eccomm/utils/constants/sizes.dart';
import 'package:eccomm/utils/helpers/helpers.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class TSingleAddress extends StatelessWidget {
  final bool selectedAddress;

  const TSingleAddress({super.key, required this.selectedAddress});

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode(context);
    return TRoundedContainer(
      padding:const  EdgeInsets.all(5),
      width: double.infinity,
      showBorder: true,
      backgroundColor: selectedAddress ? TColors.primaryColor.withOpacity(0.5) : Colors.transparent,
      borderColor: selectedAddress ? Colors.transparent : TColors.darkerGrey,
      margin: const  EdgeInsets.only(bottom: TSizes.spaceBtwItems),
      child: Stack(
        children: [
          Positioned(
            right: 10,
            top: 5,
            child: Icon(
              
              selectedAddress ? Iconsax.tick_circle5 : null,
              color: selectedAddress ? dark ? TColors.light : TColors.primaryColor : null,
            ),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("Carl Johnson",
               maxLines: 1, 
               overflow: TextOverflow.ellipsis,
              style: Theme.of(context).textTheme.titleMedium,
              ),
              const SizedBox(height: TSizes.sm /2,),
              const Text("(+234) 9052 549076",maxLines: 1, overflow: TextOverflow.ellipsis,),
              const Text(
                "No 2, ifediba street independent layout, brisks estate, enugu",
                //softwrap
                //-- enables to incoperate the complete text 
                softWrap: true,
               
              ),
              
            ],
          )
        ],
      ),
    );
  }
}