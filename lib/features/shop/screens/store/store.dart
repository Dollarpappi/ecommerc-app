import 'package:eccomm/common/widgets/appbar/appbar.dart';
import 'package:eccomm/common/widgets/appbar/tabbar.dart';
import 'package:eccomm/common/widgets/custom_shapes/containers/search_container.dart';
import 'package:eccomm/common/widgets/layouts/grid_layout.dart';
import 'package:eccomm/common/widgets/products/cart/cart_menu_icon.dart';
import 'package:eccomm/common/widgets/texts/section_heading.dart';
import 'package:eccomm/features/shop/screens/brands/all_brands.dart';
import 'package:eccomm/features/shop/screens/store/widgets/category_tab.dart';
import 'package:eccomm/utils/constants/colors.dart';
import 'package:eccomm/utils/constants/sizes.dart';
import 'package:eccomm/utils/helpers/helpers.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../../common/widgets/brands/brand_card.dart';

class Store extends StatelessWidget {
  const Store({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode(context);
    return DefaultTabController(
      length: 5,
      child: Scaffold(
        backgroundColor: dark ? TColors.dark : TColors.white,
        appBar: TAppBar(
          title: Text(
            "Store",
            style: Theme.of(context).textTheme.headlineMedium,
          ),
          actions: [
            TCartCounterIcon(
                iconColor: dark ? TColors.white : TColors.dark,
                onPressed: () {})
          ],
        ),
        body: NestedScrollView(
            headerSliverBuilder: (_, innerBoxIsScrolled) {
              return [
                SliverAppBar(
                    automaticallyImplyLeading: false,
                    pinned: true,
                    floating: true,
                    backgroundColor: dark ? TColors.dark : TColors.white,
                    expandedHeight: 440,
                    // to put a widget into the alocated height
                    flexibleSpace: Padding(
                      padding: const EdgeInsets.all(TSizes.defaultSpace),
                      child: ListView(
                        shrinkWrap: true,
                        physics: const NeverScrollableScrollPhysics(),
                        children: [
                          const SizedBox(
                            height: TSizes.defaultSpace,
                          ),
                          //search bar
                          const TSearchContainer(
                            padding: EdgeInsets.zero,
                            text: "Search in Store",
                            showBorder: true,
                            showBackground: false,
                          ),
                          const SizedBox(
                            height: TSizes.spaceBtwSections,
                          ),

                          //Featured Brands HEADER
                          TSectionHeading(
                            title: "Featured Brands",
                            onPressed: () => Get.to(
                              () => const AllBrands(),
                            ),
                          ),
                          const SizedBox(
                            height: TSizes.spaceBtwItems / 2,
                          ),
                          TGridLayout(
                              mainAxisExtent: 90,
                              itemCount: 4,
                              itemBuilder: (_, index) => const TBrandCard(
                                    showBorder: true,
                                  )),
                        ],
                      ),
                    ),
                    // tabs
                    bottom: const TTabBar(tabs: [
                      Tab(
                        child: Text("Sports"),
                      ),
                      Tab(
                        child: Text("Funiture"),
                      ),
                      Tab(
                        child: Text("Electronic"),
                      ),
                      Tab(
                        child: Text("Cloths"),
                      ),
                      Tab(
                        child: Text("Cosmetics"),
                      ),
                    ]))
              ];
            },
            body: const TabBarView(children: [
              TCategoryTab(),
              TCategoryTab(),
              TCategoryTab(),
              TCategoryTab(),
              TCategoryTab(),
            ])),
      ),
    );
  }
}
