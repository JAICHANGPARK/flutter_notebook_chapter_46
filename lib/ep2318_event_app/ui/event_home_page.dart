import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
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
                                  style: TextButton.styleFrom(
                                    foregroundColor: Colors.grey,
                                  ),
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
                            height: 54,
                            child: ListView.builder(
                              scrollDirection: Axis.horizontal,
                              itemBuilder: (context, index) {
                                return Container(
                                  margin: EdgeInsets.only(right: 12),
                                  decoration: ShapeDecoration(
                                    shape: StadiumBorder(),
                                    color: index == 0
                                        ? Color.fromRGBO(238, 250, 99, 1)
                                        : Colors.white12,
                                  ),
                                  padding: EdgeInsets.only(left: 8, right: 12),
                                  child: Row(
                                    spacing: 8,
                                    children: [
                                      CircleAvatar(),
                                      Text(
                                        "Live shows",
                                        style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          color: index == 0
                                              ? Colors.black
                                              : Colors.white,
                                        ),
                                      ),
                                    ],
                                  ),
                                );
                              },
                            ),
                          ),
                          Container(
                            height: 360,
                            margin: EdgeInsets.symmetric(horizontal: 16),
                            child: Container(
                              decoration: BoxDecoration(
                                color: Color.fromRGBO(24, 24, 24, 1),
                                borderRadius: BorderRadius.circular(24),
                              ),
                              padding: EdgeInsets.all(16),
                              child: Column(
                                spacing: 16,
                                children: [
                                  Expanded(
                                    child: Container(
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(24),
                                        color: Colors.green,
                                        image: DecorationImage(
                                          image: NetworkImage(
                                            "https://cdn.pixabay.com/photo/2017/08/01/14/51/concert-2566002_1280.jpg",
                                          ),

                                          fit: BoxFit.cover,
                                        ),
                                      ),
                                      child: Stack(
                                        children: [
                                          Positioned(
                                            left: 12,
                                            top: 12,
                                            right: 12,
                                            child: Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment
                                                      .spaceBetween,
                                              children: [
                                                CircleAvatar(
                                                  radius: 26,
                                                  backgroundColor:
                                                      Colors.white24,
                                                  foregroundColor: Colors.white,
                                                  child: Column(
                                                    mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .center,
                                                    children: [
                                                      Text(
                                                        "May",
                                                        style: TextStyle(
                                                          fontSize: 10,
                                                        ),
                                                      ),
                                                      Text(
                                                        "20",
                                                        style: TextStyle(
                                                          fontWeight:
                                                              FontWeight.bold,
                                                          fontSize: 13,
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                                CircleAvatar(
                                                  radius: 26,
                                                  backgroundColor:
                                                      Colors.white24,
                                                  foregroundColor: Colors.white,
                                                  child: Icon(
                                                    Icons.favorite_border,
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                  Row(
                                    children: [
                                      Expanded(
                                        child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          spacing: 6,
                                          children: [
                                            Text(
                                              "Dreamwalker Concert",
                                              style: TextStyle(
                                                fontWeight: FontWeight.bold,
                                                color: Colors.white,
                                                fontSize: 16,
                                              ),
                                            ),
                                            Row(
                                              spacing: 4,
                                              children: [
                                                Icon(
                                                  Icons.location_on_outlined,
                                                  color: Colors.grey,
                                                  size: 16,
                                                ),
                                                Text(
                                                  "1234 Seoul, South Korea",
                                                  style: TextStyle(
                                                    color: Colors.grey,
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ],
                                        ),
                                      ),
                                      Text(
                                        "\$0.000",
                                        style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          color: Colors.white,
                                          fontSize: 26,
                                        ),
                                      ),
                                    ],
                                  ),
                                  Row(
                                    spacing: 12,
                                    children: [
                                      Container(
                                        width: 130,
                                        height: 48,
                                        child: Stack(
                                          children: [
                                            Positioned(
                                              left: 0,
                                              bottom: 0,
                                              top: 0,
                                              child: CircleAvatar(radius: 24),
                                            ),
                                            Positioned(
                                              left: 40,
                                              bottom: 0,
                                              top: 0,
                                              child: CircleAvatar(
                                                radius: 24,
                                                backgroundColor: Colors.blue,
                                                backgroundImage: NetworkImage(
                                                  "https://cdn.pixabay.com/photo/2024/05/26/11/23/ai-generated-8788584_1280.png",
                                                ),
                                              ),
                                            ),
                                            Positioned(
                                              left: 80,
                                              bottom: 0,
                                              top: 0,
                                              child: CircleAvatar(
                                                radius: 24,
                                                backgroundColor: Colors.orange,
                                                backgroundImage: NetworkImage(
                                                  "https://cdn.pixabay.com/photo/2022/07/31/12/54/singer-7355811_1280.jpg",
                                                ),
                                              ),
                                            ),
                                            // Positioned(
                                            //   left: 16,
                                            //   bottom: 0,
                                            //   top: 0,
                                            //   child: CircleAvatar(
                                            //     radius: 24,
                                            //   ),),
                                          ],
                                        ),
                                      ),
                                      Expanded(
                                        child: Container(
                                          padding: EdgeInsets.symmetric(
                                            vertical: 12,
                                          ),
                                          decoration: ShapeDecoration(
                                            shape: StadiumBorder(),
                                            color: Color.fromRGBO(
                                              238,
                                              250,
                                              99,
                                              1,
                                            ),
                                          ),
                                          child: Center(
                                            child: Text(
                                              "Join now",
                                              style: TextStyle(
                                                fontWeight: FontWeight.bold,
                                              ),
                                            ),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ),
                          Gap(12),
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
                                  style: TextButton.styleFrom(
                                    foregroundColor: Colors.grey,
                                  ),
                                  child: Text("See all"),
                                ),
                              ],
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.only(top: 12),
                            height: 320,
                            child: Stack(
                              // spacing: 16,
                              children: [
                                Positioned(
                                  left: -14,
                                  top: 0,
                                  bottom: 0,

                                  child: Container(
                                    width: 92,
                                    margin: EdgeInsets.only(top: 24),
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(24),
                                      border: Border.all(color: Colors.white38),
                                      image: DecorationImage(
                                        image: NetworkImage(
                                          "https://cdn.pixabay.com/photo/2018/02/08/20/15/music-3140247_1280.jpg",
                                        ),
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                  ),
                                ),
                                Positioned(
                                  left: 92,
                                  right: 92,
                                  bottom: 0,
                                  top: 0,
                                  child: Container(
                                    decoration: BoxDecoration(
                                      border: Border.all(color: Colors.white38),
                                      borderRadius: BorderRadius.circular(24),
                                      image: DecorationImage(
                                        image: NetworkImage(
                                          'https://cdn.pixabay.com/photo/2022/01/16/15/40/singer-6942418_1280.jpg',
                                        ),
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                  ),
                                ),
                                Positioned(
                                  right: -14,
                                  bottom: 0,
                                  top: 0,
                                  child: Container(
                                    width: 92,
                                    margin: EdgeInsets.only(top: 24),
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(24),
                                      border: Border.all(color: Colors.white38),
                                      image: DecorationImage(
                                        image: NetworkImage(
                                          "https://cdn.pixabay.com/photo/2016/07/12/20/07/concert-1512937_1280.jpg",
                                        ),
                                        fit: BoxFit.cover,
                                      ),
                                    ),
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
