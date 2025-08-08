import 'package:flutter/material.dart';
import 'package:hugeicons/hugeicons.dart';

class InteriorExplorePage extends StatefulWidget {
  const InteriorExplorePage({super.key});

  @override
  State<InteriorExplorePage> createState() => _InteriorExplorePageState();
}

class _InteriorExplorePageState extends State<InteriorExplorePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  CircleAvatar(
                    radius: 32,
                    backgroundColor: Colors.white,
                    foregroundColor: Colors.black,
                    child: Icon(Icons.arrow_back),
                  ),
                  Container(
                    height: 64,
                    width: 64,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.white,
                    ),
                    child: Stack(
                      children: [
                        CircleAvatar(
                          radius: 32,
                          backgroundColor: Colors.white,
                          child: Icon(HugeIcons.strokeRoundedShoppingBag01,
                          ),
                          foregroundColor: Colors.black,
                        ),
                        Positioned(
                          top: 2,
                          right: 2,
                          child: CircleAvatar(
                            radius: 6,
                            backgroundColor: Colors.red,
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
    );
  }
}
