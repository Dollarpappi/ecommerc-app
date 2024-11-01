import 'package:eccomm/common/widgets/appbar/appbar.dart';
import 'package:eccomm/utils/constants/sizes.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class AddNewAddress extends StatelessWidget {
  const AddNewAddress({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const TAppBar(
        showBackArrow: true,
        title: Text("Add new Address"),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(TSizes.defaultSpace),
          child: Column(
            children: [
              TextFormField(
                decoration: const InputDecoration(
                  prefixIcon: Icon(Iconsax.user),
                  labelText: "Name",
                ),
              ),
              const SizedBox(
                height: TSizes.spaceBtwItems,
              ),
               TextFormField(
                decoration: const InputDecoration(
                  prefixIcon: Icon(Iconsax.mobile),
                  labelText: "Phone Number",
                ),
              ),
              const SizedBox(
                height: TSizes.spaceBtwItems,
              ),
              Row(
                children: [
                   Expanded(
                     child: TextFormField(
                                     decoration: const InputDecoration(
                                       prefixIcon: Icon(Iconsax.building_31),
                                       labelText: "Street",
                                     ),
                                   ),
                   ),
               const SizedBox(
                width: TSizes.spaceBtwItems,
              ),
                Expanded(
                  child: TextFormField(
                  decoration: const InputDecoration(
                    prefixIcon: Icon(Iconsax.code),
                    labelText: "Postal code",
                  ),
                                ),
                ),
              
                ],
              ),
               const SizedBox(
                height: TSizes.spaceBtwInputField,
              ),
               Row(
                children: [
                   Expanded(
                     child: TextFormField(
                                     decoration: const InputDecoration(
                                       prefixIcon: Icon(Iconsax.building),
                                       labelText: "City",
                                     ),
                                   ),
                   ),
               const SizedBox(
                width: TSizes.spaceBtwItems,
              ),
                Expanded(
                  child: TextFormField(
                  decoration: const InputDecoration(
                    prefixIcon: Icon(Iconsax.activity),
                    labelText: "State",
                  ),
                                ),
                ),
              
                ],
              ),
              const SizedBox(
                height: TSizes.spaceBtwInputField,
              ),
             TextFormField(
                  decoration: const InputDecoration(
                   prefixIcon: Icon(Iconsax.global),
                   labelText: "Country",
                  ),
                ),
                 const SizedBox(
                height: TSizes.spaceBtwInputField,
              ),
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(onPressed: (){}, child: const Text("Save")),
              )
            ],
          ),
        ),
      ),
    );
  }
}