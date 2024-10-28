import 'package:eccomm/common/widgets/appbar/appbar.dart';
import 'package:eccomm/common/widgets/icons/t_circular_icon.dart';
import 'package:eccomm/common/widgets/layouts/grid_layout.dart';
import 'package:eccomm/common/widgets/products/product_cards/product_card_vertical.dart';
import 'package:eccomm/features/shop/screens/home/home.dart';
import 'package:eccomm/utils/constants/sizes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class FavouriteScreen extends StatelessWidget {
  const FavouriteScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: TAppBar(
        title: Text("WishList", style: Theme.of(context).textTheme.headlineMedium,),
        actions: [
          TCircularIcon(icons: Icons.add, onPressed: ()=> Get.to(const HomeScreen()),)
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(TSizes.defaultSpace),
          child: Column(
            children: [
              TGridLayout(
                itemCount: 4, 
                itemBuilder: (_, index)=> const TProductCardVertical())
            ],
          ) ,),
      ),
    );
  }
}