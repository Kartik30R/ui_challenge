import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Promotion extends StatelessWidget {
  const Promotion({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      
      decoration: BoxDecoration(
          image: DecorationImage(
              fit: BoxFit.fill, image: AssetImage('assets/images/banner.png')),
          borderRadius: BorderRadius.circular(16)),
      height: 140,
      width: double.infinity,
      child: 
          Padding(
            padding: const EdgeInsets.only(left: 23,top: 13,right: 232,bottom: 101),
            child: Container(
              alignment: Alignment.center,
                
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    color: Color.fromRGBO(237, 81, 81, 1)),
                child: Text(
                  'Promo',
                  style: GoogleFonts.sora(
                      color: Colors.white,
                      fontSize: 14,
                      fontWeight: FontWeight.w600),
                )),
          ),
          );
        
  }
}
