import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class SplashHome extends StatelessWidget {
  const SplashHome({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment:MainAxisAlignment.center,
        children: [Center(
          child:Image.asset('assets/images/splash.png') ,

          
        ),
        Center(
          child:Lottie.asset('assets/json/Animation.json')
        ) ],
      ),

      
    );
  }
}