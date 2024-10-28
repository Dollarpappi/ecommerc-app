
import 'package:eccomm/utils/constants/sizes.dart';
import 'package:eccomm/utils/helpers/helpers.dart';
import 'package:flutter/material.dart';
import '../../../utils/constants/colors.dart';

class TCircularIcon extends StatelessWidget {
  final double? width, height, size;
  final IconData icons;
  final Color? color;
  final Color? backgroundColor;
  final VoidCallback? onPressed;
  
  const TCircularIcon({
    super.key,
    this.width,
     this.height,
      this.size = TSizes.lg, 
      required this.icons, 
      this.color, 
      this.backgroundColor,
       this.onPressed,
  });

  

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      width: width,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(100),
        color: backgroundColor != null ?
        backgroundColor! :  THelperFunctions.isDarkMode(context)? 
         TColors.black.withOpacity(0.5) 
        :TColors.white.withOpacity(0.5,
        
      ),
      
    ),
    child: IconButton(
      onPressed: onPressed,
       icon: Icon(icons, color: color, size: size,),
       ),);
  }
}