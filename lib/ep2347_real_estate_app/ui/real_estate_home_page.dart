import 'package:flutter/material.dart';
import 'package:hugeicons/hugeicons.dart';

class RealEstateHomePage extends StatefulWidget {
  const RealEstateHomePage({super.key});

  @override
  State<RealEstateHomePage> createState() => _RealEstateHomePageState();
}

class _RealEstateHomePageState extends State<RealEstateHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        children: [
          Positioned.fill(
            child: SafeArea(
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  spacing: 24,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      spacing: 12,
                      children: [
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Good",
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 26,
                                ),
                              ),
                              Text(
                                "morning",
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 26,
                                  color: Colors.grey,
                                ),
                              ),
                            ],
                          ),
                        ),
                        IconButton(
                          onPressed: () {},
                          iconSize: 32,
                          icon: Icon(HugeIcons.strokeRoundedNotification01),
                        ),
                        CircleAvatar(),
                      ],
                    ),
                    Container(
                      height: 480,
                      child: Stack(
                        children: [
                          Positioned(
                            left: 42,
                            right: 42,
                            top: 0,
                            bottom: 0,
                            child: Container(
                              decoration: BoxDecoration(
                                image: DecorationImage(
                                  image: NetworkImage(
                                    "https://cdn.pixabay.com/photo/2019/10/23/18/32/freudenberg-4572410_1280.jpg",
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Recommended",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 24,
                          ),
                        ),
                        TextButton(onPressed: () {}, child: Text("View All")),
                      ],
                    ),
                    Row(
                      spacing: 24,
                      children: [
                        SizedBox(
                          height: 100,
                          width: 100,
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(16),
                            child: Image.network(
                              "https://cdn.pixabay.com/photo/2016/11/18/17/46/house-1836070_1280.jpg",
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            spacing: 5,
                            children: [
                              Text(
                                "Sunset Ridqe Estate",
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 16,
                                ),
                              ),
                              Text(
                                "123442134 Hills, Unknown Places, Earth",
                                style: TextStyle(color: Colors.grey),
                              ),

                              Text("Price: \$12,321,321,312.12"),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
          Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            child: Container(
              height: 100,
              // color: Colors.blue,
              child: Stack(
                children: [
                  Positioned(
                    top: 32,
                    left: 0,
                    right: 0,
                    bottom: 0,
                    child: Container(
                      decoration: BoxDecoration(
                        color: Colors.black,
                        borderRadius: BorderRadius.only(
                          topRight: Radius.circular(32),
                          topLeft: Radius.circular(32),
                        ),
                      ),
                      padding: EdgeInsets.symmetric(horizontal: 32),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Icon(Icons.home_filled, color: Colors.white),
                          Icon(Icons.search, color: Colors.white),
                          SizedBox(width: 62),
                          Icon(Icons.favorite_border, color: Colors.white),
                          Icon(Icons.perm_identity, color: Colors.white),
                        ],
                      ),
                    ),
                  ),
                  Align(
                    alignment: Alignment.topCenter,
                    child: CircleAvatar(
                      radius: 34,
                      backgroundColor: Colors.white,
                      child: CircleAvatar(
                        radius: 28,
                        backgroundColor: Colors.black,
                        foregroundColor: Colors.white,
                        child: Icon(Icons.add, size: 32),
                      ),
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
