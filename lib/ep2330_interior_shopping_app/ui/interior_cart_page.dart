import 'package:flutter/material.dart';

class InteriorCartPage extends StatefulWidget {
  const InteriorCartPage({super.key});

  @override
  State<InteriorCartPage> createState() => _InteriorCartPageState();
}

class _InteriorCartPageState extends State<InteriorCartPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(child: Column(
        children: [
          Stack(
            children: [
              CircleAvatar(),
              Center(child: Text("Shopping cart"),)
            ],
          )
        ],
      )),
    );
  }
}
