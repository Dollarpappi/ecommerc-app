

import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

import '../../../utils/constants/colors.dart';
import '../../../utils/constants/image_strings.dart';
import '../images/t_circular_image.dart';

class TUserProfileTitle extends StatelessWidget {
  final VoidCallback onPressed;
  const TUserProfileTitle({
    super.key, required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
     leading: const TCircularImage(
       image: TImages.clothIcon,
       fit: BoxFit.fill,
       width: 50,
       height: 50,
       padding: 0,),
       title: Text("Clothing with T", style:  Theme.of(context).textTheme.headlineSmall!.apply(color: TColors.white),),
       subtitle: Text("support@codingwithCarl.com", style: Theme.of(context).textTheme.bodySmall!.apply(color: TColors.white),),
       trailing: IconButton(
       onPressed: onPressed,
       icon: const Icon(Iconsax.edit)),
     
                    );
  }
}