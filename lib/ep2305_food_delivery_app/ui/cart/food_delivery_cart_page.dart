import 'package:flutter/material.dart';

class FoodDeliveryCartPage extends StatefulWidget {
  const FoodDeliveryCartPage({super.key});

  @override
  State<FoodDeliveryCartPage> createState() => _FoodDeliveryCartPageState();
}

class _FoodDeliveryCartPageState extends State<FoodDeliveryCartPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Stack(
          children: [
            Positioned.fill(
              left: 16,
              right: 16,
              top: 0,
              child: Column(
                children: [
                  Row(
                    children: [
                      CircleAvatar(),
                      Expanded(child: Center(child: Text("Cart"))),
                      CircleAvatar(),
                    ],
                  ),
                  Expanded(
                    child: ListView.builder(
                      itemBuilder: (context, index) {
                        return Container(height: 80, child: Placeholder());
                      },
                    ),
                  ),
                ],
              ),
            ),
            Positioned(
              bottom: 0,
              left: 0,
              right: 0,
              child: Container(

                  height: 320,
                  decoration: BoxDecoration(color: Colors.white)),
            ),
          ],
        ),
      ),
    );
  }
}
