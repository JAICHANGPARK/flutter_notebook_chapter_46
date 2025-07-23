import 'package:flutter/material.dart';

class SportMobileHomePage extends StatefulWidget {
  const SportMobileHomePage({super.key});

  @override
  State<SportMobileHomePage> createState() => _SportMobileHomePageState();
}

class _SportMobileHomePageState extends State<SportMobileHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Positioned.fill(
            child: Container(
              decoration: BoxDecoration(
                gradient: RadialGradient(
                  colors: [Color.fromRGBO(22, 27, 7, 1), Colors.black],
                  center: Alignment.topCenter,
                  radius: 2,
                ),
              ),
            ),
          ),
          Positioned.fill(
            child: SafeArea(
              child: Column(
                children: [
                  Row(
                    children: [
                      Text(
                        "Dunkra",
                        style: TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ),
                      Spacer(),
                      IconButton(
                        onPressed: () {},
                        icon: Icon(Icons.search),
                        color: Colors.white,
                      ),
                      CircleAvatar(
                        radius: 28,
                      ),
                    ],
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
