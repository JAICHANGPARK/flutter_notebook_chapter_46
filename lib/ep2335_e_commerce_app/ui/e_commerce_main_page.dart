import 'package:flutter/material.dart';
import 'package:hugeicons/hugeicons.dart';

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
          Positioned.fill(
            child: SafeArea(
              child: Column(
                children: [
                  Row(
                    children: [
                      CircleAvatar(),
                      Expanded(
                        child: Column(
                          children: [Text("Hi Dream!"), Text("Welcome back")],
                        ),
                      ),
                      CircleAvatar(),
                      Container(
                        height: 42,
                        width: 42,
                        decoration: BoxDecoration(),
                        child: Stack(
                          children: [
                            CircleAvatar(
                              radius: 26,
                              backgroundColor: Colors.black,
                              child: Icon(
                                HugeIcons.strokeRoundedShoppingBasket03,
                                size: 32,
                              ),
                              foregroundColor: Colors.white,
                            ),
                            Positioned(
                              right: 0,
                              top: 0,
                              child: CircleAvatar(
                                radius: 12,
                                backgroundColor: Colors.grey,
                                child: CircleAvatar(
                                  radius: 6,
                                  backgroundColor: Colors.red,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: 32),
            child: Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  spacing: 6,
                  children: [
                    CircleAvatar(
                      radius: 42,
                      backgroundColor: Colors.white,
                      foregroundColor: Colors.black,
                      child: Icon(HugeIcons.strokeRoundedHome03, size: 32),
                    ),
                    Container(
                      height: 84,
                      width: 84,
                      decoration: BoxDecoration(),
                      child: Stack(
                        children: [
                          CircleAvatar(
                            radius: 46,
                            backgroundColor: Colors.black,
                            child: Icon(
                              HugeIcons.strokeRoundedShoppingBasket03,
                              size: 32,
                            ),
                            foregroundColor: Colors.white,
                          ),
                          Positioned(
                            right: 0,
                            top: 0,
                            child: CircleAvatar(
                              radius: 12,
                              backgroundColor: Colors.grey,
                              child: CircleAvatar(
                                radius: 6,
                                backgroundColor: Colors.red,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    CircleAvatar(
                      radius: 42,
                      backgroundColor: Colors.white,
                      foregroundColor: Colors.black,
                      child: Icon(HugeIcons.strokeRoundedUser, size: 32),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
