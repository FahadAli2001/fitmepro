import 'dart:async';

import 'package:fitmepro/utils/colors/colors.dart';
import 'package:fitmepro/utils/images/images.dart';
import 'package:fitmepro/views/onboarding_screen/onboarding_one_screen.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
     
    super.initState();
    Timer(const Duration(seconds: 2), () {
      Navigator.push(context, MaterialPageRoute(builder: (context)
      =>const OnboardingOneScreen()));
     });
  }
  @override
  Widget build(BuildContext context) {
    return   Scaffold(
      backgroundColor: primaryColor,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(child: Image.asset(appIcon)),

          Text('FIT ME PRO',
          style: GoogleFonts.kufam(
            color:Colors.white,
          fontWeight:FontWeight.bold
          ),)
        ],
      ),
    );
  }
}