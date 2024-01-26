import 'package:coffee_app/models/coffee.dart';
import 'package:flutter/material.dart';

var SelectedTab = Category.Cappuccino;

final cappuMenu = [
  Coffee(
      category: SelectedTab,
      price: 4.53,
      ingredient: 'Chocolate',
      image: Image.asset('assets/images/chocolate.png'),
      size: Size.M),
  Coffee(
      category: SelectedTab,
      price: 3.90,
      ingredient: 'Oats Milk',
      image: Image.asset('assets/images/oatmilk.png'),
      size: Size.M),
  Coffee(
      category: SelectedTab,
      price: 4.00,
      ingredient: 'Vanilla',
      image: Image.asset('assets/images/oatmilk1.png'),
      size: Size.M),
  Coffee(
    category: SelectedTab,
    price: 4.90,
    ingredient: 'Hazelnut',
    image: Image.asset('assets/images/chocolate1.png'),
    size: Size.M,
  )
];

String getDescription(Category category) {
  switch (category) {
    case Category.Americano:
      return 'Med en liknande smak som svart kaffe består americano av en espresso skott utspätt med hett vatten.';
    case Category.Cappuccino:
      return 'Cappuccino är en latte som är gjord med mer skum än ångad mjölk, ofta med ett strö av kakaopulver eller kanel på toppen. Ibland kan du hitta variationer som använder grädde istället för mjölk eller sådana som tillsätter smakämnen också.';
    case Category.Latte:
      return 'Som den mest populära kaffedrycken där ute består latte av en skvätt espresso och ångad mjölk med bara en gnutta skum. Den kan beställas utan smak eller med smak av allt från vanilj till pumpa kryddor.';
    case Category.Machiato:
      return 'Macchiaton är en annan espresso-baserad dryck som har en liten mängd skum på toppen. Det är det glada mellanrummet mellan en cappuccino och en doppio.';
  }
}
