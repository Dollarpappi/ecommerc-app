

import 'package:eccomm/utils/constants/sizes.dart';
import 'package:eccomm/utils/helpers/helpers.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class OnBoardingPage extends StatefulWidget {
  final String image, title, subTitle;
  const OnBoardingPage({
    super.key, required this.image, required this.title, required this.subTitle,
  });

  @override
  State<OnBoardingPage> createState() => _OnBoardingPageState();
}

class _OnBoardingPageState extends State<OnBoardingPage>{
  
  @override
  Widget build(BuildContext context)  {    
    return Padding(
      padding: const EdgeInsets.all(TSizes.defaultSpace),
      child: Column(
        children: [
          Lottie.asset(
            widget.image,
            width: THelperFunctions.screenWidth() * 0.9,
            height: THelperFunctions.screenHeight() * 0.7,
            animate: true,
           repeat: true,
            
          ),  
            Text(
              widget.title,
             style: Theme.of(context).textTheme.headlineMedium,
            textAlign: TextAlign.center,
            ),
            const SizedBox(height:15),
            Text(
              widget.subTitle,
               style: Theme.of(context).textTheme.headlineSmall,
            textAlign: TextAlign.center,
            ),
            
         
        ],
      ),
    );
  }
}