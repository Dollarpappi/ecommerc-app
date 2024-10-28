

import 'package:eccomm/utils/constants/sizes.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class TProfileMenu extends StatelessWidget {
  final IconData icon;
  final VoidCallback onPressed;
  final String title, value;

  const TProfileMenu({
    super.key, this.icon= Iconsax.arrow_right_34, required this.onPressed, required this.title, required this.value,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: TSizes.spaceBtwItems / 1.5),
        child: Row(
          children: [
            Expanded(
              flex: 3,
              child: Text(title, style: Theme.of(context).textTheme.bodyLarge,overflow: TextOverflow.ellipsis,)),
            Expanded(
              flex: 3,
              child: Text(value, style: Theme.of(context).textTheme.bodyMedium,overflow: TextOverflow.ellipsis,)),
           const  Expanded(
            flex: 0,
            child: Icon(Iconsax.arrow_right_34, size: 18,)) 
             ],
        ),
      ),
    );
  }
}