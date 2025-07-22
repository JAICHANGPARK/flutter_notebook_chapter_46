import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

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
                    child: ListView.separated(
                      separatorBuilder: (context, index) => Divider(),
                      itemBuilder: (context, index) {
                        return Container(
                          height: 120,
                          child: Row(
                            children: [
                              Container(
                                height: 120,
                                width: 156,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(16),
                                  image: DecorationImage(
                                    image: NetworkImage(
                                      "https://cdn.pixabay.com/photo/2022/11/16/12/40/food-7595910_1280.jpg",
                                    ),

                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ),
                              Expanded(
                                child: Column(
                                  children: [
                                    Row(
                                      children: [
                                        Text("Burger Burger"),
                                        Icon(Icons.star),
                                        Text("4.7"),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        );
                      },
                      itemCount: 7,
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
                      padding: EdgeInsets.only(
                        left: 4,
                        bottom: 4,
                        top: 4,
                        right: 16,
                      ),
                      child: Row(
                        spacing: 12,
                        children: [
                          CircleAvatar(
                            radius: 24,
                            backgroundColor: Colors.white,
                          ),
                          Expanded(
                            child: TextField(
                              decoration: InputDecoration(
                                hintText: "Enter your voucher code",
                                border: InputBorder.none,
                              ),
                            ),
                          ),
                          Icon(Icons.chevron_right),
                        ],
                      ),
                    ),
                    Gap(6),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("Subtotal:", style: TextStyle(fontSize: 15)),
                        Text(
                          "\$25.50",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 15,
                          ),
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("Delivery Fee:", style: TextStyle(fontSize: 15)),
                        Text(
                          "\$2.00",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 15,
                          ),
                        ),
                      ],
                    ),
                    Divider(),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Total Amount:",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 15,
                          ),
                        ),
                        Text(
                          "\$27.50",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 15,
                          ),
                        ),
                      ],
                    ),
                    Gap(6),
                    Container(
                      decoration: ShapeDecoration(
                        shape: StadiumBorder(),
                        color: Colors.deepOrange,
                      ),
                      padding: EdgeInsets.symmetric(horizontal: 4, vertical: 4),
                      child: Row(
                        // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        spacing: 8,
                        children: [
                          Gap(12),
                          Text(
                            "\$27.00",
                            style: TextStyle(color: Colors.white, fontSize: 16),
                          ),
                          Spacer(),
                          Container(
                            decoration: ShapeDecoration(
                              shape: StadiumBorder(),
                              color: Colors.white,
                            ),
                            padding: EdgeInsets.symmetric(
                              horizontal: 32,
                              vertical: 12,
                            ),
                            child: Text(
                              "Checkout",
                              style: TextStyle(fontSize: 16),
                            ),
                          ),
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
