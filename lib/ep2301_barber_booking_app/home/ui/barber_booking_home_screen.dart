import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:hugeicons/hugeicons.dart';

class BarberBookingHomeScreen extends StatefulWidget {
  const BarberBookingHomeScreen({super.key});

  @override
  State<BarberBookingHomeScreen> createState() =>
      _BarberBookingHomeScreenState();
}

class _BarberBookingHomeScreenState extends State<BarberBookingHomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Positioned.fill(
            child: SafeArea(
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Column(
                      spacing: 16,
                      children: [
                        Row(
                          spacing: 12,
                          children: [
                            CircleAvatar(radius: 26),
                            Expanded(
                              child: Column(
                                spacing: 4,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "Welcome",
                                    style: TextStyle(
                                      // fontSize: 18,
                                      color: Colors.white,
                                      // fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  Text(
                                    "Hey, Dream👋",
                                    style: TextStyle(
                                      fontSize: 18,
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Container(
                              decoration: BoxDecoration(
                                border: Border.all(color: Colors.white24),
                                borderRadius: BorderRadius.circular(6),
                                color: Color.fromRGBO(17, 17, 17, 1),
                              ),
                              padding: EdgeInsets.all(12),
                              child: Icon(
                                HugeIcons.strokeRoundedNotification02,
                                color: Colors.white,
                              ),
                            ),
                          ],
                        ),
                        Gap(4),
                        Container(
                          padding: EdgeInsets.symmetric(vertical: 4),
                          decoration: BoxDecoration(
                            color: Color.fromRGBO(17, 17, 17, 1),
                            border: Border.all(color: Colors.white24),
                            borderRadius: BorderRadius.circular(12),
                          ),
                          child: TextField(
                            decoration: InputDecoration(
                              prefixIcon: Icon(Icons.search),
                              prefixIconColor: Colors.yellow,
                              border: InputBorder.none,
                              hintText: "Search...",
                              hintStyle: TextStyle(
                                color: Colors.white,
                                fontSize: 19,
                              ),
                            ),
                            style: TextStyle(color: Colors.white,),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                      left: 16,
                      right: 16,
                      bottom: 12,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Best Category",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                            fontSize: 20,
                          ),
                        ),
                        TextButton(
                          onPressed: () {},
                          style: TextButton.styleFrom(
                            foregroundColor: Colors.grey,
                          ),
                          child: Text("See All"),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    height: 116,
                    padding: EdgeInsets.only(left: 16),
                    child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: 10,
                      itemBuilder: (context, index) {
                        return Padding(
                          padding: const EdgeInsets.only(right: 16),
                          child: Column(
                            spacing: 8,
                            children: [
                              Expanded(
                                child: Container(
                                  width: 82,

                                  decoration: BoxDecoration(
                                    color: Color.fromRGBO(17, 17, 17, 1),
                                    border: Border.all(color: Colors.white24),
                                    borderRadius: BorderRadius.circular(12),
                                  ),
                                ),
                              ),
                              Text(
                                "Hair Salon",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 16,
                                  fontWeight: FontWeight.w300,
                                ),
                              ),
                            ],
                          ),
                        );
                      },
                    ),
                  ),
                  Gap(12),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 16,
                      vertical: 12,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Special Offers",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                            fontSize: 20,
                          ),
                        ),
                        TextButton(
                          onPressed: () {},
                          child: Text("See All"),
                          style: TextButton.styleFrom(
                            foregroundColor: Colors.grey,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    height: 328,
                    child: Row(
                      spacing: 8,
                      children: [
                        Container(
                          width: 80,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(16),
                            image: DecorationImage(
                              image: NetworkImage(
                                "https://cdn.pixabay.com/photo/2021/11/23/13/43/barber-6818709_1280.jpg",
                              ),
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                        Expanded(
                          child: Container(
                            margin: EdgeInsets.only(bottom: 16),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(16),
                              image: DecorationImage(
                                image: NetworkImage(
                                  "https://cdn.pixabay.com/photo/2021/11/15/11/52/barber-shop-6797906_1280.jpg",
                                ),
                                fit: BoxFit.cover,
                              ),
                            ),

                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                  margin: EdgeInsets.all(12),
                                  decoration: BoxDecoration(
                                    color: Colors.black,
                                    borderRadius: BorderRadius.circular(6),
                                  ),
                                  padding: EdgeInsets.symmetric(
                                    horizontal: 5,
                                    vertical: 4,
                                  ),
                                  child: Row(
                                    spacing: 4,
                                    mainAxisSize: MainAxisSize.min,
                                    children: [
                                      Icon(
                                        Icons.star,
                                        color: Colors.yellow,
                                        size: 16,
                                      ),
                                      Text(
                                        "5.2",
                                        style: TextStyle(color: Colors.white),
                                      ),
                                    ],
                                  ),
                                ),
                                Spacer(),
                                Container(
                                  margin: EdgeInsets.only(left: 12),
                                  decoration: BoxDecoration(
                                    color: Colors.black,
                                    borderRadius: BorderRadius.circular(12),
                                  ),
                                  padding: EdgeInsets.all(8),
                                  child: Icon(
                                    Icons.location_on_outlined,
                                    color: Colors.white,
                                  ),
                                ),
                                Gap(6),
                                Container(
                                  decoration: BoxDecoration(
                                    color: Colors.black,
                                    borderRadius: BorderRadius.circular(12),
                                  ),
                                  padding: EdgeInsets.all(8),
                                  child: Row(
                                    children: [
                                      Expanded(
                                        child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          spacing: 6,
                                          children: [
                                            Text(
                                              "Razor Work Ford",
                                              style: TextStyle(
                                                color: Colors.white,
                                                fontWeight: FontWeight.bold,
                                              ),
                                            ),
                                            Text(
                                              "Quality, Trusted Services",
                                              style: TextStyle(
                                                color: Colors.white,
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                      Container(
                                        padding: EdgeInsets.all(12),
                                        decoration: BoxDecoration(
                                          borderRadius: BorderRadius.circular(
                                            12,
                                          ),
                                          color: Color.fromRGBO(255, 212, 7, 1),
                                        ),
                                        child: Icon(
                                          Icons.login,
                                          color: Colors.black,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Transform(
                          transform: Matrix4.identity()
                            ..rotateX(0)
                            ..rotateY(-0.45),
                          child: Container(
                            width: 80,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(16),
                              image: DecorationImage(
                                image: NetworkImage(
                                  "https://cdn.pixabay.com/photo/2021/11/15/12/59/hair-dryer-6798055_1280.jpg",
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
          Positioned(
            bottom: 24,
            left: 24,
            right: 24,
            child: Container(
              decoration: BoxDecoration(
                color: Color.fromRGBO(36, 36, 36, 1),
                borderRadius: BorderRadius.circular(16),
              ),
              height: 70,
              padding: EdgeInsets.all(8),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      color: Color.fromRGBO(47, 47, 47, 1),
                    ),

                    child: Row(
                      children: [
                        Container(
                          child: Icon(HugeIcons.strokeRoundedHome01),
                          decoration: BoxDecoration(
                            color: Color.fromRGBO(255, 212, 7, 1),
                            borderRadius: BorderRadius.circular(12),
                          ),
                          padding: EdgeInsets.all(12),
                        ),
                        Gap(12),
                        Text(
                          "Home",
                          style: TextStyle(color: Colors.white, fontSize: 16),
                        ),
                        SizedBox(width: 12),
                      ],
                    ),
                  ),
                  IconButton(
                    onPressed: () {},
                    icon: Icon(Icons.search),
                    color: Colors.grey,
                    iconSize: 30,
                  ),
                  IconButton(
                    onPressed: () {},
                    icon: Icon(Icons.calendar_month),
                    color: Colors.grey,
                    iconSize: 30,
                  ),
                  IconButton(
                    onPressed: () {},
                    icon: Icon(Icons.account_circle_outlined),
                    color: Colors.grey,
                    iconSize: 30,
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
