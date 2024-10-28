import 'package:eccomm/common/widgets/custom_shapes/containers/circular_containers.dart';
import 'package:eccomm/utils/constants/colors.dart';
import 'package:eccomm/utils/helpers/helpers.dart';
import 'package:flutter/material.dart';


class TChoiceChip extends StatelessWidget {
  final String text;
  final bool selected;
  final void  Function(bool)? onSelected;

  const TChoiceChip({
    super.key, 
    required this.text,
    required this.selected, 
    this.onSelected,
  });

  @override
  Widget build(BuildContext context) {
    final valueSpace = THelperFunctions.getColor(text) ;
    return Theme(
      data: Theme.of(context).copyWith(canvasColor: Colors.transparent),
      child: ChoiceChip(
      label: valueSpace != null ? const SizedBox() :  Text(text),
      selected: selected,
      onSelected: onSelected,
      labelStyle: TextStyle(color: selected ? TColors.white : Colors.white),
      avatar: valueSpace != null ? TCircularContainer(width: 50, height: 50, backgroundColor: THelperFunctions.getColor(text)!,): null,
      shape: valueSpace != null ? const CircleBorder() : null,
      backgroundColor: valueSpace != null ? THelperFunctions.getColor(text) : null,
      labelPadding: valueSpace != null ? const EdgeInsets.all(0) : null,
      padding: valueSpace != null ?  const EdgeInsets.all(0) : null,
        ),
    );
  }
}












