import 'package:flutter/material.dart';
import 'package:flutter_notebook_chapter_46/ep2330_interior_shopping_app/model/furniture.dart';
import 'package:gap/gap.dart';
import 'package:hugeicons/hugeicons.dart';

class InteriorExplorePage extends StatefulWidget {
  const InteriorExplorePage({super.key});

  @override
  State<InteriorExplorePage> createState() => _InteriorExplorePageState();
}

class _InteriorExplorePageState extends State<InteriorExplorePage> {
  List<Furniture> furnitureItems = [
    Furniture(
      backgroundColor: Color.fromRGBO(245, 192, 82, 1),
      price: "180",
      rating: 5,
      title: "A ready-made set\nfor cozy evenings",
    ),
    Furniture(
      backgroundColor: Color.fromRGBO(245, 192, 82, 1),
      price: "180",
      rating: 5,
      title: "A ready-made set\nfor cozy evenings",
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        bottom: false,
        child: Padding(
          padding: const EdgeInsets.fromLTRB(16, 16, 16, 0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  CircleAvatar(
                    radius: 30,
                    backgroundColor: Colors.white,
                    foregroundColor: Colors.black,
                    child: Icon(Icons.arrow_back),
                  ),
                  Container(
                    height: 60,
                    width: 60,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.white,
                    ),
                    child: Stack(
                      children: [
                        CircleAvatar(
                          radius: 30,
                          backgroundColor: Colors.white,
                          child: Icon(HugeIcons.strokeRoundedShoppingBag01),
                          foregroundColor: Colors.black,
                        ),
                        Positioned(
                          top: 2,
                          right: 2,
                          child: CircleAvatar(
                            radius: 6,
                            backgroundColor: Colors.red,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              Gap(24),
              Text("Explore more", style: TextStyle(fontSize: 36)),
              Gap(12),
              Expanded(
                child: ListView.builder(
                  itemCount: furnitureItems.length,

                  itemBuilder: (context, index) {
                    final item = furnitureItems[index];
                    return Container(
                      height: 240,
                      margin: EdgeInsets.only(bottom: 12),
                      decoration: ShapeDecoration(
                        shape: RoundedSuperellipseBorder(
                          borderRadius: BorderRadius.circular(32),
                        ),
                        color: Colors.orange,
                      ),
                      child: Stack(
                        children: [
                          Positioned(
                            right: 16,
                            top: 16,
                            child: CircleAvatar(
                              radius: 30,
                              backgroundColor: Colors.white,
                              child: IconButton(
                                onPressed: () {},
                                icon: Icon(Icons.open_in_new),
                              ),
                            ),
                          ),
                          Positioned(
                            left: 16,
                            bottom: 16,
                            child: Column(
                              spacing: 6,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Special offer",
                                  style: TextStyle(fontSize: 12),
                                ),
                                Text(
                                  "A ready-made set\nfor cozy evenings",
                                  style: TextStyle(fontWeight: FontWeight.bold),
                                ),
                                Gap(1),
                                Row(
                                  children: List.generate(
                                    5,
                                    (index) => Icon(Icons.star, size: 14),
                                  ),
                                ),
                                Gap(2),
                                Container(
                                  padding: EdgeInsets.symmetric(
                                    horizontal: 16,
                                    vertical: 8,
                                  ),
                                  decoration: ShapeDecoration(
                                    shape: StadiumBorder(),
                                    color: Colors.white,
                                  ),
                                  child: Text.rich(
                                    TextSpan(
                                      children: [
                                        TextSpan(
                                          text: "\$180",
                                          style: TextStyle(
                                            fontSize: 16,
                                            fontWeight: FontWeight.bold,
                                          ),
                                        ),
                                        TextSpan(
                                          text: ".00",
                                          style: TextStyle(fontSize: 12),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
