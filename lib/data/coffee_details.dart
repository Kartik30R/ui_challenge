
import 'package:coffee_app/models/coffee.dart';

var selectedTab = Category.Cappucino;

final coffeeMenu = [
  Coffee(
      category: selectedTab,
      price: 4.53,
      ingredient: 'Chocolate',
      image: 'assets/images/chocolate.png',
      size: CoffeeSize.M,
      rating: '4.9', customer: 320),
  Coffee(
      category: selectedTab,
      price: 3.90,
      ingredient: 'Oats Milk',
      image: 'assets/images/oatmilk.png',
      size: CoffeeSize.M,
      rating: '4.8', customer: 283),
  Coffee(
      category: selectedTab,
      price: 4.00,
      ingredient: 'Vanilla',
      image: 'assets/images/oatmilk1.png',
      size: CoffeeSize.M,
      rating: '4.2', customer: 234),
  Coffee(
    category: selectedTab,
    price: 4.90,
    ingredient: 'Hazelnut',
    image: 'assets/images/chocolate1.png',
    size: CoffeeSize.M,
    rating: '4.6', customer: 301,
  )
];

String getDescription(Category category) {
  switch (category) {
    case Category.Americano:
      return "Americano is a coffee drink similar in taste to black coffee, consisting of a shot of espresso diluted with hot water. It offers a robust flavor profile with a smooth finish, making it a popular choice among coffee enthusiasts seeking a bold yet balanced brew.";
    case Category.Cappucino:
      return "Cappuccino is a classic Italian coffee beverage crafted with a balanced ratio of espresso, steamed milk, and a generous layer of frothy milk foam. It's distinguished by its velvety texture and topped with a sprinkle of cocoa powder or cinnamon, adding a touch of indulgence to each sip. Variations may include substituting milk with cream or incorporating flavored syrups for added depth of taste.";
    case Category.Latte:
      return "Latte, renowned as one of the most beloved coffee concoctions worldwide, features a harmonious blend of espresso and steamed milk, adorned with a delicate layer of froth. Whether enjoyed plain or infused with flavors ranging from classic vanilla to festive pumpkin spice, this creamy delight promises a comforting experience with every sip, perfect for both coffee aficionados and casual drinkers alike.";
    case Category.Machiato:
      return "Macchiato, a delightful espresso-based creation, boasts a delightful balance of rich espresso and a hint of velvety foam crowning its surface. Positioned between the robustness of a cappuccino and the intensity of a doppio, this nuanced beverage offers a nuanced flavor profile that appeals to those seeking a satisfying yet nuanced coffee experience.";
    default:
      return "We currently do not have a description for this category.";
  }
}

