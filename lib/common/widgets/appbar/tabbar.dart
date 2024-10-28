import 'package:eccomm/utils/constants/colors.dart';
import 'package:eccomm/utils/device/device_utility.dart';
import 'package:eccomm/utils/helpers/helpers.dart';
import 'package:flutter/material.dart';

class TTabBar extends StatelessWidget implements PreferredSizeWidget {
  final List<Widget> tabs;
  const TTabBar({super.key, required this.tabs});
//IF U WANT TO ADD THE BACKGROUND COLOR TO TABS YOU HAVE TO WRAP THEM IN MATERIAL WIDGET
// TO DO THAT WE NEED PREFERREDSIZED WIDGET, THAT WHY  WE CREATED CUSTOM CLASS
  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode(context);
    return Material(
      color: dark ? TColors.black : TColors.white,
      child: TabBar(
        tabs: tabs,
        isScrollable: true,
        indicatorColor: TColors.primaryColor,
        labelColor: dark ? TColors.white : TColors.primaryColor,
        unselectedLabelColor: TColors.darkGrey,
      ),
    );
  }
  
  @override
  Size get preferredSize => Size.fromHeight(TDeviceUtils.getAppBarHeight());
}