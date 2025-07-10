import 'package:flutter/material.dart';
import 'package:flutter_notebook_chapter_46/ep2301_barber_booking_app/home/ui/barber_booking_home_screen.dart';

class BarberBookingApp extends StatelessWidget {
  const BarberBookingApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.black,
      ),
      home: BarberBookingHomeScreen(),
    );
  }
}
