import 'package:flutter/material.dart';

import 'ui/interior_explore_page.dart';

class InteriorShoppingApp extends StatelessWidget {
  const InteriorShoppingApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.light().copyWith(
        scaffoldBackgroundColor: Color.fromRGBO(236, 232, 229, 1),
      ),
      home: InteriorExplorePage(),
    );
  }
}
