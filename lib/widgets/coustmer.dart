import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Coustmer extends StatelessWidget {
  const Coustmer({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Location',
                                style: GoogleFonts.sora(
                                  fontSize: 12,
                                  fontWeight: FontWeight.w400,
                                  color: const Color.fromRGBO(183, 183, 183, 1),
                                ),
                              ),
                              InkWell(
                                onTap: () {
                                  // Handle location dropdown tap
                                },
                                child: const Row(
                                  children: [
                                    Text(
                                      'Bilzen, Tanjungbalai',
                                      style: TextStyle(color: Colors.white),
                                    ),
                                    Icon(
                                      Icons.arrow_drop_down_rounded,
                                      color: Colors.white,
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                          //profile image
                          Image.asset(
                            'assets/images/Image.png',
                            height: 44,
                            width: 44,
                          ),
                        ],
                      );
  }
}