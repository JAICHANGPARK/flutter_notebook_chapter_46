import 'package:flutter/material.dart';

class EventHomePage extends StatefulWidget {
  const EventHomePage({super.key});

  @override
  State<EventHomePage> createState() => _EventHomePageState();
}

class _EventHomePageState extends State<EventHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Stack(
        children: [
          Positioned.fill(child: Column(children: [])),
          Positioned
            (
            bottom: 0,
            left: 0,
            right: 0,
            child: Container(
                height: 100,
                decoration: BoxDecoration(color: Colors.grey)),
          ),
        ],
      ),
    );
  }
}
