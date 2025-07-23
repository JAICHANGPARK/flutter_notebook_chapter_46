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
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
