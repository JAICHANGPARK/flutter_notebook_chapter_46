import 'package:collection/collection.dart';
import 'package:flutter/material.dart';
import 'package:flutter_notebook_chapter_46/ep2330_interior_shopping_app/model/furniture.dart';

import '../model/furniture_cart.dart';

class InteriorCartPage extends StatefulWidget {
  const InteriorCartPage({super.key});

  @override
  State<InteriorCartPage> createState() => _InteriorCartPageState();
}

class _InteriorCartPageState extends State<InteriorCartPage> {
  List<FurnitureCart> cartItems = [
    FurnitureCart(
      count: 1,
      title: "Cotton armchair",
      price: "259.99",
      category: "Chair",
    ),
    FurnitureCart(
      count: 1,
      title: "Yellow table lamp",
      price: "32.99",
      category: "Accessories",
    ),
    FurnitureCart(count: 1, title: "Plant", price: "21.00", category: "Garden"),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            spacing: 24,
            children: [
              SizedBox(
                height: 60,
                child: Stack(
                  children: [
                    GestureDetector(
                      onTap: () {
                        Navigator.of(context).pop();
                      },
                      child: CircleAvatar(
                        radius: 32,
                        backgroundColor: Colors.white,
                        foregroundColor: Colors.black,
                        child: Icon(Icons.arrow_back),
                      ),
                    ),
                    Center(
                      child: Text(
                        "Shopping cart",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 16,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Expanded(
                child: SingleChildScrollView(
                  child: Column(
                    spacing: 12,
                    children: [
                      Column(
                        children: cartItems.mapIndexed((i, v) {
                          final item = v;
                          return Container(
                            margin: EdgeInsets.only(bottom: 24),
                            height: 100,
                            child: Row(
                              spacing: 12,
                              children: [
                                Container(
                                  height: 100,
                                  width: 100,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(16),
                                    color: Colors.white,
                                  ),
                                ),
                                Expanded(
                                  child: Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          "${item.title ?? "Cotton armchair"}",

                                          style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            fontSize: 16,
                                          ),
                                        ),
                                        Text(
                                          "${item.category ?? "-"}",
                                          style: TextStyle(fontSize: 16),
                                        ),
                                        Text.rich(
                                          TextSpan(
                                            children: [
                                              TextSpan(
                                                text: "${item.count} X ",
                                                style: TextStyle(fontSize: 16),
                                              ),
                                              TextSpan(
                                                text: item.price,
                                                style: TextStyle(
                                                  fontSize: 16,
                                                  fontWeight: FontWeight.bold,
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                                Container(
                                  decoration: ShapeDecoration(
                                    shape: StadiumBorder(),
                                    color: Color.fromRGBO(216, 214, 210, 1),
                                  ),
                                  child: Column(
                                    children: [
                                      IconButton(
                                        onPressed: () {
                                          int count = item.count ?? 1;
                                          count += 1;
                                          if(count > 10){
                                            count = 10;
                                          }
                                          setState(() {
                                            cartItems[i].count = count ?? 1;
                                          });
                                        },
                                        icon: Icon(Icons.add),
                                      ),
                                      IconButton(
                                        onPressed: () {},
                                        icon: Icon(Icons.remove),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          );
                        }).toList(),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Shipping",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 16,
                              color: Colors.grey,
                            ),
                          ),
                          Text(
                            "Free",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 16,
                            ),
                          ),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Subtotal",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 16,
                              color: Colors.grey,
                            ),
                          ),
                          Text(
                            "\$313.98",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 16,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              Container(
                decoration: ShapeDecoration(
                  shape: StadiumBorder(),
                  color: Colors.black,
                ),
                padding: EdgeInsets.symmetric(vertical: 26),
                child: Center(
                  child: Text(
                    "Pay now",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                      fontSize: 16,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
