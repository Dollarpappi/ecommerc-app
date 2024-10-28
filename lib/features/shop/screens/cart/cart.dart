import 'package:eccomm/common/widgets/appbar/appbar.dart';
import 'package:eccomm/features/shop/screens/checkout/checkout.dart';
import 'package:eccomm/utils/constants/sizes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'widget/cart_items.dart';

class CartScreen extends StatelessWidget {
  const CartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: TAppBar(
        showBackArrow: true,
        title: Text("Cart", style: Theme.of(context).textTheme.headlineSmall,),
      ),
      body: const Padding(
        padding: EdgeInsets.all(TSizes.defaultSpace),
      
        //--items in cart
      child: CartItems(),
         ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(TSizes.defaultSpace),
        child: ElevatedButton(
          onPressed: ()=> Get.to(()=> const CheckOutScreen()), 
          child: const Text(" Checkout \$2454")),
      ),

    );
  }
}