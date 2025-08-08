import 'package:flutter/material.dart';

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
        child: Column(
          children: [
            Row(
              children: [
                CircleAvatar(radius: 32, backgroundColor: Colors.white),
                Container(
                  height: 64,
                  width: 64,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Colors.white,
                  ),
                  child: Stack(
                    children: [
                      CircleAvatar(radius: 32, backgroundColor: Colors.white),
                      CircleAvatar(radius: 4, backgroundColor: Colors.red),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
