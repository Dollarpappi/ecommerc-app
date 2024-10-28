import 'package:eccomm/utils/constants/colors.dart';
import 'package:flutter/material.dart';

class SettingMenuTitle extends StatelessWidget {
  final IconData icon;
  final String title, subTitle;
  final Widget? trailing;
  final VoidCallback? onTap;

  const SettingMenuTitle({super.key, required this.icon, required this.title, required this.subTitle, this.trailing, this.onTap,});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Icon(icon, size: 20, color: TColors.primaryColor,),
      title: Text(title, style: Theme.of(context).textTheme.titleSmall,),
      subtitle: Text(subTitle, style: Theme.of(context).textTheme.labelMedium,),
      trailing: trailing ,
      onTap: onTap,
    );
  }
}