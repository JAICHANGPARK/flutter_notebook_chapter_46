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
                  CircleAvatar(radius: 42, backgroundColor: Colors.white),
                  Container(
                    height: 84,
                    width: 84,
                    decoration: BoxDecoration(),
                    child: Stack(
                      children: [
                        CircleAvatar(radius: 46, backgroundColor: Colors.black),
                        Positioned(
                          
                          child: CircleAvatar(
                            radius: 12,
                            backgroundColor: Colors.grey,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
