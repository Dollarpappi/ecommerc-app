import 'package:eccomm/common/widgets/appbar/appbar.dart';
import 'package:eccomm/features/shop/screens/order/widget/order_list.dart';
import 'package:eccomm/utils/constants/sizes.dart';
import 'package:flutter/material.dart';

class OrderScreen extends StatelessWidget {
  const OrderScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //--appbar
      appBar: TAppBar(title: Text("My Orders", style: Theme.of(context).textTheme.headlineMedium,),),

      body: const Padding(
        padding: EdgeInsets.all(TSizes.defaultSpace),

      //--Orders
      child: TOrderListItems(),),
    );
  }
}