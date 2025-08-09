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
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              SizedBox(
                height: 60,
                child: Stack(
                  children: [
                    CircleAvatar(radius: 32, backgroundColor: Colors.white),
                    Center(child: Text("Shopping cart")),
                  ],
                ),
              ),
              Expanded(child: Placeholder()),
              Container(
                decoration: ShapeDecoration(shape: StadiumBorder()),
                child: Center(
                  child: Text(
                    "Pay now",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
