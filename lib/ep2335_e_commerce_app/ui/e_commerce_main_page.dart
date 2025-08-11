import 'package:flutter/material.dart';

class ECommerceMainPage extends StatefulWidget {
  const ECommerceMainPage({super.key});

  @override
  State<ECommerceMainPage> createState() => _ECommerceMainPageState();
}

class _ECommerceMainPageState extends State<ECommerceMainPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Positioned.fill(child: SafeArea(child: Column())),
          Align(
            child: Container(
              child: Row(
                children: [
                  CircleAvatar(radius: 32, backgroundColor: Colors.white),
                  Container(
                    height: 64,
                    width: 64,
                    decoration: BoxDecoration(),
                  child: Stack(
                    children: [
                     CircleAvatar(
                       radius: 42,
                       backgroundColor: Colors.black,
                     )
                    ],
                  ),
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
