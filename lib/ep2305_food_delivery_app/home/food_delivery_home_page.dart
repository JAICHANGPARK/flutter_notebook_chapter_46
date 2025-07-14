import 'package:flutter/material.dart';

class FoodDeliveryHomePage extends StatefulWidget {
  const FoodDeliveryHomePage({super.key});

  @override
  State<FoodDeliveryHomePage> createState() => _FoodDeliveryHomePageState();
}

class _FoodDeliveryHomePageState extends State<FoodDeliveryHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Column(
              children: [
                Row(
                  children: [
                    Expanded(
                      child: Column(
                        children: [
                          Row(
                            children: [
                              Icon(Icons.location_on),
                              Text("Location"),
                            ],
                          ),
                          Row(
                            children: [
                              Text("Gangnam Street, Seoul"),
                              Icon(Icons.keyboard_arrow_down_rounded),
                            ],
                          ),
                        ],
                      ),
                    ),
                    Container(height: 54, width: 54, child: Placeholder()),
                  ],
                ),
                Container(
                  decoration: ShapeDecoration(
                    shape: StadiumBorder(),
                    color: Colors.grey[100]!,
                  ),
                  child: Row(
                    children: [
                      Expanded(child: TextField()),
                      Container(
                        decoration: ShapeDecoration(shape: StadiumBorder()),
                        child: Row(
                          children: [
                            Text("Filter"),
                            CircleAvatar(backgroundColor: Colors.white),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    Container(height: 160, child: Placeholder()),
                    Row(
                      children: [
                        Text("Categories"),
                        TextButton(onPressed: () {}, child: Text("See All")),
                      ],
                    ),
                    SizedBox(height: 64,
                    child: Placeholder(),),
                    Row(
                      children: [
                        Text("Picks For You"),
                        TextButton(onPressed: () {}, child: Text("See All")),
                      ],
                    ),
                    SizedBox(height: 240,
                      child: Placeholder(),),
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
