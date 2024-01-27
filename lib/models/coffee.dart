
import 'package:flutter/material.dart';

enum  Category {
  Cappuccino,
  Machiato,
  Latte,
  Americano,
}

enum Size {
  S,M,L
}



class Coffee {
  const Coffee( {
    required this.size,
    required this.category,
    required this.price,
    required this.ingredient,
    required this.image,
  });

  
  final String ingredient;
  final Image image;
  final Category category;
  final double price;
  final Size size;
 
}

