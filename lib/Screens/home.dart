import 'dart:ffi';

import 'package:coffee_app/Screens/Coffee_detail_screen.dart';
import 'package:coffee_app/widgets/coustmer.dart';
import 'package:coffee_app/widgets/promotion.dart';
import 'package:coffee_app/widgets/searchbar.dart';
import 'package:flutter/material.dart';

import '../data/coffee_details.dart';
import '../models/coffee.dart';
import '../widgets/item.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage>
    with SingleTickerProviderStateMixin {
  late TabController tabController;
  int currentIndex = 0;
  String currentTab = Category.Cappucino.name;

  @override
  void initState() {
    super.initState();
    tabController = TabController(
      length: Category.values.length,
      vsync: this,
    );

    tabController.addListener(() {
      setState(() {
        currentIndex = tabController.index;
        currentTab = Category.values[currentIndex].name;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
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
                    padding: EdgeInsets.symmetric(horizontal: 30),
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
                        SizedBox(
                          height: 24,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            TabBar(
              padding: const EdgeInsets.symmetric(horizontal: 26),
              indicator: const BoxDecoration(), // Set indicator to an empty BoxDecoration
              tabAlignment: TabAlignment.start,
              labelPadding: const EdgeInsets.symmetric(horizontal: 4),
              onTap: (value) {
                setState(() {
                  currentIndex = tabController.index;
                  currentTab = Category.values[value].name;
                });
              },
              dividerHeight: 0,
              isScrollable: true,
              controller: tabController,
              tabs: Category.values
                  .map(
                    (e) => Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12),
                        color: currentTab == e.name
                            ? const Color.fromARGB(255, 198, 123, 77)
                            : Colors.white,
                      ),
                      child: Center(
                        child: Padding(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 16.0, vertical: 8),
                          child: Text(
                            e.name,
                            style: TextStyle(
                              color: currentTab == e.name
                                  ? Colors.white
                                  : Colors.black,
                              fontWeight: FontWeight.w400,
                              fontSize: 14,
                            ),
                          ),
                        ),
                      ),
                    ),
                  )
                  .toList(),
            ),
            const SizedBox(
              height: 24,
            ),
            SizedBox(
              height: 700,
              width: null,
              child: TabBarView(
                controller: tabController,
                children: Category.values
                    .map(
                      (e) => GridView.builder(
                        padding: const EdgeInsets.symmetric(horizontal: 30),
                        physics: const NeverScrollableScrollPhysics(),
                        gridDelegate:
                            const SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 2,
                          crossAxisSpacing: 16,
                          mainAxisSpacing: 16,
                        ),
                        itemCount: coffeeMenu.length,
                        itemBuilder: (context, index) => GestureDetector(
                          onTap: (){
                            Navigator.push(context, MaterialPageRoute(builder: (context) {
                              return CoffeeDetails(index: index, category: e);
                            },));
                          },
                          child: CoffeeCard(
                            currentIndex: index,
                            currentCoffee: e.name,
                          ),
                        ),
                      ),
                    )
                    .toList(),
              ),
            ),
          ],
        ),
      ),
    );
  }

  @override
  void dispose() {
  
    tabController.dispose();
    super.dispose();
  }
}
