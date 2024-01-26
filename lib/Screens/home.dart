import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topRight,
                end: Alignment.bottomLeft,
                colors: [
                  const Color.fromRGBO(19, 19, 19, 1),
                  Color.fromRGBO(49, 49, 49, 1),
                ],
              ),
            ),
            height: 280,
            width: double.infinity,
            child: 


// profile details part   start
            
            Stack(
              children: [
 // location               
                Padding(
                  padding: const EdgeInsets.only(left: 30,right: 30,top: 63),
                  child: Row(crossAxisAlignment: CrossAxisAlignment.start,
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
                              color: Color.fromRGBO(183, 183, 183, 1),
                            ),
                          ),
                          InkWell(
                            onTap: () {
                              // Handle location dropdown tap
                            },
                            child: Row(
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
                  ),
                ),
//search        
                TextField(
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: Color.fromARGB(255,49,49,49)
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
