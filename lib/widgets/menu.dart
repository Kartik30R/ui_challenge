import 'package:coffee_app/models/coffee.dart';
import 'package:flutter/material.dart';

class Menu extends StatefulWidget {
  const Menu({super.key});

  @override
  State<Menu> createState() => _MenuState();
}

class _MenuState extends State<Menu> with SingleTickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
  final TabController _tabController = TabController(length:Category.values.length, vsync: this);


    return Column(
      children: [
        TabBar(
          controller: _tabController
          ,tabs: [
          
          Tab(text: Category.Cappuccino.toString(),),
          Tab(text: Category.Machiato.toString(),),
          Tab(text: Category.Latte.toString(),),
          Tab(text: Category.Americano.toString(),)
        ]),
        SizedBox(height: 28,),
        TabBarView(controller: _tabController,children: [
            GridView.builder(gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2,crossAxisSpacing: 20,mainAxisSpacing: 16), itemBuilder:(context, index) => Center(child: Text(Category.values[index].toString(), style: TextStyle(color: Colors.grey),)), ),
                        GridView.builder(gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2,crossAxisSpacing: 20,mainAxisSpacing: 16), itemBuilder:(context, index) => Center(child: Text(Category.values[index].toString(), style: TextStyle(color: Colors.grey),)), ),

            GridView.builder(gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2,crossAxisSpacing: 20,mainAxisSpacing: 16), itemBuilder:(context, index) => Center(child: Text(Category.values[index].toString(), style: TextStyle(color: Colors.grey),)), ),
                        GridView.builder(gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2,crossAxisSpacing: 20,mainAxisSpacing: 16), itemBuilder:(context, index) => Center(child: Text(Category.values[index].toString(), style: TextStyle(color: Colors.grey),)), )


        ])
      ],
    );
  
  }
}