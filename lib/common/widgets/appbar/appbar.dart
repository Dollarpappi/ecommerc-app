
import 'package:eccomm/utils/constants/colors.dart';
import 'package:eccomm/utils/device/device_utility.dart';
import 'package:eccomm/utils/helpers/helpers.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

class TAppBar extends StatelessWidget implements PreferredSizeWidget{ 
  final Widget? title;
  final bool showBackArrow;
  final IconData? leadingIcon;
  final List<Widget>? actions;
  final VoidCallback? leadingOnPressed;

  const TAppBar({super.key, 
  this.title, 
  this.showBackArrow = false, 
  this.leadingIcon, 
  this.actions, 
  this.leadingOnPressed});

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode(context);
    return  Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 7,
      ),
      child: AppBar(
        backgroundColor: Colors.transparent,
        automaticallyImplyLeading: false,
        leading: showBackArrow ? IconButton(onPressed:()=> Get.back(), icon: Icon(Iconsax.arrow_left, color: dark ? TColors.white : TColors.black,))
        : leadingIcon !=null? IconButton(onPressed: leadingOnPressed, icon: Icon(leadingIcon)) : null,
        title: title,
        actions: actions,
      ),
      );
      
  }
  
  @override
  Size get preferredSize => Size.fromHeight(TDeviceUtils.getAppBarHeight());

 }