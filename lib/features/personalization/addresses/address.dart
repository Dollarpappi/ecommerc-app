import 'package:eccomm/common/widgets/appbar/appbar.dart';
import 'package:eccomm/features/personalization/addresses/add_new_address.dart';
import 'package:eccomm/features/personalization/addresses/widget/single_address.dart';
import 'package:eccomm/utils/constants/colors.dart';
import 'package:eccomm/utils/constants/sizes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

class UserAddressScreen extends StatelessWidget {
  const UserAddressScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: ()=> Get.to(()=>const  AddNewAddress()),
        child: const Icon(Iconsax.add, color: TColors.white,),),
      appBar: TAppBar(showBackArrow: true, 
      title: Text("Address", style: Theme.of(context).textTheme.headlineMedium,) ,),
      body: const SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(TSizes.defaultSpace),
          child: Column(
            children: [
              //-- ADDRESS PAGE
              TSingleAddress(
                selectedAddress: true),
                 TSingleAddress(
                selectedAddress: false),
            ],
          ),),
      ),
    ) ;
  }
}