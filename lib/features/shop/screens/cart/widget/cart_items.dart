

import 'package:flutter/material.dart';

import '../../../../../common/widgets/products/cart/cart_item.dart';
import '../../../../../common/widgets/texts/product_price_text.dart';
import '../../../../../utils/constants/sizes.dart';
import 'add_remove_button.dart';

class CartItems extends StatelessWidget {
  final bool showAddRemoveButton;

  const CartItems({
    super.key,  this.showAddRemoveButton = true,
  });

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      shrinkWrap: true,
      itemBuilder: (_,__)=> Column(
        children: [
          const TCartItem( ), 
    
        if(showAddRemoveButton) const  SizedBox(
            height: 10,
          ),

          // --Add Remove Button 
         if(showAddRemoveButton) 
         const  Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
             
              Row(
                children: [
                  //extra space
                 SizedBox(
                   width: 60,
                  ),
    
                  //----Add Remove Button
                  TProductQuantiyWithAddRemoveButton(),
               ],
              ),
              TProductPriceText(price: "240"),
               ],
          )
        ],
      ), 
      separatorBuilder: (_,__)=> const SizedBox(height: TSizes.spaceBtwItems,),
       itemCount: 4);
  }
}
