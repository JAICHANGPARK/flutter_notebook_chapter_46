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
                              ),
                              padding: EdgeInsets.all(12),
                              child: Icon(
                                HugeIcons.strokeRoundedNotification02,
                                color: Colors.white,
                              ),
                            ),
                          ],
                        ),
                        Gap(8),
                        Container(
                          padding: EdgeInsets.symmetric(vertical: 4),
                          decoration: BoxDecoration(
                            color: Colors.white12,
                            border: Border.all(color: Colors.white24),
                            borderRadius: BorderRadius.circular(6),
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
                            style: TextStyle(color: Colors.white),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
                    child: Row(
                      children: [
                        Text(
                          "Best Category",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                            fontSize: 19,
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
                  SizedBox(height: 100, child: Placeholder()),
                  Row(children: [Text("")]),
                  Expanded(child: Placeholder()),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
