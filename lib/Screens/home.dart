import 'package:coffee_app/widgets/coustmer.dart';
import 'package:coffee_app/widgets/menu.dart';
import 'package:coffee_app/widgets/promotion.dart';
import 'package:coffee_app/widgets/searchbar.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              width: double.infinity,
              child: Stack(
                children: [
                  
                      Container(
                        decoration: const BoxDecoration(
                          gradient: LinearGradient(
                            begin: Alignment.topRight,
                            end: Alignment.bottomLeft,
                            colors: [
                              Color.fromRGBO(19, 19, 19, 1),
                              Color.fromRGBO(49, 49, 49, 1),
                            ],
                          ),
                        ),
                        height: 280,
                        width: double.infinity,
                      ),
                  
                  const Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 30),
                      child: Column(
                        children: [
                          SizedBox(
                            height: 63,
                          ),
                          Coustmer(),
                          SizedBox(
                            height: 28,
                          ),
                          SearchWidget(),
                          SizedBox(
                            height: 24,
                          ),
                          Promotion(),
                        ],
                      )),
                ],
              ),
            ),
            Container(
              height:24,
             
            ),
          Container(margin:EdgeInsets.symmetric(horizontal: 30),child: Text(''))

          ],
        ),
      ),
    );
  }
}
