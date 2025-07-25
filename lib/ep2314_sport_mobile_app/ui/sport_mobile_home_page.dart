import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class SportMobileHomePage extends StatefulWidget {
  const SportMobileHomePage({super.key});

  @override
  State<SportMobileHomePage> createState() => _SportMobileHomePageState();
}

class _SportMobileHomePageState extends State<SportMobileHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Positioned.fill(
            child: Container(
              decoration: BoxDecoration(
                gradient: RadialGradient(
                  colors: [Color.fromRGBO(22, 27, 7, 1), Colors.black],
                  center: Alignment.topCenter,
                  radius: 2,
                ),
              ),
            ),
          ),
          Positioned.fill(
            child: SafeArea(
              child: Column(
                spacing: 16,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Row(
                      children: [
                        Text(
                          "Dunkra",
                          style: TextStyle(
                            fontSize: 24,
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          ),
                        ),
                        Spacer(),
                        IconButton(
                          onPressed: () {},
                          icon: Icon(Icons.search),
                          color: Colors.white,
                          iconSize: 32,
                        ),
                        CircleAvatar(radius: 28),
                      ],
                    ),
                  ),
                  Container(
                    height: 52,
                    padding: EdgeInsets.only(left: 16),
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: [
                        Container(
                          decoration: ShapeDecoration(
                            shape: StadiumBorder(),
                            color: Color.fromRGBO(189, 255, 2, 1),
                          ),
                          margin: EdgeInsets.only(right: 16),
                          padding: EdgeInsets.symmetric(horizontal: 24),
                          child: Center(
                            child: Text(
                              "Latest",
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                          ),
                        ),
                        Container(
                          decoration: ShapeDecoration(
                            shape: StadiumBorder(
                              side: BorderSide(color: Colors.white12),
                            ),

                            // color: Color.fromRGBO(189, 255, 2, 1),
                          ),
                          margin: EdgeInsets.only(right: 16),
                          padding: EdgeInsets.symmetric(horizontal: 24),
                          child: Center(
                            child: Text(
                              "Following",
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ),
                        Container(
                          decoration: ShapeDecoration(
                            shape: StadiumBorder(
                              side: BorderSide(color: Colors.white12),
                            ),

                            // color: Color.fromRGBO(189, 255, 2, 1),
                          ),
                          margin: EdgeInsets.only(right: 16),
                          padding: EdgeInsets.symmetric(horizontal: 24),
                          child: Center(
                            child: Text(
                              "Finals Front Row",
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Gap(8),
                  Expanded(
                    child: SingleChildScrollView(
                      child: Column(
                        spacing: 16,
                        children: [
                          Container(
                            height: 100,
                            padding: EdgeInsets.only(left: 16),
                            child: ListView.builder(
                              scrollDirection: Axis.horizontal,
                              itemBuilder: (context, index) {
                                return Padding(
                                  padding: const EdgeInsets.only(right: 16),
                                  child: Column(
                                    spacing: 12,
                                    children: [
                                      Container(
                                        height: 68,
                                        width: 68,
                                        decoration: BoxDecoration(
                                          shape: BoxShape.circle,
                                          border: Border.all(
                                            color: Colors.yellow,
                                            width: 1.5,
                                          ),
                                          image: DecorationImage(
                                            image: NetworkImage(
                                              "https://cdn.pixabay.com/photo/2015/03/12/12/19/basketball-670062_1280.jpg",
                                            ),
                                            fit: BoxFit.cover,
                                          ),
                                        ),
                                      ),
                                      Text(
                                        "Pre Match",
                                        style: TextStyle(color: Colors.white),
                                      ),
                                    ],
                                  ),
                                );
                              },
                            ),
                          ),

                          ...List.generate(8, (index) {
                            return Container(
                              margin: EdgeInsets.symmetric(
                                horizontal: 20,
                                vertical: 8,
                              ),
                              height: 400,
                              child: Container(
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(16),
                                  image: DecorationImage(
                                    image: NetworkImage(
                                      "https://cdn.pixabay.com/photo/2013/07/25/12/04/basketball-167035_1280.jpg",
                                    ),
                                    fit: BoxFit.cover,
                                  ),
                                ),
                                child: Stack(
                                  children: [
                                    Positioned(
                                      bottom: 16,
                                      left: 16,
                                      right: 16,
                                      child: ClipRRect(
                                        child: BackdropFilter(
                                          filter: ImageFilter.blur(
                                            sigmaX: 4,
                                            sigmaY: 5,
                                          ),
                                          child: Container(
                                            decoration: BoxDecoration(
                                              color: Colors.black45,
                                              borderRadius:
                                                  BorderRadius.circular(16),
                                            ),
                                            padding: EdgeInsets.all(16),
                                            child: Row(
                                              children: [
                                                Column(
                                                  spacing: 4,
                                                  children: [
                                                    Container(
                                                      height: 62,
                                                      width: 62,
                                                      decoration: BoxDecoration(
                                                        shape: BoxShape.circle,
                                                        color: Colors.white24,
                                                      ),
                                                      padding: EdgeInsets.all(
                                                        6,
                                                      ),
                                                      child: CircleAvatar(
                                                        backgroundColor:
                                                            Colors.white,
                                                      ),
                                                    ),
                                                    Text(
                                                      "Team 1",
                                                      style: TextStyle(
                                                        color: Colors.white,
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                                Expanded(
                                                  child: Column(
                                                    spacing: 4,
                                                    children: [
                                                      Text(
                                                        "Dunkra Finals - Game 5",
                                                        style: TextStyle(
                                                          color: Colors.white,
                                                          fontSize: 12,
                                                        ),
                                                      ),
                                                      Text(
                                                        "6:30 AM",
                                                        style: TextStyle(
                                                          color: Colors.white,
                                                          fontSize: 19,
                                                          fontWeight:
                                                              FontWeight.bold,
                                                        ),
                                                      ),
                                                      Text(
                                                        "Fri 07/20",
                                                        style: TextStyle(
                                                          color: Colors.white,
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                                Column(
                                                  spacing: 4,
                                                  children: [
                                                    Container(
                                                      height: 62,
                                                      width: 62,
                                                      decoration: BoxDecoration(
                                                        shape: BoxShape.circle,
                                                        color: Colors.white24,
                                                      ),
                                                      padding: EdgeInsets.all(
                                                        6,
                                                      ),
                                                      child: CircleAvatar(
                                                        backgroundColor:
                                                            Colors.white,
                                                      ),
                                                    ),
                                                    Text(
                                                      "Team 2",
                                                      style: TextStyle(
                                                        color: Colors.white,
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ],
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            );
                          }),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Positioned(
            bottom: 32,

            child: Container(
              child: Row(
                spacing: 12,
                children: [
                  CircleAvatar(),
                  IconButton(
                    onPressed: () {},
                    icon: Icon(Icons.calendar_today_outlined),
                  ),
                  IconButton(
                    onPressed: () {},
                    icon: Icon(Icons.calendar_today_outlined),
                  ),
                  IconButton(
                    onPressed: () {},
                    icon: Icon(Icons.calendar_today_outlined),
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
