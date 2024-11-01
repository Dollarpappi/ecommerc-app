import 'package:eccomm/common/widgets/products/product_cards/product_card_vertical.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

import '../../../../utils/constants/sizes.dart';
import '../../brands/brand_card.dart';
import '../../layouts/grid_layout.dart';

class TSortableProducts extends StatelessWidget {
  const TSortableProducts({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        //dropdown
        DropdownButtonFormField(
          decoration: const InputDecoration(prefixIcon: Icon(Iconsax.sort)),
          items: [
            "Name",
            "Higer Price",
            "Lower Price",
            "Sale",
            "Latest",
            "Polular",
          ]
              .map((options) =>
                  DropdownMenuItem(value: options, child: Text(options)))
              .toList(),
          onChanged: (value) {},
        ),
        //heading
        // const TSectionHeading(
        //   title: "Brands",
        //   showActionButton: false,
        // ),
        const SizedBox(
          height: TSizes.spaceBtwItems,
        ),

        //products
        TGridLayout(
            itemCount: 8,
            itemBuilder: (_, index) {
              return const TProductCardVertical();
            })
        // TGridLayout(
        //     itemCount: 10,
        //     mainAxisExtent: 80,
        //     itemBuilder: (context, index) =>
        //         const TBrandCard(showBorder: true))
      ],
    );
  }
}
