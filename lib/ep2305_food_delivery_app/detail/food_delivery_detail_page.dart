import 'package:flutter/material.dart';

class FoodDeliveryDetailPage extends StatefulWidget {
  const FoodDeliveryDetailPage({super.key});

  @override
  State<FoodDeliveryDetailPage> createState() => _FoodDeliveryDetailPageState();
}

class _FoodDeliveryDetailPageState extends State<FoodDeliveryDetailPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
      children: [
        Positioned.fill(child: Column(children: [
          Expanded(child: Placeholder(),),
          Expanded(child: Placeholder(),),
        ],)),
        Positioned(

            child: Container(decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(24),
          color: Colors.white
        ),))
      ],
      ),
    );
  }
}
