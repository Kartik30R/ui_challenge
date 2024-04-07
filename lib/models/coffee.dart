

// ignore_for_file: constant_identifier_names

  enum  Category {
    Cappucino,
    Machiato,
    Latte,
    Americano,
  }

enum CoffeeSize {
  S,M,L
}



class Coffee {
  const Coffee(  {
    required this.size,
    required this.category,
    required this.price,
    required this.ingredient,
    required this.image,
    required this.rating,
    required this.customer,
  });

  final String rating;
  final String ingredient;
  final String image;
  final Category category;
  final double price;
  final CoffeeSize size;
  final int customer;
 
}

