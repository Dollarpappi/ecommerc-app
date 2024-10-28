
import 'package:eccomm/common/widgets/custom_shapes/containers/circular_containers.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import '../../../../utils/constants/colors.dart';
import '../curved_widgets/curved_edges.dart';

class TPrimaryHeaderContainer extends StatelessWidget {
  final Widget child;
  const TPrimaryHeaderContainer({
    super.key, required this.child,
  });

  @override
  Widget build(BuildContext context) {
    return TCurvedEdgesWidget(
      child: Container(
            color: TColors.primaryColor,
            padding: const EdgeInsets.all(0),

            //if (size isFinte)
            child: Stack(
                children: [
                  Positioned(
                    top: -150,
                    right: -250,
                    child: TCircularContainer(backgroundColor: TColors.textWhite.withOpacity(0.1),)),
                   Positioned(
                    top: 100,
                    right: -300,
                    child: TCircularContainer(backgroundColor: TColors.textWhite.withOpacity(0.1),)),
            
                    child,
                
                ],
              ),
)
 );
  }
}
