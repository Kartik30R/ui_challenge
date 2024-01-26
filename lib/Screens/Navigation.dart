import 'package:coffee_app/Screens/bag.dart';
import 'package:coffee_app/Screens/favourite.dart';
import 'package:coffee_app/Screens/home.dart';
import 'package:coffee_app/Screens/notification.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:iconly/iconly.dart';

class NavigationScreen extends StatefulWidget {
  const NavigationScreen({super.key});

  @override
  State<NavigationScreen> createState() => _NavigationScreenState();
}

class _NavigationScreenState extends State<NavigationScreen> {
  
  int currentIndex = 0;

  
  List pages = const [
    HomePage(),
    FavoritePage(),
    BagPage(),
    NotificationPage(),
  ];


  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      
      bottomNavigationBar: 
         Container(
          // margin: EdgeInsets.symmetric(20),
          height: screenWidth * .2,
          decoration: BoxDecoration(
            color: Color.fromARGB(255, 255, 255, 255),
           
            borderRadius: BorderRadius.only(topLeft: Radius.circular(24),topRight: Radius.circular(24)),
          ),
          child: Padding(
            padding: const EdgeInsets.only(top: 24,left: 20,right: 20),
            child: ListView.builder(
              itemCount: 4,
              scrollDirection: Axis.horizontal,
              padding: EdgeInsets.symmetric(horizontal: screenWidth * .024),
              itemBuilder: (context, index) => InkWell(
                onTap: () {
                  setState(() {
                    currentIndex = index;
                    HapticFeedback.lightImpact();
                  });
                },
                splashColor: Colors.transparent,
                highlightColor: Colors.transparent,
                child: Column(
                  children: [
                   
                    Container(
                      width: screenWidth * .2125,
                      alignment: Alignment.center,
                      child: Icon(
                        listOfIcons[index],
                        size: 24,
                        color: index == currentIndex
                            ?Theme.of(context).primaryColor
                            : Colors.black26,
                      ),
                    ),
                    SizedBox(height: 6,),
                     SizedBox(
                      width: screenWidth * .2125,
                      child: Center(
                        child: AnimatedContainer(
                          duration: Duration(seconds: 1),
                          curve: Curves.fastLinearToSlowEaseIn,
                          height: index == currentIndex ? 5: 0,
                          width: index == currentIndex ? 10: 0,
                          decoration: BoxDecoration(
                            color: index == currentIndex
                                ?Theme.of(context).primaryColor
                                : Colors.transparent,
                            borderRadius: BorderRadius.circular(50),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
         body: pages[currentIndex],
      );
     
    
  }

  List<IconData> listOfIcons = [
    IconlyBold.home,
    IconlyBold.heart,
    IconlyBold.bag,
    IconlyBold.notification,
  ];
}