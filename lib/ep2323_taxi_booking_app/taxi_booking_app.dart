import 'package:flutter/material.dart';

import 'ui/home/taxi_booking_home_page.dart';


class TaxiBookingApp extends StatelessWidget {
  const TaxiBookingApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: TaxiBookingHomePage(),
    );
  }
}
