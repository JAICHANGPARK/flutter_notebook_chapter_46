import 'package:flutter/material.dart';
import 'package:readmore/readmore.dart';

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
          Positioned.fill(
            child: Column(
              children: [
                Expanded(
                  child: Container(
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: NetworkImage(
                          "https://cdn.pixabay.com/photo/2019/10/10/19/40/tacos-4540402_1280.jpg",
                        ),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ),
                Expanded(child: Placeholder()),
              ],
            ),
          ),
          Positioned(
            left: 16,
            right: 16,
            top: 8,
            child: SafeArea(
              child: Row(
                spacing: 16,
                children: [
                  CircleAvatar(
                    radius: 26,
                    backgroundColor: Colors.white,
                    foregroundColor: Colors.black,
                    child: Icon(Icons.arrow_back_ios_new, size: 18),
                  ),
                  Spacer(),

                  CircleAvatar(
                    radius: 26,
                    backgroundColor: Colors.white,
                    foregroundColor: Colors.black,
                    child: Icon(Icons.favorite_border, size: 18),
                  ),
                  CircleAvatar(
                    radius: 26,
                    backgroundColor: Colors.white,
                    foregroundColor: Colors.black,
                    child: Icon(Icons.share, size: 18),
                  ),
                ],
              ),
            ),
          ),
          Positioned(
            left: 0,
            right: 0,
            bottom: 0,
            child: Container(
              height: MediaQuery.sizeOf(context).height / 1.8,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(32),
                color: Colors.white,
              ),
              padding: EdgeInsets.all(24),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                spacing: 16,
                children: [
                  Row(
                    children: [
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          spacing: 8,
                          children: [
                            Text(
                              "Taco Taco",
                              style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Text("By Dream World"),
                          ],
                        ),
                      ),
                      Icon(Icons.star),
                      Text("4.7"),
                    ],
                  ),
                  Row(
                    spacing: 12,
                    children: [
                      CircleAvatar(
                        radius: 30,
                        backgroundColor: Colors.grey[100]!,
                      ),
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          spacing: 6,
                          children: [
                            Text(
                              "Dreamwalker",
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 18,
                              ),
                            ),
                            Text("ID: 123412341234"),
                          ],
                        ),
                      ),
                      CircleAvatar(
                        radius: 28,
                        backgroundColor: Colors.grey[100]!,
                      ),
                      CircleAvatar(
                        radius: 28,
                        backgroundColor: Colors.grey[100]!,
                      ),
                    ],
                  ),
                  Text(
                    "Description",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                  ),
                  ReadMoreText(
                    "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.",
                    trimLines: 2,
                    style: TextStyle(color: Colors.grey),
                  ),
                  SizedBox(
                    height: 80,
                    child: Row(
                      spacing: 16,
                      children: [
                        Expanded(
                          child: Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(12),
                              color: Colors.grey[100]!,
                            ),
                          ),
                        ),
                        Expanded(child: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(12),
                            color: Colors.grey[100]!,
                          ),
                        )),
                      ],
                    ),
                  ),
                  Container(
                    decoration: ShapeDecoration(
                      shape: StadiumBorder(),
                      color: Colors.deepOrange,
                    ),
                    child: Row(
                      children: [
                        Text("\$25.00"),
                        Container(
                          decoration: ShapeDecoration(
                            shape: StadiumBorder(),
                            color: Colors.white,
                          ),
                          child: Text("Add to Cart"),
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
    );
  }
}
