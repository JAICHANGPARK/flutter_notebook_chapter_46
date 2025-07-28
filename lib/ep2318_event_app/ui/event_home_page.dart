import 'package:flutter/material.dart';
import 'package:hugeicons/hugeicons.dart';

class EventHomePage extends StatefulWidget {
  const EventHomePage({super.key});

  @override
  State<EventHomePage> createState() => _EventHomePageState();
}

class _EventHomePageState extends State<EventHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Stack(
        children: [
          Positioned.fill(
            child: SafeArea(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                spacing: 16,
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 16),
                    child: Column(
                      spacing: 16,
                      children: [
                        Row(
                          children: [
                            CircleAvatar(),
                            Expanded(
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                spacing: 4,
                                children: [
                                  Text(
                                    "Welcome Back",
                                    style: TextStyle(
                                      color: Colors.white54,
                                      fontSize: 12,
                                    ),
                                  ),
                                  Text(
                                    "Dream Walker",
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 18,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            CircleAvatar(
                              backgroundColor: Colors.white12,
                              child: Icon(HugeIcons.strokeRoundedGift),
                            ),
                          ],
                        ),
                        Row(
                          spacing: 16,
                          children: [
                            Expanded(
                              child: Container(
                                padding: EdgeInsets.symmetric(horizontal: 16),
                                decoration: ShapeDecoration(
                                  shape: StadiumBorder(
                                    side: BorderSide(color: Colors.white24),
                                  ),
                                  color: Color.fromRGBO(24, 24, 24, 1),
                                ),
                                child: TextField(
                                  decoration: InputDecoration(
                                    border: InputBorder.none,
                                    icon: Icon(Icons.search),
                                    hintText: "Discover",
                                    iconColor: Colors.white54,
                                    hintStyle: TextStyle(color: Colors.white54),
                                  ),
                                ),
                              ),
                            ),
                            Container(
                              height: 52,
                              width: 52,
                              padding: EdgeInsets.all(4),
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                border: Border.all(color: Colors.white24),
                                color: Color.fromRGBO(24, 24, 24, 1),
                              ),
                              child: Icon(Icons.tune, color: Colors.white),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  Expanded(
                    child: SingleChildScrollView(
                      child: Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 16),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  "Categories",
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 16,
                                  ),
                                ),
                                TextButton(
                                  onPressed: () {},
                                  child: Text("See all"),
                                ),
                              ],
                            ),
                          ),

                          Container(
                            margin: EdgeInsets.only(
                              left: 16,
                              bottom: 16,
                              top: 12,
                            ),
                            height: 58,
                            child: ListView.builder(
                              scrollDirection: Axis.horizontal,
                              itemBuilder: (context, index) {
                                return Placeholder();
                              },
                            ),
                          ),
                          Container(
                            height: 360,
                            margin: EdgeInsets.symmetric(horizontal: 16),
                            child: Container(
                              decoration: BoxDecoration(
                                color: Color.fromRGBO(24, 24, 24, 1),
                              ),
                              padding: EdgeInsets.all(16),
                              child: Column(
                                children: [
                                  Expanded(child: Placeholder(),),
                                ],
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 16),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  "Top 10 in London",
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 16,
                                  ),
                                ),
                                TextButton(
                                  onPressed: () {},
                                  child: Text("See all"),
                                ),
                              ],
                            ),
                          ),
                          Container(
                            height: 320,
                            child: CarouselView(
                              scrollDirection: Axis.horizontal,
                              itemExtent: double.infinity,
                              children: [
                                Container(
                                  decoration: BoxDecoration(
                                    color: Colors.blue,
                                  ),
                                ),
                                Container(
                                  decoration: BoxDecoration(
                                    color: Colors.blue,
                                  ),
                                ),
                                Container(
                                  decoration: BoxDecoration(
                                    color: Colors.blue,
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
          ),
          Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            child: Container(
              height: 100,
              decoration: BoxDecoration(color: Colors.grey),
            ),
          ),
        ],
      ),
    );
  }
}
