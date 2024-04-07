import 'dart:ui';

import 'package:coffee_app/data/coffee_details.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:iconly/iconly.dart';

class CoffeeCard extends StatelessWidget {
  const CoffeeCard(
      {Key? key, required this.currentIndex, required this.currentCoffee})
      : super(key: key);

  final int currentIndex;
  final String currentCoffee;

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height;

    return Container(
      width: width * .3973,
      height: 256,
      decoration: BoxDecoration(
        color: const Color.fromARGB(255, 255, 255, 255),
        borderRadius: BorderRadius.circular(16),
      ),
      child:  Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Stack(
              children: [
                Padding(
                  padding: const EdgeInsets.all(4.0),
                  child: AspectRatio(
                    aspectRatio: 1 / 1,
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(16),
                        image: DecorationImage(
                          image: AssetImage(coffeeMenu[currentIndex].image),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(4.0),
                  child: ClipRRect(
                    borderRadius: const BorderRadius.only(
                      topLeft: Radius.circular(16),
                      bottomRight: Radius.circular(16),
                    ),
                    child: BackdropFilter(
                      filter: ImageFilter.blur(sigmaX: 10, sigmaY: 10),
                      child: Container(
                        height: 25,
                        width: 51,
                        color: const Color.fromARGB(46, 0, 0, 0),
                        child: Padding(
                          padding: const EdgeInsets.only(left: 8.0),
                          child: Center(
                            child: Row(
                              children: [
                                const Icon(
                                  IconlyBold.star,
                                  size: 10,
                                  color: Color.fromRGBO(251, 190, 33, 1),
                                ),
                                const SizedBox(width: 4,),
                                Text(
                                  coffeeMenu[currentIndex].rating,
                                  style: GoogleFonts.sora(
                                      fontSize: 10, color: Colors.white),
                                )
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 12),
            Padding(
              padding: const EdgeInsets.only(left: 12.0),
              child: Text(
                currentCoffee,
                style: GoogleFonts.sora(fontSize: 16, fontWeight: FontWeight.w600),
              ),
            ),
            const SizedBox(height: 4),
            Padding(
              padding: const EdgeInsets.only(left: 12.0),
              child: Text('with ${coffeeMenu[currentIndex].ingredient}' ,
                style: GoogleFonts.sora(
                  color: const Color.fromRGBO(155, 155, 155, 1),
                  fontSize: 12,
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(12.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    '\$',
                    style:
                        GoogleFonts.sora(fontSize: 18, fontWeight: FontWeight.w600),
                  ),
                  const SizedBox(width: 4),
                  Text(
                    coffeeMenu[currentIndex].price.toString(),
                    style: GoogleFonts.sora(
                      color: const Color.fromRGBO(47, 45, 44, 1),
                      fontSize: 18,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  const Spacer(),
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: const Color.fromRGBO(198, 124, 78, 1),
                    ),
                    height: 32,
                    width: 32,
                    child: const Icon(
                      Icons.add,
                      size: 16,
                      color: Colors.white,
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
    
    );
  }
}
