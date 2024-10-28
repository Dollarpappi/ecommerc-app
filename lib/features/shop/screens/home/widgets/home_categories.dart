
import 'package:eccomm/features/shop/screens/sub_category/sub_category.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../../common/widgets/images_text_widgets/vertical_image_text.dart';

class HomeCategories extends StatelessWidget {
  const HomeCategories({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 80,
      child: ListView.builder(
        shrinkWrap: true,
        itemCount: 6,
        scrollDirection: Axis.horizontal,
          itemBuilder: (_, index){
            return TVerticalImageText(
              image: "assets/icons/category/500y_6c1e_210525.jpg",
              title: "Clothes",
              onTap: ()=> Get.to(()=> const SubCategory()),
    
            );
          },
      ),
    );
  }
}
