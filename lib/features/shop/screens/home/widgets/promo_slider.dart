
import 'package:carousel_slider/carousel_slider.dart';
import 'package:eccomm/features/shop/controllers/home_controller.dart';
import 'package:eccomm/utils/constants/colors.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../../../common/widgets/custom_shapes/containers/circular_containers.dart';
import '../../../../../common/widgets/images/t_rounded_inages.dart';
import '../../../../../utils/constants/sizes.dart';

class TPromoSlider extends StatelessWidget {
  //to make it reusable
  final List<String> banner;
  const TPromoSlider({
    super.key, required this.banner,
  });

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(HomeController());
    return Column(
      children: [
        CarouselSlider(
          items: banner.map((url) => TRoundedImage( imageUrl: url)).toList(), 
       options: CarouselOptions(
       viewportFraction: 1,
       onPageChanged: (index, _)=> controller.updatePageIndicator(index)
      ),
        ),
      const  SizedBox(
          height: TSizes.spaceBtwItems,
        ),
        Center(
          child: Obx(
            () =>
            Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                for(int i = 0; i < banner.length; i++ )
                TCircularContainer(
              
                margin: const EdgeInsets.only(right: 10) ,
                  width: 15,
                  height: 3,
                  backgroundColor: controller.carouselController.value == i ? TColors.primaryColor : TColors.grey,
                ),
                
                 
                
              ],
            ),
          ),
        ),
      ],
    );
  }
}