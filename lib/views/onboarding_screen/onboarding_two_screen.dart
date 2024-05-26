import 'package:fitmepro/utils/colors/colors.dart';
import 'package:fitmepro/utils/images/images.dart';
import 'package:fitmepro/views/login_screen/login_screen.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class OnboardingTwoScreen extends StatefulWidget {
  const OnboardingTwoScreen({super.key});

  @override
  State<OnboardingTwoScreen> createState() => _OnboardingTwoScreenState();
}

class _OnboardingTwoScreenState extends State<OnboardingTwoScreen> {
  @override
  Widget build(BuildContext context) {
     Size size = MediaQuery.of(context).size;
    return  Scaffold(
      body: Stack(
         
        children: [
          Container(
            width: size.width,
            height: size.height,
             decoration: BoxDecoration(
              image: DecorationImage(image: AssetImage(bgImage),fit: BoxFit.cover)
            ),
          ),
          Positioned(
            top: size.height*0.1,
            left: 0,
            right: 0,
            child: Image.asset('assets/onboarding_icon_2.png')),
            Positioned(
               top: size.height*0.65,
            left: size.width*0.15,
            right: size.width*0.15,
              child: Text("""My saying is, 'Cardio is confidence.'          
                         Matt Hughes""",
                style: GoogleFonts.kufam(
              color:primaryColor,
              fontSize:size.height * 0.018,
                        fontWeight:FontWeight.bold
                        ),),
            ),
            Positioned(
              bottom: 40,
              right: 20,
              child: GestureDetector(
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context)
                  =>const LoginScreen()));
                },
                child: Card(
                  elevation: 6,
                  child: Container(
                    width: size.width*0.25,
                    height: size.height*0.05,
                    decoration: BoxDecoration(
                      color: primaryColor,
                      borderRadius: BorderRadius.circular(12)
                    ),
                    child: Center(
                      child: Text('DONE',
                       style: GoogleFonts.kufam(
                                      color:Colors.white,
                                     
                              fontWeight:FontWeight.bold
                              )
                      ),
                    ),
                  )),
              ),
            )
        ],
      ),
    );
  }
}