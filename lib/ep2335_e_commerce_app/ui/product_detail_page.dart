import 'package:flutter/material.dart';

class ProductDetailPage extends StatefulWidget {
  const ProductDetailPage({super.key});

  @override
  State<ProductDetailPage> createState() => _ProductDetailPageState();
}

class _ProductDetailPageState extends State<ProductDetailPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Positioned.fill(
            bottom: 240,
            child: PageView(
              children: [
                Image.network(
                  "https://cdn.pixabay.com/photo/2019/08/07/07/05/woman-4390055_1280.jpg",
                  fit: BoxFit.cover,
                ),
                Image.network(
                  "https://cdn.pixabay.com/photo/2022/06/21/23/11/asian-7276658_1280.jpg",
                  fit: BoxFit.cover,
                ),
              ],
            ),
          ),
          Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            child: Container(
              height: 320,
              child: Stack(
                children: [
                  Positioned(child: Placeholder()),
                  Align(child: Row(children: [])),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
