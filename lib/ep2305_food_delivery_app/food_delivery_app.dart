import 'package:flutter/material.dart';

import 'home/food_delivery_home_page.dart';


class FoodDeliveryApp extends StatelessWidget {
  const FoodDeliveryApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: FoodDeliveryHomePage(),
    );
  }
}
