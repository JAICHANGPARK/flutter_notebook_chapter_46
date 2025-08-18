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
          Positioned.fill(bottom: 240, child: Placeholder()),
          Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            child: Container(height: 320, child: Stack(
              children: [
                Positioned(child: Placeholder()),
                Align(child: Row(
                  children: [
                    
                  ],
                ),)
              ],
            )),
          ),
        ],
      ),
    );
  }
}
