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
            child: Container(
              child: Row(
                children: [

                ],
              ),
            ),
          )

        ],
      ),
    );
  }
}
