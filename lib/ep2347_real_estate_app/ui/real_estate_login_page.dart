import 'package:flutter/material.dart';

class RealEstateLoginPage extends StatefulWidget {
  const RealEstateLoginPage({super.key});

  @override
  State<RealEstateLoginPage> createState() => _RealEstateLoginPageState();
}

class _RealEstateLoginPageState extends State<RealEstateLoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Positioned(
            child: Image.network(
              "https://cdn.pixabay.com/photo/2024/03/07/15/57/houses-8618837_1280.jpg",
              fit: BoxFit.cover,
            ),
          ),
        ],
      ),
    );
  }
}
