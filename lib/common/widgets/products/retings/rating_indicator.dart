

import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:iconsax/iconsax.dart';

import '../../../../utils/constants/colors.dart';

class TRatingsBarIndicator extends StatelessWidget {
  final double rating;
  const TRatingsBarIndicator({
    super.key, required this.rating,
  });

  @override
  Widget build(BuildContext context) {
    return RatingBarIndicator(
      rating: rating,
      unratedColor: TColors.darkGrey,
      itemSize: 20,
      itemBuilder: (_, __)=> const Icon(Iconsax.star1, color: TColors.primaryColor,),
    );
  }
}
