import 'package:flutter/material.dart';

import 'ui/event_home_page.dart';

class EventApp extends StatelessWidget {
  const EventApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: EventHomePage());
  }
}
