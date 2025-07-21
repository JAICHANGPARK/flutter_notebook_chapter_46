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
                spacing: 16,
                children: [
                  Row(
                    children: [
                      CircleAvatar(
                        radius: 26,
                        backgroundColor: Colors.grey[200]!,
                        foregroundColor: Colors.black,
                        child: Icon(Icons.arrow_back_ios_new, size: 18),
                      ),
                      Expanded(
                        child: Center(
                          child: Text(
                            "Cart",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 18,
                            ),
                          ),
                        ),
                      ),
                      CircleAvatar(
                        radius: 26,
                        backgroundColor: Colors.grey[200]!,
                        foregroundColor: Colors.black,
                        child: Icon(Icons.more_vert, size: 18),
                      ),
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
                decoration: BoxDecoration(color: Colors.white),
                padding: EdgeInsets.all(16),
                child: Column(
                  spacing: 12,
                  children: [
                    Container(
                      decoration: ShapeDecoration(
                        shape: StadiumBorder(),
                        color: Colors.grey[100]!,
                      ),
                      padding: EdgeInsets.only(left: 4, bottom: 4, top: 4,
                      right: 16),
                      child: Row(
                        children: [
                          CircleAvatar(
                            radius: 24,
                            backgroundColor: Colors.white,
                          ),
                          Expanded(child: TextField()),
                          Icon(Icons.chevron_right),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
