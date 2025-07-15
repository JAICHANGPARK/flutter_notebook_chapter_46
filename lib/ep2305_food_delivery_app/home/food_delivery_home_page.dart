import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class FoodDeliveryHomePage extends StatefulWidget {
  const FoodDeliveryHomePage({super.key});

  @override
  State<FoodDeliveryHomePage> createState() => _FoodDeliveryHomePageState();
}

class _FoodDeliveryHomePageState extends State<FoodDeliveryHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                spacing: 16,
                children: [
                  Row(
                    children: [
                      Expanded(
                        child: Column(
                          children: [
                            Row(
                              spacing: 4,
                              children: [
                                Icon(Icons.location_on, size: 16),
                                Text("Location"),
                              ],
                            ),
                            Row(
                              children: [
                                Text(
                                  "Gangnam Street, Seoul",
                                  style: TextStyle(fontWeight: FontWeight.bold),
                                ),
                                Icon(Icons.keyboard_arrow_down_rounded),
                              ],
                            ),
                          ],
                        ),
                      ),
                      Container(
                        height: 54,
                        width: 54,
                        child: Stack(
                          children: [
                            Positioned.fill(
                              child: CircleAvatar(
                                backgroundColor: Colors.grey[200]!,
                                child: Icon(Icons.shopping_basket_outlined),
                              ),
                            ),
                            Positioned(
                              bottom: 0,
                              right: 0,
                              child: CircleAvatar(
                                radius: 10,
                                backgroundColor: Colors.deepOrange,
                                child: Text(
                                  "2",
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 12,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  Container(
                    decoration: ShapeDecoration(
                      shape: StadiumBorder(),
                      color: Colors.grey[50]!,
                    ),
                    padding: EdgeInsets.only(left: 16, right: 2),
                    child: Row(
                      children: [
                        Expanded(
                          child: TextField(
                            decoration: InputDecoration(
                              icon: Icon(Icons.search),
                              hintText: "Search",

                              border: InputBorder.none,
                            ),
                          ),
                        ),
                        Container(
                          decoration: ShapeDecoration(
                            shape: StadiumBorder(),
                            color: Colors.deepOrange,
                          ),
                          padding: EdgeInsets.all(2),
                          child: Row(
                            children: [
                              Gap(12),
                              Text(
                                "Filter",
                                style: TextStyle(color: Colors.white),
                              ),
                              Gap(8),
                              CircleAvatar(
                                backgroundColor: Colors.white,
                                child: Icon(Icons.tune),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  spacing: 16,
                  children: [
                    Container(
                      margin: EdgeInsets.symmetric(horizontal: 16),
                      height: 160,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(16),
                        color: Colors.deepOrange,
                      ),
                    ),
                    Row(
                      children: [
                        Text("Categories"),
                        TextButton(onPressed: () {}, child: Text("See All")),
                      ],
                    ),
                    SizedBox(height: 64, child: Placeholder()),
                    Row(
                      children: [
                        Text("Picks For You"),
                        TextButton(onPressed: () {}, child: Text("See All")),
                      ],
                    ),
                    SizedBox(height: 240, child: Placeholder()),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home_filled), label: "Home"),
          BottomNavigationBarItem(icon: Icon(Icons.list_alt), label: "Orders"),
          BottomNavigationBarItem(
            icon: Icon(Icons.credit_card),
            label: "Payment",
          ),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: "Profile"),
        ],
      ),
    );
  }
}
