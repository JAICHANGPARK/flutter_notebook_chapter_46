import 'package:flutter/material.dart';

class InteriorShoppingApp extends StatelessWidget {
  const InteriorShoppingApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.light().copyWith(
        scaffoldBackgroundColor: Color.fromRGBO(236, 232, 229, 1),
      ),
    );
  }
}
