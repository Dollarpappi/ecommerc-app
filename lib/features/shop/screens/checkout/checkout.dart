import 'package:eccomm/common/widgets/appbar/appbar.dart';
import 'package:eccomm/common/widgets/custom_shapes/containers/rounded_container.dart';
import 'package:eccomm/common/widgets/success_screem/success_screen.dart';
import 'package:eccomm/features/shop/screens/cart/widget/cart_items.dart';
import 'package:eccomm/features/shop/screens/checkout/widget/billing_address_section.dart';
import 'package:eccomm/features/shop/screens/checkout/widget/billing_payment_section.dart';
import 'package:eccomm/navigation_menu.dart';
import 'package:eccomm/utils/constants/sizes.dart';
import 'package:eccomm/utils/helpers/helpers.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../common/widgets/products/cart/coupon_widget.dart';
import '../../../../utils/constants/colors.dart';
import 'widget/billing_amount_section.dart';

class CheckOutScreen extends StatelessWidget {
  const CheckOutScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final dark =THelperFunctions.isDarkMode(context);
    return Scaffold(
      appBar: TAppBar(
        showBackArrow: true,
        title: Text("Cart", style: Theme.of(context).textTheme.headlineMedium,),

      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(TSizes.defaultSpace),
          child: Column(
            children: [
              //-- items in cart
              const CartItems(
                showAddRemoveButton: false,
              ),
              const SizedBox(height: TSizes.defaultSpace,),

              //--- Coupon Textfeild
              const TCouponCode(),
              const  SizedBox(
                height: TSizes.spaceBtwSections,
              ),

              //--Billing Section
              TRoundedContainer(
                showBorder: true,
                backgroundColor: dark ? TColors.black : TColors.white,
                child: const Column(
                  children: [
                    //-- pricing
                    BillingAmountSection(),
                    SizedBox(
                      height: TSizes.spaceBtwItems,
                    ),


                    //---Divider
                   Divider(),
                   SizedBox(
                      height: TSizes.spaceBtwItems,
                    ),

                    // Payment Method
                    BillingPaymentSection(),
                     SizedBox(
                      height: TSizes.spaceBtwItems,
                    ),

                    // Address 
                    BillingAddressSection()

                  ],
                ),
              )
            ],
          ),
        ),
      ),
       bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(TSizes.defaultSpace),
        child: ElevatedButton(
          onPressed: ()=> Get.to(()=>  SuccessScreen(
            image: "",
            subTitle: "Your item will be shipped soon",
            title: "Payment Success",
            onPressed: ()=> Get.to(()=> const NavigationMenu()),
          )), 
          child: const Text(" Checkout \$2454")),
      ),
    );
  }
}