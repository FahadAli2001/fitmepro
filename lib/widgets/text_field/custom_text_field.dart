import 'package:fitmepro/utils/colors/colors.dart';
import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({super.key});

  @override
  Widget build(BuildContext context) {
    Size size =MediaQuery.sizeOf(context);
    return   SizedBox(
      height:size.height*0.06 ,
      child: TextField(
        decoration: InputDecoration(
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
            borderSide: BorderSide(
              color: primaryColor
            )
          ),
          
        ),
        
      ),
    );
  }
}