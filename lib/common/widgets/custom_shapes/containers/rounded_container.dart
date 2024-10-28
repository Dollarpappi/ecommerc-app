import 'package:eccomm/utils/constants/colors.dart';
import 'package:eccomm/utils/constants/sizes.dart';
import 'package:flutter/material.dart';

class TRoundedContainer extends StatelessWidget {
  final double? width;
   final double? height;
    final double radius;
     final Widget? child;
      final bool showBorder;
       final Color borderColor;
       final Color backgroundColor;
        final EdgeInsetsGeometry? padding;
         final EdgeInsetsGeometry? margin;
         final String? image;
         
  const TRoundedContainer({
    super.key,
     this.width,
      this.height, 
      this.radius = TSizes.cardRadiusLg, 
      this.child,
        this.showBorder = false,
         this.borderColor = TColors.softGrey, 
        this.padding, 
        this.margin, 
         this.backgroundColor = TColors.primaryColor, this.image});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      padding: padding,
      margin: margin,
      decoration: BoxDecoration(
        color: backgroundColor,
        border: showBorder ? Border.all(color: borderColor): null,
        borderRadius: BorderRadius.circular(radius)
      ),
      child: child,
    );
  }
}