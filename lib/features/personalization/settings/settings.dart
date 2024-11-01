import 'package:eccomm/common/widgets/appbar/appbar.dart';
import 'package:eccomm/common/widgets/custom_shapes/containers/primary_header_container.dart';
import 'package:eccomm/common/widgets/texts/section_heading.dart';
import 'package:eccomm/features/personalization/addresses/address.dart';
import 'package:eccomm/features/personalization/profile/profile.dart';
import 'package:eccomm/features/personalization/settings/widget/setting_menu_title.dart';
import 'package:eccomm/features/shop/screens/cart/cart.dart';
import 'package:eccomm/utils/constants/colors.dart';
import 'package:eccomm/utils/constants/sizes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

import '../../../common/widgets/list_styles/user_profile_title.dart';
import '../../shop/screens/order/order.dart';

class SettingScreen extends StatelessWidget {
  const SettingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            children: [
              //header
              TPrimaryHeaderContainer(
                child:Column(
                  children: [
                    TAppBar(
                      title: Text("Account", style: Theme.of(context).textTheme.headlineMedium!.apply(color: TColors.white),),
                    ),
                  const SizedBox(
                    height: 0,
                  ),
      
                  //user profile card
                    TUserProfileTitle(
                    onPressed: ()=>Get.to(()=> const ProfileScreen()) ,
                   ),
      
                  const SizedBox( 
                    height: TSizes.spaceBtwSections,
                  )
                  ],
                ) ),
      
                //..body
                 Padding(
                  padding: const EdgeInsets.all(TSizes.defaultSpace),
                  child: Column(
                    children: [
                      const TSectionHeading(title: "Account Settings", showActionButton: false,),
                      const SizedBox(
                        height: TSizes.spaceBtwItems,
                      ),
      
                      SettingMenuTitle(
                        icon: Iconsax.safe_home,
                         title: "My Addresses",
                          subTitle: "NO 2 ifediba street independent layout",
                          onTap: ()=>Get.to(()=>const UserAddressScreen()),
                          ),
                          SettingMenuTitle(
                        icon: Iconsax.shopping_cart,
                         title: "My Cart",
                          subTitle: "Add, remove products and move to checkout",
                          onTap: ()=>Get.to(()=>const CartScreen()),
                          ),
                            SettingMenuTitle(
                        icon: Iconsax.bag_tick,
                         title: "My Orders",
                          subTitle: "In-progress and completed orders",
                          onTap: ()=>Get.to(()=>const OrderScreen()),
                          ),
                            SettingMenuTitle(
                        icon: Iconsax.bank,
                         title: "Bank Account",
                          subTitle: "Withdraw balance to registered bank account",
                          onTap: (){},
                          ),
                            SettingMenuTitle(
                        icon: Iconsax.discount_shape,
                         title: "My Coupons",
                          subTitle: "List of all discount coupons",
                          onTap: (){},
                          ),
                            SettingMenuTitle(
                        icon: Iconsax.notification,
                         title: "Notifications",
                          subTitle: "Set any kind notification message",
                          onTap: (){},
                          ),
                           SettingMenuTitle(
                        icon: Iconsax.security_card,
                         title: "Account Privacy",
                          subTitle: "Message data usage and connected accounts",
                          onTap: (){},
                          ),
      
                          //APP SETTINGS
                          const SizedBox(
                            height: TSizes.spaceBtwItems,
                          ),
                          const TSectionHeading(title: "App Settings", showActionButton: false,),
                          const SizedBox(height: TSizes.spaceBtwItems,),
                          const SettingMenuTitle(
                            icon: Iconsax.document_upload,
                             title: "Load Data",
                              subTitle: "Upload Data to your Cloud Firebase"),
                        SettingMenuTitle(
                          icon: Iconsax.location,
                          title: "Geolation",
                          subTitle: "Set recommendation based on location",
                          trailing: Switch(value: true, onChanged: (value){}),
                        ),
                       SettingMenuTitle(
                          icon: Iconsax.security_user,
                          title: "Safe Mode",
                          subTitle: "Search result is safe for all ages",
                          trailing: Switch(value: false, onChanged: (value){}),
                        ),
                         SettingMenuTitle(
                          icon: Iconsax.image,
                          title: "No Image Quality",
                          subTitle: "Set image quality to be seen",
                          trailing: Switch(value: false, onChanged: (value){}),),
      
                  
                    //LogOut Button
                    const SizedBox(
                      height: TSizes.spaceBtwSections,
                    ),
                    SizedBox(
                      width: double.infinity,
                      child: OutlinedButton(
                        onPressed: (){},
                         child: const Text("LogOut")),
                    ),
                    const SizedBox(
                      height: TSizes.spaceBtwSections,
                    ),
                    ],
                  ),
                )
            ],
          ),
        ),
      ),
    );
  }
}