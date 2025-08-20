import 'package:flutter/material.dart';

import 'ui/mental_health_home_page.dart';

class MentalHealthApp extends StatelessWidget {
  const MentalHealthApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.light().copyWith(
        scaffoldBackgroundColor: Color.fromRGBO(247, 242, 239, 1),
      ),
      home: MentalHealthHomePage(),
    );
  }
}
