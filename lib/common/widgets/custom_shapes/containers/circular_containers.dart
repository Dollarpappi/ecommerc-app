

import 'package:eccomm/utils/helpers/helpers.dart';
import 'package:flutter/material.dart';

import '../../../../utils/constants/colors.dart';

class TCircularContainer extends StatelessWidget {
   final double? width;
   final double? height;
    final double? radius;
     final double? padding;
     final EdgeInsets? margin;
      final Widget? child;
       final Color backgroundColor;

  const TCircularContainer({
    super.key,
     this.width = 400,
     this.height = 400,
     this.radius = 400,
     this.padding = 0, 
     this.child, 
     this.backgroundColor = TColors.grey,
     this.margin,
  });

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode(context);
    return Container(
      width: width,
      height: height,
      margin: margin,
      padding: EdgeInsets.all(padding!),
      decoration: BoxDecoration(
      border:  Border.all(color: dark ?TColors.primaryColor : TColors.softGrey.withOpacity(0.2) ),
      borderRadius: BorderRadius.circular(400),
      color: backgroundColor,
      ),
      child: child,
    );
  }
}