import 'package:flutter/material.dart';

class TaxiBookingHomePage extends StatefulWidget {
  const TaxiBookingHomePage({super.key});

  @override
  State<TaxiBookingHomePage> createState() => _TaxiBookingHomePageState();
}

class _TaxiBookingHomePageState extends State<TaxiBookingHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Positioned.fill(
            child: SafeArea(child: Column(children: [])),
          ),
          Align(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24),
              child: Container(
                decoration: ShapeDecoration(
                  shape: StadiumBorder(),
                  color: Colors.white24,
                ),
                child: Row(
                  children: [
                    Container(
                      decoration: ShapeDecoration(
                        shape: StadiumBorder(),
                        color: Colors.blueAccent,
                      ),
                    ),
                    CircleAvatar(
                      radius: 26,
                    )
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
