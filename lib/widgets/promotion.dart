import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Promotion extends StatelessWidget {
  const Promotion({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      
      decoration: BoxDecoration(
          image: const DecorationImage(
              fit: BoxFit.fill, image: AssetImage('assets/images/banner.png')),
          borderRadius: BorderRadius.circular(16)),
      height: 140,
      width: double.infinity,
      child: 
          const Padding(
            padding: EdgeInsets.only(left: 23,top: 13,right: 232,bottom: 101),
            
          ),
          );
        
  }
}
