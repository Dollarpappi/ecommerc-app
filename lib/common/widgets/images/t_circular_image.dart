

import 'package:eccomm/utils/helpers/helpers.dart';
import 'package:flutter/material.dart';

import '../../../utils/constants/colors.dart';
import '../../../utils/constants/sizes.dart';

class TCircularImage extends StatelessWidget {
  final BoxFit? fit;
  final String image;
  final bool isNetworkImage;
  final Color? overlayColor;
  final Color? backgroundColor;
  final double width, height, padding;

  const TCircularImage({
    super.key,
     this.fit = BoxFit.cover, 
     required this.image, 
      this.isNetworkImage = false, 
     this.overlayColor,
      this.backgroundColor, 
 this.width = 50,  this.height = 50,  this.padding = TSizes.sm,

  });

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode(context);
    return Container(
     width: width,
     height: height,
     padding:  EdgeInsets.all(padding),
     decoration: BoxDecoration(
       color: backgroundColor ?? (dark ? TColors.black :TColors.white),
       borderRadius: BorderRadius.circular(20),
       image: DecorationImage(
        image: isNetworkImage ? NetworkImage(image): AssetImage(image) as ImageProvider,
        fit: fit,
      )
     ),
     /*child: Image(
      fit: fit,
       image: isNetworkImage ? NetworkImage(image): AssetImage(image) as ImageProvider,
       color: overlayColor,
       ),*/
    );
  }
}