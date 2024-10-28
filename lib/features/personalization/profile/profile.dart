import 'package:eccomm/common/widgets/appbar/appbar.dart';
import 'package:eccomm/common/widgets/images/t_circular_image.dart';
import 'package:eccomm/common/widgets/texts/section_heading.dart';
import 'package:eccomm/utils/constants/image_strings.dart';
import 'package:eccomm/utils/constants/sizes.dart';
import 'package:flutter/material.dart';

import 'widgets/profile_menu.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const TAppBar(
        title: Text("Profile"),
        showBackArrow: true,
      ),
      body: SingleChildScrollView(
         child: Padding(
          padding: const EdgeInsets.all(TSizes.defaultSpace),
          child: Column(
            children: [

              //...Profile Picture
              SizedBox(
                width: double.infinity,
                child: Column(
                  children: [
                  const   TCircularImage(
                      image: TImages.clothIcon,
                      width: 80,
                      height: 80,
                      ),
                      TextButton(
                        onPressed: (){},
                         child: const Text("Change Profile Picture"),
                  )
                  ],
                ),
              ),

              //Details
                const SizedBox(
                height: TSizes.spaceBtwItems/2,
              ),

              const Divider(),

              const SizedBox(height: TSizes.spaceBtwItems,),

             //Heading profiles info
              const TSectionHeading(title: "Profile Information", showActionButton: false,),
              const SizedBox(height: TSizes.spaceBtwItems,),
             
           
               TProfileMenu(
                title: "Nmae",
                value: "C-tech",
                onPressed: (){},
              ),
               TProfileMenu(
                title: "Username",
                value: "C-technologies",
                onPressed: (){},
              ),
      
             const SizedBox(height: TSizes.spaceBtwItems,),
             const Divider(),
             const SizedBox(height: TSizes.spaceBtwSections,),

             //Heading personal info
             const TSectionHeading(title: "Personal Information"),
             const SizedBox(height: TSizes.spaceBtwItems,),

             TProfileMenu(onPressed: (){}, title: "User ID", value: "456276"),
             TProfileMenu(onPressed: (){}, title: "E-mail", value: "Carl-technologies"),
             TProfileMenu(onPressed: (){}, title: "Phone Number", value: "+234 9052549076"),
             TProfileMenu(onPressed: (){}, title: "Gender", value: "Male"),
             TProfileMenu(onPressed: (){}, title: "Date of Birth", value: "10 Oct, 1994"),

             const Divider(),
             const SizedBox(
              height: TSizes.spaceBtwItems,
             ),

             Center(
              child: TextButton(onPressed: (){}, child: const Text("Delete Account", style: TextStyle(color: Colors.red),)),
             )
            ],
          ),
          ),
      ),
    );
  }
}