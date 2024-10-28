

import 'package:eccomm/features/shop/screens/cart/cart.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

import '../../../../utils/constants/colors.dart';

class TCartCounterIcon extends StatelessWidget {
  final Color? iconColor;
  final VoidCallback onPressed;
  const TCartCounterIcon({
    super.key,  this.iconColor, required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    
    return Stack(
     children: [
        IconButton(
       onPressed: ()=> Get.to(()=>const CartScreen()),
      icon: Icon(
        Iconsax.shopping_bag,
        color: iconColor,
        ),
      ),
      Positioned(
       top: 6,
       right: 5,
       child: Container(
        
        width: 15,
        height: 15,
        decoration: BoxDecoration(
          
         color: TColors.grey.withOpacity(0.9),
         borderRadius: BorderRadius.circular(100),
        ),
        child: Center(child: Text("2", style: Theme.of(context).textTheme.labelLarge!.apply(color: TColors.black, fontSizeFactor:0.8 ),)),
       ),
      ),
     ],
    );
  }
}
