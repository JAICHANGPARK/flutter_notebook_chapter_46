import 'package:flutter/material.dart';
import 'package:hugeicons/hugeicons.dart';

class TaxiBookingHomePage extends StatefulWidget {
  const TaxiBookingHomePage({super.key});

  @override
  State<TaxiBookingHomePage> createState() => _TaxiBookingHomePageState();
}

class _TaxiBookingHomePageState extends State<TaxiBookingHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200]!,
      body: Stack(
        children: [
          Positioned.fill(
            child: SafeArea(child: Column(children: [])),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 24),
              child: Container(
                decoration: ShapeDecoration(
                  shape: StadiumBorder(),
                  color: Colors.orange,
                ),
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Container(
                      padding: EdgeInsets.symmetric(
                        horizontal: 24,
                        vertical: 16,
                      ),
                      decoration: ShapeDecoration(
                        shape: StadiumBorder(),
                        color: Colors.blueAccent,
                      ),
                      child: Row(
                        spacing: 8,
                        children: [
                          Icon(
                            HugeIcons.strokeRoundedHome02,
                            color: Colors.white,
                          ),
                          Text("Home", style: TextStyle(color: Colors.white)),
                        ],
                      ),
                    ),
                    CircleAvatar(radius: 26),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
