
import 'package:eccomm/common/widgets/custom_shapes/curved_widgets/curved_widgets.dart';
import 'package:flutter/material.dart';

class TCurvedEdgesWidget extends StatelessWidget {
  final Widget? child;
  const TCurvedEdgesWidget({
    super.key, this.child,
  });

  @override
  Widget build(BuildContext context) {
    return ClipPath(
      clipper: TCustomCurvedEdges(),
      child: child,
      );
    
  }
}